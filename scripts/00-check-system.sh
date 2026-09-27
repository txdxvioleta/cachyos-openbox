#!/usr/bin/env bash
# Responsabilidad: informar el estado del sistema en solo lectura.
# No instala, no escribe configuración y no cambia servicios.
# Se puede ejecutar durante la fase 1. Una ausencia es un dato, no una instalación pendiente.
set -euo pipefail

report_pkg() {
  local label=$1
  local pkg=$2
  if pacman -Q "$pkg" >/dev/null 2>&1; then
    printf 'OK    %s (%s)\n' "$label" "$pkg"
  else
    printf 'MISS  %s (%s)\n' "$label" "$pkg"
  fi
}

report_absent() {
  local label=$1
  local pkg=$2
  if pacman -Q "$pkg" >/dev/null 2>&1; then
    printf 'SEEN  %s sigue instalado (%s)\n' "$label" "$pkg"
  else
    printf 'OK    %s ausente (%s)\n' "$label" "$pkg"
  fi
}

report_unit_absent() {
  local label=$1
  local unit=$2
  local state
  if ! command -v systemctl >/dev/null 2>&1; then
    printf 'SKIP  %s (systemctl no está en PATH)\n' "$label"
    return 0
  fi
  state="$(systemctl is-enabled "$unit" 2>/dev/null || true)"
  case "$state" in
    enabled|static|alias)
      printf 'SEEN  %s habilitado (%s: %s)\n' "$label" "$unit" "$state"
      ;;
    ""|not-found|disabled|indirect|generated|transient|masked)
      printf 'OK    %s sin servicio permanente (%s)\n' "$label" "$unit"
      ;;
    *)
      printf 'INFO  %s (%s: %s)\n' "$label" "$unit" "$state"
      ;;
  esac
}

printf '=== Sistema ===\n'
if [[ -r /etc/os-release ]]; then
  # shellcheck disable=SC1091
  source /etc/os-release
  printf 'INFO  nombre=%s id=%s\n' "${NAME:-desconocido}" "${ID:-desconocido}"
  if [[ "${ID:-}" == "cachyos" ]]; then
    printf 'OK    CachyOS\n'
  else
    printf 'MISS  CachyOS (id actual: %s)\n' "${ID:-desconocido}"
  fi
else
  printf 'MISS  /etc/os-release\n'
fi

if [[ -n "${XDG_SESSION_TYPE:-}" ]]; then
  printf 'INFO  XDG_SESSION_TYPE=%s\n' "$XDG_SESSION_TYPE"
else
  printf 'INFO  XDG_SESSION_TYPE no está definido en este proceso\n'
fi

printf '\n=== Escritorio ===\n'
report_pkg "X11" xorg-server
report_pkg "Openbox" openbox
report_pkg "Polybar" polybar
report_pkg "Rofi" rofi
report_pkg "Picom" picom
report_pkg "Dunst" dunst
report_pkg "Nitrogen" nitrogen
report_pkg "Thunar" thunar
report_pkg "Kitty" kitty
report_pkg "xfsettingsd via xfce4-settings" xfce4-settings

printf '\n=== Audio ===\n'
report_pkg "PipeWire" pipewire
report_pkg "WirePlumber" wireplumber
if grep -q 'ALC897' /proc/asound/card*/codec* 2>/dev/null; then
  printf 'OK    Realtek ALC897 visible en un codec de /proc/asound\n'
else
  printf 'MISS  Realtek ALC897 no aparece en los codecs de /proc/asound\n'
fi

printf '\n=== Desarrollo ===\n'
report_pkg "Git" git
report_pkg "Docker" docker
if [[ -s "${HOME}/.nvm/nvm.sh" ]]; then
  printf 'OK    NVM (%s/.nvm/nvm.sh)\n' "$HOME"
else
  printf 'MISS  NVM (%s/.nvm/nvm.sh)\n' "$HOME"
fi
if command -v node >/dev/null 2>&1; then
  printf 'OK    node en PATH (%s)\n' "$(command -v node)"
else
  printf 'MISS  node en PATH\n'
fi
if command -v pnpm >/dev/null 2>&1; then
  printf 'OK    pnpm en PATH (%s)\n' "$(command -v pnpm)"
else
  printf 'MISS  pnpm en PATH\n'
fi

printf '\n=== Exclusiones del entorno nuevo ===\n'
printf 'INFO  SEEN significa que sigue en esta máquina. No se desinstala desde aquí.\n'
report_absent "KDE Plasma" plasma-desktop
report_absent "GNOME" gnome-shell
report_absent "Plank" plank
report_absent "MPD" mpd

printf '\n=== Bases de datos en el host ===\n'
report_unit_absent "PostgreSQL" postgresql
report_unit_absent "MongoDB" mongodb
report_unit_absent "MariaDB" mariadb

printf '\nSolo lectura. No se instaló ni se modificó nada.\n'

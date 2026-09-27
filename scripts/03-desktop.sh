#!/usr/bin/env bash
# Responsabilidad: Polybar, Rofi, Picom, Dunst, Nitrogen, Thunar y los componentes XFCE permitidos.
# Idempotencia prevista: cuando este script llegue a modificar el sistema, debe poder repetirse sin duplicar cambios.
# Fase 1: no modifica el sistema. Termina antes de cualquier acción.
set -euo pipefail

phase1_guard() {
  printf '%s\n' "Fase 1: 03-desktop.sh no modifica el sistema." >&2
  exit 2
}

install_desktop() {
  # TODO: instalar packages-desktop.txt después de la prueba manual. No instalar una sesión XFCE completa.
  # No llamar a pacman, systemctl ni escribir fuera del repositorio.
  :
}

phase1_guard

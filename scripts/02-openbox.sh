#!/usr/bin/env bash
# Responsabilidad: Openbox sobre X11. No genera rc.xml en esta fase.
# Idempotencia prevista: cuando este script llegue a modificar el sistema, debe poder repetirse sin duplicar cambios.
# Fase 1: no modifica el sistema. Termina antes de cualquier acción.
set -euo pipefail

phase1_guard() {
  printf '%s\n' "Fase 1: 02-openbox.sh no modifica el sistema." >&2
  exit 2
}

install_openbox() {
  # TODO: instalar Openbox y la base X11 después de la prueba manual. Super+T queda para la migración de configuración.
  # No llamar a pacman, systemctl ni escribir fuera del repositorio.
  :
}

phase1_guard

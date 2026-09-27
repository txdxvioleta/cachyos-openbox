#!/usr/bin/env bash
# Responsabilidad: Juego. La aplicación especificada es Steam.
# Idempotencia prevista: cuando este script llegue a modificar el sistema, debe poder repetirse sin duplicar cambios.
# Fase 1: no modifica el sistema. Termina antes de cualquier acción.
set -euo pipefail

phase1_guard() {
  printf '%s\n' "Fase 1: 09-gaming.sh no modifica el sistema." >&2
  exit 2
}

install_gaming() {
  # TODO: no instalar Steam ni habilitar multilib hasta probarlo a mano.
  # No llamar a pacman, systemctl ni escribir fuera del repositorio.
  :
}

phase1_guard

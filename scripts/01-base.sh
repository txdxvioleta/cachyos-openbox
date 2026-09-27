#!/usr/bin/env bash
# Responsabilidad: Paquetes base provisionales de packages/packages-core.txt.
# Idempotencia prevista: cuando este script llegue a modificar el sistema, debe poder repetirse sin duplicar cambios.
# Fase 1: no modifica el sistema. Termina antes de cualquier acción.
set -euo pipefail

phase1_guard() {
  printf '%s\n' "Fase 1: 01-base.sh no modifica el sistema." >&2
  exit 2
}

install_core_packages() {
  # TODO: instalar packages-core.txt solo después de verificar nombres y probarlo a mano.
  # No llamar a pacman, systemctl ni escribir fuera del repositorio.
  :
}

phase1_guard

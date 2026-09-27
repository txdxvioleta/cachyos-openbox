#!/usr/bin/env bash
# Responsabilidad: llevar el sistema al estado objetivo de packages/packages-core.txt, sin reinstalar a ciegas lo que el instalador de CachyOS ya haya dejado.
# Idempotencia prevista: cuando este script llegue a modificar el sistema, debe poder repetirse sin duplicar cambios.
# Fase 1: no modifica el sistema. Termina antes de cualquier acción.
set -euo pipefail

phase1_guard() {
  printf '%s\n' "Fase 1: 01-base.sh no modifica el sistema." >&2
  exit 2
}

install_core_packages() {
  # TODO: después de verificar nombres, instalar solo lo que falte respecto del estado objetivo. No hacerlo en esta fase.
  # No llamar a pacman, systemctl ni escribir fuera del repositorio.
  :
}

phase1_guard

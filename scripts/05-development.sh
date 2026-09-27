#!/usr/bin/env bash
# Responsabilidad: Herramientas de desarrollo de packages/packages-development.txt.
# Idempotencia prevista: cuando este script llegue a modificar el sistema, debe poder repetirse sin duplicar cambios.
# Fase 1: no modifica el sistema. Termina antes de cualquier acción.
set -euo pipefail

phase1_guard() {
  printf '%s\n' "Fase 1: 05-development.sh no modifica el sistema." >&2
  exit 2
}

install_development() {
  # TODO: instalar el toolchain después de resolver los TO VERIFY de nombres y de NVM.
  # No llamar a pacman, systemctl ni escribir fuera del repositorio.
  :
}

phase1_guard

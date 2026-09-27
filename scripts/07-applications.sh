#!/usr/bin/env bash
# Responsabilidad: Aplicaciones personales de packages/packages-applications.txt.
# Idempotencia prevista: cuando este script llegue a modificar el sistema, debe poder repetirse sin duplicar cambios.
# Fase 1: no modifica el sistema. Termina antes de cualquier acción.
set -euo pipefail

phase1_guard() {
  printf '%s\n' "Fase 1: 07-applications.sh no modifica el sistema." >&2
  exit 2
}

install_applications() {
  # TODO: instalar aplicaciones después de confirmar nombres, sobre todo Steam, Brave, Postman y DBeaver.
  # No llamar a pacman, systemctl ni escribir fuera del repositorio.
  :
}

phase1_guard

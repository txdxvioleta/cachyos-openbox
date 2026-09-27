#!/usr/bin/env bash
# Responsabilidad: Lista de verificaciones futuras. No comprueba el sistema en esta fase.
# Idempotencia prevista: cuando este script llegue a modificar el sistema, debe poder repetirse sin duplicar cambios.
# Fase 1: no modifica el sistema. Termina antes de cualquier acción.
set -euo pipefail

phase1_guard() {
  printf '%s\n' "Fase 1: 99-verify.sh no modifica el sistema." >&2
  exit 2
}

verify_system() {
  # TODO: verificar nombres en CachyOS, exclusiones, audio y ausencia de servicios de bases de datos en el host.
  # No llamar a pacman, systemctl ni escribir fuera del repositorio.
  :
}

phase1_guard

#!/usr/bin/env bash
# Responsabilidad: Comprobaciones futuras de solo lectura: sistema, paquetes explícitos y huecos documentados.
# Idempotencia prevista: cuando este script llegue a modificar el sistema, debe poder repetirse sin duplicar cambios.
# Fase 1: no modifica el sistema. Termina antes de cualquier acción.
set -euo pipefail

phase1_guard() {
  printf '%s\n' "Fase 1: 00-check-system.sh no modifica el sistema." >&2
  exit 2
}

check_system() {
  # TODO: comprobar en solo lectura el sistema objetivo. No instalar ni escribir configuración.
  # No llamar a pacman, systemctl ni escribir fuera del repositorio.
  :
}

phase1_guard

#!/usr/bin/env bash
# Responsabilidad: Recordar la política Docker. No crea servicios de bases de datos en el host.
# Idempotencia prevista: cuando este script llegue a modificar el sistema, debe poder repetirse sin duplicar cambios.
# Fase 1: no modifica el sistema. Termina antes de cualquier acción.
set -euo pipefail

phase1_guard() {
  printf '%s\n' "Fase 1: 06-databases.sh no modifica el sistema." >&2
  exit 2
}

document_database_policy() {
  # TODO: no instalar mariadb ni mongodb-bin en el host. Las imágenes se eligen después de probarlas a mano.
  # No llamar a pacman, systemctl ni escribir fuera del repositorio.
  :
}

phase1_guard

#!/usr/bin/env bash
# Responsabilidad: Kitty como terminal y Zsh como shell interactiva.
# Idempotencia prevista: cuando este script llegue a modificar el sistema, debe poder repetirse sin duplicar cambios.
# Fase 1: no modifica el sistema. Termina antes de cualquier acción.
set -euo pipefail

phase1_guard() {
  printf '%s\n' "Fase 1: 04-terminal.sh no modifica el sistema." >&2
  exit 2
}

install_terminal() {
  # TODO: instalar Kitty y Zsh después de la prueba manual. No cambiar la shell de la usuaria en esta fase.
  # No llamar a pacman, systemctl ni escribir fuera del repositorio.
  :
}

phase1_guard

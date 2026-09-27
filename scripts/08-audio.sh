#!/usr/bin/env bash
# Responsabilidad: Stack PipeWire. No aplica volúmenes ni power_save en esta fase.
# Idempotencia prevista: cuando este script llegue a modificar el sistema, debe poder repetirse sin duplicar cambios.
# Fase 1: no modifica el sistema. Termina antes de cualquier acción.
set -euo pipefail

phase1_guard() {
  printf '%s\n' "Fase 1: 08-audio.sh no modifica el sistema." >&2
  exit 2
}

apply_audio() {
  # TODO: no cambiar Capture, Rear Mic Boost, el volumen PipeWire ni snd_hda_intel power_save sin motivo documentado y verificación.
  # No llamar a pacman, systemctl ni escribir fuera del repositorio.
  :
}

phase1_guard

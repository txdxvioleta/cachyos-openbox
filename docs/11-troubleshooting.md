# Problemas conocidos

## KNOWN

Al empezar una grabación había un artefacto breve de saturación o wake-up. Quedó resuelto con `snd_hda_intel power_save=0` en el stack Realtek ALC897. El detalle está en [`07-audio.md`](07-audio.md).

No hay otros incidentes escritos para este repositorio.

## TODO

Cuando aparezca un problema nuevo, anotar aquí:

- síntoma
- causa, si se conoce
- cambio hecho
- cómo se comprueba que no volvió

## TO VERIFY

- Que `power_save=0` siga haciendo falta después de instalar CachyOS, sin cambiar el valor antes de esa comprobación.

## Qué no automatizar todavía

Cualquier “arreglo” de audio, red o paquetes desde un script.

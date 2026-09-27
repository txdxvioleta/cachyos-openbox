# Audio

## KNOWN

Stack pedido: PipeWire + WirePlumber + ALSA.

Hardware dicho: Realtek ALC897, JBL Quantum con cable, Rear Mic.

Configuración dicha como buena:

- Capture: 67 %
- Capture: +14.25 dB
- Rear Mic Boost: 0 dB
- Volumen de la fuente PipeWire: 70 %
- `snd_hda_intel power_save=0`

`power_save=0` corrigió un artefacto breve de saturación o wake-up al comenzar una grabación.

En la lista explícita de Archcraft están `pipewire`, `pipewire-alsa`, `pipewire-jack`, `pipewire-pulse`, `wireplumber` y `pavucontrol`. También está `pulsemixer`. No está un paquete llamado PulseAudio como servidor independiente en esa lista explícita; `pipewire-pulse` sí está.

## Decisión de diseño

El entorno nuevo usa PipeWire + WirePlumber + ALSA, con compatibilidad Pulse mediante `pipewire-pulse`. No se instala PulseAudio como servidor aparte. `pavucontrol` entra en la lista provisional de escritorio.

Esos niveles y `power_save=0` no se modifican sin documentar el motivo y añadir una verificación.

## TODO

- Anotar los nombres reales del control ALSA de Capture, de Rear Mic Boost y del nodo PipeWire.
- Decidir dónde vivirá `snd_hda_intel power_save=0` cuando se aplique. No hay archivo de módulo en `config/` todavía.
- Decidir si `pulsemixer` se queda. Está en la lista histórica y no está en las listas nuevas.

## TO VERIFY

- Que los porcentajes y el dB sigan siendo los correctos en los controles reales, antes de escribirlos en un archivo.
- Nombres de paquete de PipeWire en CachyOS.
- Que `power_save=0` siga siendo necesario en el kernel de CachyOS. No se cambia el valor por adelantado; se comprueba.

## HISTORICAL

No se ha volcado `amixer`, `wpctl` ni un archivo de `modprobe` a este repositorio. Los números de arriba vienen de la especificación de la usuaria, no de una lectura nueva de la mezcladora durante esta fase.

## Qué no automatizar todavía

Aplicar volúmenes, Boost o `power_save`. [`../scripts/08-audio.sh`](../scripts/08-audio.sh) no lo hace.

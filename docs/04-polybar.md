# Polybar

## KNOWN

Polybar es la barra del entorno nuevo. En Archcraft el paquete explícito `polybar` está instalado y hay temas en `~/.config/openbox/themes/*/polybar/`.

## Decisión de diseño

La barra es Polybar. Tint2 no se migra, aunque el `autostart` histórico sepa lanzarlo.

## TODO

- Elegir y migrar un tema concreto. No está elegido en este repositorio.
- Definir módulos, bandeja y monitores cuando se copie la configuración.

## TO VERIFY

- Nombre y disponibilidad de `polybar` en CachyOS.
- Qué tema de `~/.config/openbox/themes/` es el que se usa de verdad.

## HISTORICAL

`~/.config/openbox/themes/launch-bar.sh` decide la barra en el `autostart` actual. Ese script no se ha copiado.

## Qué no automatizar todavía

Instalar Polybar o escribir su configuración.

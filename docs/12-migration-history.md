# Historial de migración

## Estado

Fase 1 del repositorio, sin instalación de CachyOS y sin cambios hechos por estos archivos sobre el sistema.

## HISTORICAL

La máquina en la que se creó este repositorio sigue siendo Archcraft (`IMAGE_VERSION=2026.08.01`).

La migración parte de una lista real, no de una lista pendiente de aportar. [`../packages/archcraft-original-packages.txt`](../packages/archcraft-original-packages.txt) es el output completo de `pacman -Qqe` de la instalación Archcraft: 459 nombres, de `7zip` a `zstd`, copiados literalmente, sin clasificación, sin altas, sin bajas y sin cambios de nombre.

La lista histórica incluye paquetes que el entorno nuevo no quiere, por ejemplo `plank`, `tint2`, `mpd`, `mpc`, `ncmpcpp`, `lead`, `skippy-xd`, `light`, `alacritty` y `xfce4-terminal`. Se quedan en el archivo. La decisión de no migrarlos está en [`02-package-strategy.md`](02-package-strategy.md).

También incluye `mariadb` y `mongodb-bin` en el host. En esta Archcraft, `systemctl is-enabled mongodb` respondió `enabled`. La decisión nueva es Docker, no copiar ese servicio. Está documentada en [`08-development.md`](08-development.md) y en `packages/packages-databases.txt`.

## Decisión de diseño

Migración por fases: documentar, clasificar, probar a mano, migrar configuración, recién después scripts pequeños, y al final verificar.

Las listas `packages-*.txt` son una primera intención, no el resultado de clasificar los 459 nombres.

## TODO

- Clasificar cada nombre del baseline histórico. Todavía no está hecho. La lista en sí ya está y no se sustituye.
- Revisar red y almacenamiento antes de migrarlos.

## Qué no automatizar todavía

La instalación completa, la clasificación masiva y la copia de configuración de `~/.config`.

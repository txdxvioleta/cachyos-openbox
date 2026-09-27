# Instalación

## KNOWN

La instalación de CachyOS todavía no forma parte de este repositorio. Los scripts de instalación no actúan. `scripts/00-check-system.sh` sí se puede ejecutar: solo lee el sistema.

Orden obligatorio:

1. Documentación.
2. Clasificación de paquetes.
3. Instalación y prueba manual.
4. Migración de configuración.
5. Scripts pequeños.
6. Verificación.

## Decisión de diseño

No habrá un único `install.sh`. Cada script de [`../scripts/`](../scripts/) cubre una responsabilidad. Hasta que un grupo de paquetes se haya instalado y probado a mano, su script no debe ganar comandos de instalación.

## TODO

- Definir el particionado y el arranque de la instalación limpia de CachyOS. No están especificados.
- Definir el orden manual de instalación después de clasificar paquetes.
- Comparar `packages-core.txt` con lo que ya instale CachyOS, para no reinstalar la base a ciegas.

## TO VERIFY

- Paquetes base que CachyOS ya instala por su cuenta, para no duplicarlos a ciegas.
- Si `linux` y `amd-ucode` son los nombres correctos en la imagen elegida.

## Qué no automatizar todavía

Todo lo que está en `scripts/`. Ningún script de este repositorio debe usarse para instalar.

# AGENTS.md

Este archivo manda sobre `README.md` y sobre el resto de la documentación si hay conflicto.

## Identidad

Repositorio personal del entorno CachyOS + X11 + Openbox de esta máquina. No es un proyecto genérico de dotfiles ni un instalador universal para otros equipos.

Fase actual: 1. Solo existen archivos. No se instala software y no se modifica el sistema operativo.

## Restricciones absolutas

No introducir ni automatizar:

- KDE / Plasma
- GNOME
- Wayland como sesión
- XFCE completo
- Plank
- Tint2
- Skippy-xd
- Lead
- MPD (`mpd`, `mpc`, `ncmpcpp`)
- PulseAudio como servidor independiente
- XFCE Terminal como terminal principal
- Alacritty como terminal principal

XFCE solo mediante componentes sueltos ya decididos: `xfsettingsd`, `xfce4-power-manager`, `xfce-polkit` y Thunar.

`xfce4-settings` se permite únicamente porque hace falta `xfsettingsd`. No instalar ni habilitar una sesión XFCE, ni otros componentes de XFCE, salvo una razón explícita escrita en este repositorio.

Terminal principal: Kitty. Shell interactiva: Zsh. Super+T abre Kitty cuando exista la configuración de Openbox.

## Arquitectura de escritorio

X11. Gestor de ventanas: Openbox. Barra: Polybar. Lanzador: Rofi. Compositor: Picom. Notificaciones: Dunst. Fondos: Nitrogen. Archivos: Thunar. Red: NetworkManager. Bluetooth: BlueZ + Blueman. Audio: PipeWire + WirePlumber + ALSA.

## Filosofía de paquetes

`packages/archcraft-original-packages.txt` es histórico e inmutable. Contiene la salida literal de `pacman -Qqe` de la instalación Archcraft. No se clasifica, no se recorta y no se reescribe porque un paquete parezca obsoleto.

La clasificación vive solo en:

- `packages/packages-*.txt`
- `docs/`

Esas listas nuevas son provisionales. Un nombre escrito ahí no es un nombre confirmado de CachyOS. Si hace falta duda, se marca TO VERIFY. No se copian paquetes desde la lista histórica de forma automática.

`packages/packages-core.txt` describe el estado objetivo: paquetes que deben estar presentes después de instalar CachyOS. No es una orden de reinstalar `base`, `linux` o `linux-firmware` si el instalador ya los dejó. El nombre de una aplicación no es el nombre del paquete.

Node.js se gestiona con NVM. No hace falta el paquete `nodejs` del sistema solo porque exista. npm llega con la versión de Node que elija NVM. pnpm se instala aparte. Yarn solo si un proyecto lo pide. TypeScript se instala por proyecto (`npm install -D typescript`), no con un paquete global del sistema.

El destino de Compose es Docker Engine más Compose moderno. No se conservan a la vez el plugin y el `docker-compose` legado solo porque Archcraft tuviera `docker-compose`. El nombre exacto del paquete en CachyOS sigue en TO VERIFY.

Categorías usadas fuera del archivo histórico:

- REQUIRED
- OPTIONAL
- REPLACED
- OBSOLETE
- ARCHCRAFT-SPECIFIC

Bases de datos: PostgreSQL, Redis, MongoDB y MariaDB/MySQL en Docker. No crear servicios permanentes en el host sin una razón documentada.

## Estándar de scripts

- Un script, una responsabilidad. No crear un `install.sh` gigante.
- `#!/usr/bin/env bash` y `set -euo pipefail`.
- Idempotentes cuando lleguen a modificar algo.
- `scripts/00-check-system.sh` es de solo lectura y se puede ejecutar. Consulta el sistema (`/etc/os-release`, `pacman -Q`) y no instala ni escribe configuración.
- El resto de los scripts, en esta fase, termina con código 2 y no llama a `pacman` ni a `systemctl`.
- No ejecutar los scripts de instalación para probarlos. `00-check-system.sh` no es uno de ellos.

## Reglas de configuración

No inventar `rc.xml`, temas de Polybar, temas de Rofi, `picom.conf`, `dunstrc`, fondos, `kitty.conf` ni `.zshrc`. Hasta que se migren, `config/` solo documenta el hueco.

No dar por migrada una configuración que solo existe en el home de Archcraft.

## Audio

Valores previamente verificados en la instalación Archcraft:

- Capture: 67 % y +14.25 dB
- Rear Mic Boost: 0 dB
- Volumen de la fuente PipeWire: 70 %
- `snd_hda_intel power_save=0`

No cambiarlos sin dejar escrito el motivo y una verificación. `power_save=0` corrigió un artefacto de saturación o wake-up al empezar a grabar. Los nombres de controles y de nodos no están confirmados en el repositorio: no se fabrican.

## Seguridad

- No commitear secretos, tokens, claves ni perfiles con credenciales.
- No tratar la lista histórica como lista de instalación.
- No ampliar un script de documentación hasta un instalador en el mismo cambio.
- Revisar dependencias de paquetes XFCE para no arrastrar una sesión completa.

## Reglas para Cursor y otros agentes

- Seguir este archivo.
- No instalar paquetes ni cambiar el sistema mientras la fase sea de documentación, salvo una petición explícita de salir de esa fase.
- No inventar paquetes, versiones, imágenes Docker ni configuración.
- No borrar ni “limpiar” `archcraft-original-packages.txt`.
- Separar siempre hecho de Archcraft, decisión para CachyOS, y pendiente de verificar.
- Lo no probado a mano no se automatiza.

## Verificación

Antes de instalar componentes de CachyOS hay que confirmar nombres de paquete, repositorio (oficial, CachyOS o AUR) y que las exclusiones siguen fuera. `scripts/99-verify.sh` todavía no verifica nada.

## Definición de hecho de la fase 1

- Árbol de documentación, paquetes, scripts y `config/` creado.
- Lista histórica literal, completa y sin clasificar.
- Listas nuevas marcadas como provisionales.
- Scripts incapaces de modificar el sistema.
- Configuración real aún no migrada.
- Ningún paquete instalado por este repositorio.

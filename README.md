# CachyOS + X11 + Openbox

Repositorio personal para documentar y, más adelante, reproducir un entorno concreto: CachyOS con X11 y Openbox. No es una colección genérica de dotfiles ni un instalador universal.

## Estado

Fase 1: solo archivos del repositorio.

- No se instala software.
- No se modifica el sistema.
- Los scripts existen, pero se niegan a actuar.
- Las listas `packages-*.txt` son provisionales.
- [`packages/archcraft-original-packages.txt`](packages/archcraft-original-packages.txt) es el registro histórico intacto de `pacman -Qqe` en la instalación Archcraft anterior. No está clasificado.

[`AGENTS.md`](AGENTS.md) manda sobre este README si hay conflicto.

## Sistema objetivo

- Sistema: CachyOS.
- Sesión: X11 + Openbox.
- Shell interactiva: Zsh.
- Terminal: Kitty. Super+T debe abrir Kitty.

## Stack de escritorio

- Openbox
- Polybar
- Rofi
- Picom
- Dunst
- Nitrogen
- Thunar y Tumbler
- Kitty
- Componentes XFCE sueltos: `xfsettingsd` (el paquete `xfce4-settings` entra solo por ese daemon), `xfce4-power-manager`, `xfce-polkit`. Eso no habilita una sesión XFCE.
- NetworkManager y applet
- Bluetooth: BlueZ, `bluez-utils`, Blueman
- Audio: PipeWire + WirePlumber + ALSA, con `pavucontrol`

## Exclusiones

No forman parte del entorno nuevo:

- KDE / Plasma
- GNOME
- Wayland
- XFCE completo
- Plank
- Tint2
- Skippy-xd
- Lead
- MPD (`mpd`, `mpc`, `ncmpcpp`)
- PulseAudio como servidor independiente
- XFCE Terminal como terminal principal
- Alacritty como terminal principal

Esos nombres pueden seguir apareciendo en la lista histórica. No se borran de ahí. La decisión de no migrarlos vive en la documentación y en las listas nuevas.

## Hardware

Conocido para esta máquina:

- CPU: AMD Ryzen 7 5700G
- Placa: MSI B550M-A PRO
- RAM: 32 GB DDR4-3600
- NVMe: ADATA Legend 800 1 TB
- Audio: Realtek ALC897
- Auriculares: JBL Quantum con cable
- Micrófono: Rear Mic

## Desarrollo

Tecnologías previstas: React, React Native, TypeScript, JavaScript, Next.js, Node.js, NestJS, APIs REST, SQL, NoSQL y Docker.

Herramientas previstas: Git, GitHub CLI, NVM como gestor de Node, npm que viene con esa versión de Node, pnpm, Yarn solo si un proyecto lo pide, TypeScript por proyecto, Docker con Compose moderno, VS Code, Cursor, OpenCode, Postman y DBeaver. El nombre de la aplicación no confirma el nombre del paquete.

PostgreSQL, Redis, MongoDB y MariaDB/MySQL se prefieren en Docker. No se crean servicios permanentes de bases de datos en el host salvo razón documentada.

## Audio

Stack: PipeWire + WirePlumber + ALSA.

Valores previamente verificados en la instalación Archcraft:

- Capture: 67 % y +14.25 dB
- Rear Mic Boost: 0 dB
- Volumen de la fuente PipeWire: 70 %
- `snd_hda_intel power_save=0`

`power_save=0` evitó un artefacto breve de saturación o wake-up al empezar una grabación. Esos valores no se cambian sin motivo documentado y una verificación. Los nombres reales de controles ALSA y de nodos PipeWire todavía no están migrados.

## Paquetes

| Archivo | Papel en esta fase |
| --- | --- |
| `packages/archcraft-original-packages.txt` | Histórico literal. 459 nombres explícitos. Sin clasificación. |
| `packages/packages-core.txt` | Provisional. Estado objetivo después de instalar CachyOS, no una orden de reinstalar la base. |
| `packages/packages-desktop.txt` | Provisional. Escritorio. |
| `packages/packages-development.txt` | Provisional. Desarrollo. |
| `packages/packages-databases.txt` | Provisional. Política Docker, sin servidores en el host. |
| `packages/packages-applications.txt` | Provisional. Aplicaciones personales. |
| `packages/packages-optional.txt` | Provisional. Uso diario, administración y rescate, en secciones distintas. El firewall queda aparte. |

Ningún nombre de las listas nuevas se considera confirmado para los repositorios de CachyOS.

## Scripts

Un script por responsabilidad, en [`scripts/`](scripts/). No hay un `install.sh` único. `scripts/00-check-system.sh` solo lee el sistema. El resto, en esta fase, termina sin cambiar nada. Las decisiones fechadas están en [`docs/decisions.md`](docs/decisions.md).

## Configuración

[`config/`](config/) solo tiene directorios y README. La configuración real de Openbox, Polybar, Rofi, Picom, Dunst, Nitrogen, Kitty y Zsh no se ha migrado.

## Seguridad

- No guardar secretos, tokens ni perfiles de red con credenciales.
- No ejecutar los scripts como instaladores: en esta fase no lo son.
- Revisar cada paquete antes de instalarlo.
- No copiar la lista histórica a una instalación nueva.
- Las bases de datos de trabajo van en Docker, no como servicios permanentes del host, salvo razón escrita.

## Migración

El orden es fijo:

1. Documentación.
2. Clasificación de paquetes.
3. Instalación y prueba manual.
4. Migración de configuración.
5. Scripts pequeños.
6. Verificación.

No se salta a la automatización.

## Cursor

Las reglas de trabajo para un agente están en [`AGENTS.md`](AGENTS.md). Este repositorio describe un entorno personal, no un instalador genérico.

## Verificación

[`scripts/00-check-system.sh`](scripts/00-check-system.sh) puede ejecutarse: solo informa. [`scripts/99-verify.sh`](scripts/99-verify.sh) todavía no es la suite de comprobación del sistema. Los puntos abiertos están marcados como TODO o TO VERIFY en `docs/`.

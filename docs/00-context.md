# Contexto

## KNOWN

Entorno personal que este repositorio va a documentar y, después, reproducir:

- Objetivo: CachyOS + X11 + Openbox.
- Origen de la migración: la instalación Archcraft que sigue en esta máquina (`ID=archcraft`, `IMAGE_VERSION=2026.08.01`).
- Terminal principal prevista: Kitty.
- Shell interactiva prevista: Zsh.
- Atajo previsto: Super+T abre Kitty.
- Audio: Realtek ALC897, auriculares JBL Quantum con cable, Rear Mic.
- CPU: AMD Ryzen 7 5700G.
- Placa: MSI B550M-A PRO.
- RAM: 32 GB DDR4-3600.
- NVMe: ADATA Legend 800 1 TB.

La lista explícita de esa Archcraft está en [`../packages/archcraft-original-packages.txt`](../packages/archcraft-original-packages.txt). Son 459 nombres, salida de `pacman -Qqe`, sin editar.

## Decisión de diseño para CachyOS

No es un dotfiles genérico ni un instalador universal. El escritorio nuevo no incluye KDE, GNOME, Wayland, XFCE completo, Plank, Tint2, Skippy-xd, Lead, MPD, PulseAudio independiente, XFCE Terminal ni Alacritty como terminal principal.

XFCE queda limitado a `xfsettingsd`, `xfce4-power-manager`, `xfce-polkit` y Thunar.

## TODO

- Completar la clasificación del resto de la lista histórica. En esta fase solo están clasificados los grupos provisionales y las exclusiones explícitas.
- Migrar la configuración real cuando toque la fase de configuración, no antes.

## TO VERIFY

- Que el hardware descrito siga siendo el de la máquina el día de la instalación de CachyOS.
- Nombres de paquetes en los repositorios de CachyOS. La lista histórica no los confirma.

## HISTORICAL

Archcraft arrancaba, entre otras cosas, Nitrogen, un lanzador de barra, Picom, Plank, `xfsettingsd`, `xfce4-power-manager`, `xfce-polkit`, Dunst, MPD, el daemon de Thunar, Lead, Skippy-xd y `ksuperkey`. Eso sale del `autostart` presente en el home, no de una configuración ya migrada a este repositorio.

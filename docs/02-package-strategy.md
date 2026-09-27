# Estrategia de paquetes

## KNOWN

Hay dos capas distintas.

La capa histórica ya está disponible. No falta aportarla. Está en [`../packages/archcraft-original-packages.txt`](../packages/archcraft-original-packages.txt): 459 paquetes explícitos de Archcraft, de `7zip` a `zstd`, uno por línea, tal como los imprimió `pacman -Qqe`. Ese archivo no se clasifica, no se recorta, no se deduplica y no se reescribe. No es una lista de instalación. Es el baseline histórico.

La capa nueva son los `packages-*.txt`. Son provisionales. Describen un estado objetivo: qué debería estar presente en CachyOS. No son una orden de instalar cada nombre, y el instalador de CachyOS ya puede haber dejado parte de la base. Que un paquete aparezca en `packages-core.txt`, `packages-desktop.txt` o cualquier otra lista nueva no significa que el nombre ya esté validado para CachyOS.

`xfce4-settings` está en la lista de escritorio solo porque aporta `xfsettingsd`. No autoriza una sesión XFCE ni más componentes de XFCE.

Un instalador futuro debe ignorar comentarios y el sufijo `# TO VERIFY: ...` de una línea. Hoy ningún script instala esas líneas.

## Categorías

Se usan solo fuera del archivo histórico:

- REQUIRED: previsto para el entorno nuevo.
- OPTIONAL: no entra en la instalación base.
- REPLACED: existía o se usaba, y el entorno nuevo usa otra cosa.
- OBSOLETE: no se migra.
- ARCHCRAFT-SPECIFIC: pertenece a Archcraft y no se asume en CachyOS.

## Exclusiones ya clasificadas

Siguen dentro de la lista histórica. Aquí solo se decide no migrarlos:

- OBSOLETE: `plank`, `mpd`, `mpc`, `ncmpcpp`, `lead`, `skippy-xd`, `light`, `tint2`
- REPLACED: `alacritty` y `xfce4-terminal`, sustituidos por Kitty

`tint2` está en la lista histórica y en el `autostart` de Archcraft como alternativa de barra. La decisión de diseño es Polybar, no Tint2.

## HISTORICAL que no se copia solo

El archivo histórico incluye paquetes `archcraft-*`, temas, cursores, iconos, `sddm`, `yay`, clientes y servidores que el entorno nuevo no ha pedido. También incluye red y almacenamiento que hay que revisar antes de migrar, por ejemplo `iwd`, `dhcpcd`, `wpa_supplicant`, `networkmanager-dmenu-git`, plugins VPN de NetworkManager, `btrfs-progs`, `btrfs-assistant`, `timeshift`, `grub-btrfs`.

En el host Archcraft también estaban explícitos `mariadb` y `mongodb-bin`. No pasan a las listas nuevas. La decisión de diseño es Docker.

Nombres explícitos de Archcraft que no coinciden con el nombre pedido para CachyOS:

- `visual-studio-code-bin`, no `visual-studio-code`
- `postman-bin`, no `postman`
- `dbeaver-ce-bin`, no `dbeaver`
- `brave-bin`, no `brave`
- `cursor-bin`, no un paquete llamado `cursor`

`steam` no está en `pacman -Qqe`. `git`, `curl` y `wget` tampoco aparecen como explícitos. Pueden ser dependencias. Eso no los quita de la lista provisional de CachyOS; tampoco los confirma.

## TODO

- Clasificar el resto de los 459 nombres. No está hecho.
- Revisar red, VPN, almacenamiento y herramientas de rescate antes de copiar nada a una lista nueva.
- Confirmar cada nombre provisional contra CachyOS antes de instalar.

## TO VERIFY

Cada archivo `packages-*.txt` lo declara en la cabecera. Las líneas con `# TO VERIFY` son las dudas concretas de esta fase. El resto de los nombres provisionales tampoco está comprobado en CachyOS: la cabecera cubre esa reserva.

## Qué no automatizar todavía

Cualquier instalación desde estas listas, incluida la histórica.

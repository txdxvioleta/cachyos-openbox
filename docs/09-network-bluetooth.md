# Red y Bluetooth

## KNOWN

El entorno nuevo prevé NetworkManager, `network-manager-applet`, `nm-connection-editor`, BlueZ, `bluez-utils` y Blueman.

En Archcraft están explícitos, entre otros: `networkmanager`, `network-manager-applet`, `nm-connection-editor`, `blueman`, `bluez`, `bluez-utils`. También hay `iwd`, `dhcpcd`, `wpa_supplicant`, `networkmanager-dmenu-git` y varios plugins VPN (`openvpn`, `openconnect`, `pptp`, `sstp`, `vpnc`, `strongswan`).

En el `autostart` histórico, `nm-applet` y `blueman-applet` están comentados.

## Decisión de diseño

La red del entorno nuevo es NetworkManager. Bluetooth es BlueZ con Blueman. No se migran todavía los plugins VPN ni `iwd` ni `dhcpcd`.

## TODO

- Revisar la red y el almacenamiento históricos antes de pasar cualquier otro paquete a una lista nueva.
- Decidir si el applet de red y el de Bluetooth arrancan con la sesión.

## TO VERIFY

- Nombres de esos paquetes en CachyOS.
- Si hace falta algún firmware inalámbrico concreto. No está especificado; no se inventa.

## HISTORICAL

No hay perfiles de NetworkManager en este repositorio. No se copian conexiones ni secretos.

## Qué no automatizar todavía

Activar servicios de red o de Bluetooth, y copiar perfiles.

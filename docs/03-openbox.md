# Openbox

## KNOWN

El entorno nuevo usa Openbox sobre X11.

Atajo decidido: Super+T abre Kitty. Todavía no hay `rc.xml` en este repositorio que lo implemente.

En Archcraft existen, sin migrar, `~/.config/openbox/rc.xml`, `autostart`, `environment`, `kbinds.txt` y varios `menu-*.xml`.

## Decisión de diseño

Openbox es el gestor de ventanas. No se sustituye por un escritorio completo. El atajo de terminal es de esta migración, no una copia ya hecha del `rc.xml` anterior.

## TODO

- Migrar atajos, menú y `autostart` después de probar el escritorio a mano.
- Dejar fuera del `autostart` nuevo: Plank, MPD, Lead, Skippy-xd y Tint2.

## TO VERIFY

- Qué partes del `rc.xml` actual se quieren conservar.
- El paquete `openbox` en CachyOS y si hace falta algo más para la sesión X11 (`xorg-xinit` está en la lista provisional).

## HISTORICAL

El `autostart` de Archcraft lanza Nitrogen, la barra, Picom, Plank, `xfsettingsd`, `xfce4-power-manager`, `xfce-polkit`, Dunst, MPD, Thunar en daemon, Lead, Skippy-xd y `ksuperkey`. El contenido no se copia aquí en esta fase.

## Qué no automatizar todavía

Instalar Openbox o generar `rc.xml` desde un script.

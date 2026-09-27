# Terminal y shell

## KNOWN

- Terminal principal: Kitty.
- Shell interactiva: Zsh.
- Super+T debe abrir Kitty.
- En Archcraft están explícitos `kitty`, `kitty-terminfo` y `zsh`.
- En el home existen `~/.config/kitty/kitty.conf`, `fonts.conf` y `colors.conf`. No se han leído ni copiado.
- También están explícitos `alacritty` y `xfce4-terminal`.

## Decisión de diseño

Kitty reemplaza a Alacritty y a XFCE Terminal como terminal principal. Zsh es la shell interactiva. Esas dos sustituciones no borran los nombres viejos de la lista histórica.

## TODO

- Migrar la configuración de Kitty.
- Migrar la configuración de Zsh. En Archcraft hay paquetes `archcraft-omz` y `archcraft-hooks-zsh`; no se asume que se reutilicen.
- Escribir el atajo Super+T en Openbox cuando se migre `rc.xml`.

## TO VERIFY

- Si `kitty-terminfo` sigue siendo un paquete aparte en CachyOS. En Archcraft lo era.
- Cómo se dejará Zsh como shell interactiva, sin hacerlo en esta fase.

## HISTORICAL

`alacritty` y `xfce4-terminal` quedan clasificados como REPLACED solo en la documentación. Siguen en `archcraft-original-packages.txt`.

## Qué no automatizar todavía

Instalar Kitty o Zsh, cambiar la shell interactiva y escribir configuraciones.

# Decisiones

Registro de por qué el entorno nuevo es así. No clasifica los 459 paquetes de Archcraft y no autoriza a instalarlos.

## 2026-09

- CachyOS es la distribución del entorno nuevo. Archcraft queda como baseline histórico.
- La sesión es X11. Wayland no es la sesión de este entorno.
- El gestor de ventanas es Openbox. No se usa KDE, GNOME ni XFCE completo.
- `xfce4-settings` entra solo porque hace falta `xfsettingsd`. No habilita una sesión XFCE ni más componentes de XFCE.
- Kitty es la terminal principal. Reemplaza a Alacritty y a XFCE Terminal en ese papel.
- Zsh es la shell interactiva.
- Polybar es la barra. Tint2 no se migra.
- Plank, Skippy-xd, Lead y MPD no se migran.
- El audio sigue en PipeWire + WirePlumber + ALSA. Los niveles ya verificados en Archcraft no se cambian sin un motivo escrito y una comprobación.
- PostgreSQL, Redis, MongoDB y MariaDB/MySQL van en Docker. No se crean servicios permanentes de esas bases en el host.
- Node.js se gestiona con NVM. No se exige el paquete `nodejs` del sistema. npm viene con esa versión de Node. pnpm va aparte. Yarn solo si un proyecto lo pide.
- TypeScript se instala por proyecto, no como paquete global del sistema.
- Docker termina en Docker Engine y un solo Compose moderno. No se conservan dos mecanismos de Compose porque Archcraft tuviera `docker-compose`. El nombre del paquete en CachyOS sigue sin verificar.
- `packages-core.txt` es un estado objetivo, no una lista para reinstalar encima de lo que ya deje el instalador de CachyOS.
- `ufw` y `gufw` no se instalan hasta saber qué firewall trae CachyOS.
- La lista `archcraft-original-packages.txt` no se copia a la instalación nueva.

## Pendiente

- Clasificar los 459 nombres del baseline.
- Confirmar en CachyOS cada nombre de paquete marcado TO VERIFY.
- Elegir el método concreto de instalación de NVM.
- Elegir un solo paquete o plugin de Compose.

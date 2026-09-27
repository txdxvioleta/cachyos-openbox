# Desarrollo

## KNOWN

Tecnologías del entorno: React, React Native, TypeScript, JavaScript, Next.js, Node.js, NestJS, APIs REST, SQL, NoSQL y Docker.

Herramientas pedidas: Git, GitHub CLI, NVM, Node.js, npm, Yarn, pnpm, TypeScript, Docker, Docker Compose, VS Code, Cursor, OpenCode, Postman y DBeaver.

En `pacman -Qqe` de Archcraft aparecen, entre otros: `github-cli`, `docker`, `docker-compose`, `npm`, `pnpm`, `gcc`, `make`, `python-pip`, `pkgconf`, `jq`, `tmux`, `postman-bin`, `dbeaver-ce-bin`, `visual-studio-code-bin`, `cursor-bin`.

No aparecen como explícitos: `git`, `yarn`, un paquete `nvm`, `nodejs`, `typescript`, `opencode`, `visual-studio-code`, `postman`, `dbeaver`.

## Decisión de diseño

Node.js se gestiona con NVM. No se instala el paquete `nodejs` del sistema solo porque exista. Las versiones concretas dependen de cada proyecto. npm llega con el Node elegido por NVM. pnpm se instala aparte. Yarn solo entra si un proyecto lo necesita. TypeScript se agrega en el proyecto (`npm install -D typescript`), no como requisito del sistema.

Cursor y OpenCode siguen sin un nombre de paquete para CachyOS. No se inventa uno.

Docker termina en Docker Engine más un solo Compose moderno. No se mantienen el plugin y el `docker-compose` legado a la vez por la instalación anterior. El nombre del paquete sigue sin verificar.

La lista provisional está en [`../packages/packages-development.txt`](../packages/packages-development.txt). Esos nombres no se sustituyen en silencio por los de Archcraft.

## TODO

- Elegir el método de instalación de NVM en CachyOS. No hay paquete confirmado.
- Elegir el método de Cursor y de OpenCode.
- Elegir, en la verificación, un solo paquete o plugin de Compose moderno.

## TO VERIFY

- Nombre de paquete de NVM, si existe, frente a la instalación por el script oficial. No se fija aquí.
- `docker-compose` frente al plugin Compose. Hace falta uno, no los dos.
- `visual-studio-code` frente a `visual-studio-code-bin`.
- `postman` frente a `postman-bin`.
- `dbeaver` frente a `dbeaver-ce-bin`.
- Si un paquete `npm` de CachyOS exige `nodejs` del sistema. El camino elegido es el npm que trae NVM.

## HISTORICAL

Los nombres `*-bin` de arriba son los que estaban explícitos en Archcraft. Permanecen solo en la lista histórica.

## Qué no automatizar todavía

Instalar toolchains, cambiar la versión de Node o entrar en el grupo `docker`.

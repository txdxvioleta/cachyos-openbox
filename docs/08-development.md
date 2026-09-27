# Desarrollo

## KNOWN

Tecnologías del entorno: React, React Native, TypeScript, JavaScript, Next.js, Node.js, NestJS, APIs REST, SQL, NoSQL y Docker.

Herramientas pedidas: Git, GitHub CLI, NVM, Node.js, npm, Yarn, pnpm, TypeScript, Docker, Docker Compose, VS Code, Cursor, OpenCode, Postman y DBeaver.

En `pacman -Qqe` de Archcraft aparecen, entre otros: `github-cli`, `docker`, `docker-compose`, `npm`, `pnpm`, `gcc`, `make`, `python-pip`, `pkgconf`, `jq`, `tmux`, `postman-bin`, `dbeaver-ce-bin`, `visual-studio-code-bin`, `cursor-bin`.

No aparecen como explícitos: `git`, `yarn`, un paquete `nvm`, `nodejs`, `typescript`, `opencode`, `visual-studio-code`, `postman`, `dbeaver`.

## Decisión de diseño

La lista provisional de desarrollo es la del archivo [`../packages/packages-development.txt`](../packages/packages-development.txt), con los nombres que se pidieron para CachyOS. No se sustituyen en silencio por el nombre de Archcraft. La diferencia queda como TO VERIFY.

NVM, Yarn, el TypeScript global, Cursor y OpenCode no tienen nombre de paquete especificado para CachyOS. No se inventa uno y no entran en la lista provisional.

Node.js de sistema no se añade como `nodejs` porque no se pidió ese paquete. La relación entre `npm`, `nodejs` y NVM queda abierta.

## TODO

- Decidir si Node.js se instala con NVM, con el paquete del sistema, o con ambos, y en qué orden respecto de npm, Yarn y pnpm.
- Elegir el método de Cursor y de OpenCode.
- Confirmar si TypeScript se instala por proyecto o también de forma global.

## TO VERIFY

- `docker-compose` frente al plugin Compose de Docker.
- `visual-studio-code` frente a `visual-studio-code-bin`.
- `postman` frente a `postman-bin`.
- `dbeaver` frente a `dbeaver-ce-bin`.
- Si `npm` en CachyOS existe como paquete y si exige `nodejs`.

## HISTORICAL

Los nombres `*-bin` de arriba son los que estaban explícitos en Archcraft. Permanecen solo en la lista histórica.

## Qué no automatizar todavía

Instalar toolchains, cambiar la versión de Node o entrar en el grupo `docker`.

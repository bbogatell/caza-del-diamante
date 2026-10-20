# 💎 La Caza del Diamante (Roblox)

Repositorio compartido del equipo. **Aquí no está el código del juego**: el juego vive en Roblox Studio (Team Create). Este repositorio es el **cuaderno del proyecto**: qué es el juego, cómo está montado, y un **registro de cada cambio** que hacemos nosotros o nuestros Claude.

- **Juego:** «💎ENCUENTRA EL DIAMANTE💎». Place ID `114071915342478`: <https://www.roblox.com/games/114071915342478>
- **Equipo:** bbogatell (dueño) · seguo970

## Documentos

| Archivo | Para qué |
|---|---|
| [`CHANGELOG.md`](CHANGELOG.md) | **Registro de cambios.** Cada cambio en el juego se apunta aquí, el más nuevo arriba. |
| [`CLAUDE.md`](CLAUDE.md) | Instrucciones para Claude (las lee solo al abrir esta carpeta). |
| [`docs/JUEGO.md`](docs/JUEGO.md) | Qué es el juego y cómo se juega (diseño). |
| [`docs/ARQUITECTURA.md`](docs/ARQUITECTURA.md) | Dónde está cada cosa en Studio: scripts, módulos, carpetas del mapa. |
| [`docs/PRUEBAS.md`](docs/PRUEBAS.md) | Comandos de chat y de prueba, y trucos para probar en Studio. |
| [`docs/IMPORTAR_MODELOS.md`](docs/IMPORTAR_MODELOS.md) | Cómo meter un modelo `.glb` (p. ej. una pala hecha con IA) con sus texturas y su animación. |
| [`docs/PENDIENTES.md`](docs/PENDIENTES.md) | Lista de cosas por hacer / ideas / bugs conocidos. |

## Cómo trabajamos

1. **Antes de empezar:** `git pull` y lee las últimas entradas de `CHANGELOG.md` para saber qué ha cambiado el otro.
2. **Avisa si vas a tocar algo grande** (por WhatsApp/Discord) para no editar el mismo script a la vez en Studio.
3. **Después de cada cambio:** añade una entrada arriba del todo en `CHANGELOG.md` (y actualiza `ARQUITECTURA.md` / `PRUEBAS.md` si cambias la estructura o los comandos), luego `git add`, `git commit` y `git push`.
4. Si hace falta enseñar un trozo de script para explicar algo, se puede pegar en el documento, pero **no copiamos los scripts enteros** aquí.

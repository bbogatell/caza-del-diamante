# Instrucciones para Claude

Este repositorio es el cuaderno compartido del juego de Roblox «La Caza del Diamante» (place `114071915342478`). Lo usan **dos personas, cada una con su propio Claude**: bbogatell (dueño) y seguo970. El juego en sí se edita en **Roblox Studio con Team Create**, normalmente a través del MCP de Roblox Studio. Aquí solo hay documentación.

## Reglas obligatorias

1. **Al empezar una sesión de trabajo en el juego:** haz `git pull` en este repositorio y lee las entradas recientes de `CHANGELOG.md` y `docs/PENDIENTES.md`. Puede que el otro Claude haya cambiado cosas que contradicen lo que recuerdas: el estado real está en Studio y en este registro.
2. **Después de cada cambio en el juego** (aunque sea pequeño), añade una entrada **arriba del todo** en `CHANGELOG.md` con el formato de abajo. Una entrada por petición del usuario, no por cada edición.
3. Si cambias la **estructura** (scripts nuevos, módulos renombrados, carpetas del mapa, remotes, atributos, guardado), actualiza `docs/ARQUITECTURA.md`. Si añades o cambias **comandos o trucos de prueba**, actualiza `docs/PRUEBAS.md`. Si dejas algo a medias o encuentras un bug, apúntalo en `docs/PENDIENTES.md`.
4. Luego `git add -A`, `git commit -m "<resumen corto>"` y `git push`. Si el push falla por cambios del otro, haz `git pull --rebase` y vuelve a hacer push; en conflictos en `CHANGELOG.md` conserva **las dos** entradas.
5. **No copies scripts enteros** al repositorio. Solo fragmentos cortos cuando sirvan para explicar algo.
6. **Team Create:** el otro puede estar editando a la vez. Antes de reescribir un script grande, comprueba en Studio que nadie lo tiene abierto/recién cambiado (mira la última entrada del CHANGELOG) y avisa al usuario.
7. No toques el DataStore de jugadores reales ni publiques el juego sin que el usuario lo pida.
8. Escribe los documentos en **español** (el equipo habla español).

## Formato de una entrada del CHANGELOG

```markdown
## 2026-10-16 · bbogatell (Claude) · Título corto del cambio
**Qué:** qué ha cambiado para el jugador, en 1-3 frases.
**Dónde:** scripts/instancias tocados (p. ej. `ServerScriptService.DiamondServer.Gnomes`, `ReplicatedStorage.Config`).
**Probado:** qué se probó en Play y qué no.
**Notas:** valores que conviene saber, cosas a medias (opcional).
```

Usa la fecha real y el nombre del usuario con el que trabajas (`bbogatell` o `seguo970`).

## Contexto técnico rápido

- Todo el código está en Studio: `ServerScriptService.DiamondServer` (servidor), `StarterPlayer.StarterPlayerScripts.DiamondClient` (cliente), `ReplicatedStorage` (compartido: `Config`, `DigAnim`, `ShovelLook`, `TalismanLook`). Mapa completo en `docs/ARQUITECTURA.md`.
- **Casi todos los números del juego** (precios, niveles, talismanes, gnomos) están en `ReplicatedStorage.Config`.
- Para probar en Studio hay comandos de chat (`/gnomo`, `/talisman ...`, `/empezar`) y `Request:InvokeServer("Debug", ...)`. Ver `docs/PRUEBAS.md`.
- La API de DataStore está desactivada en Studio, así que los avisos de DataStore en la consola son normales.
- Errores conocidos del MCP y trucos para probar: ver la sección «Trucos» de `docs/PRUEBAS.md`.

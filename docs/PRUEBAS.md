# Cómo probar

## Comandos de chat (solo en Studio o con la cuenta del dueño)
| Comando | Qué hace |
|---|---|
| `/fosil <id o nombre> [parcela]` | Te da ese fósil en las manos (p. ej. `/fosil C-III`, `/fosil amonites`). Ids: `C-I`, `C-II`, `C-III`, `C-S1` (★), `C-S2` (★★), igual con `PC`, `R`, `E`, `L`, `M`, `CO`, `S`, `ET`, `D`, `B`, `MU`. La parcela cuenta para los raros que dan bichos de Evento (por defecto 11). |
| `/fosil <id> base [parcela]` | Lo pone directamente en un sitio libre de tu base. |
| `/abrir` | Abre ya todos los fósiles de tu base. |
| `/evento empezar [minutos]` · `/evento terminar` | Empieza o acaba un evento de fósil raro (uno por servidor, con haz de luz). |
| `/regenerar <1-15>` | Regenera esa parcela del carril (aviso y te saca del hoyo). |
| `/pala <1-30>` | Te da esa pala. |
| `/base borrar` | Vacía tu base. |
| `/dinero <cantidad>` | Te da monedas: `/dinero 5000`, `/dinero 2.5m`, `/dinero 1b`, `/dinero 3t`. |
| `/empezar` | Abre la barrera del evento del diamante ya. |
| `/rayosx` | Muestra dónde está el diamante escondido. |

## Desde un script (`Request:InvokeServer("Debug", ...)`, solo Studio)
`"coins", n` · `"level", n` · `"fossil", id` (a las manos) · `"fossilBase", id` · `Request:InvokeServer("PlaceFossil")` deja el que llevas · `"openAll"` · `"clearBase"` · `"event", true|false` · `"regen", n` · `"resetDaily"` · `"diamond"`.

- La tecla **E** sube de pala en Studio (`DebugLevelKey`), salvo si sale un aviso de «pulsa E».
- Para probar los golpes y robar fósiles: en Studio, pestaña **Prueba**, elige **2 jugadores** y dale a **Iniciar**.
- Las parcelas del carril empiezan en z = −520; centro de la parcela N: `Config.plotCenter(n)` (z = −632 − 168·(N−1)). El campo está en z = −3208.

## Trucos (para Claude con el MCP de Roblox Studio)
- El `studio_id` cambia en cada sesión: primero `list_roblox_studios`.
- No se puede editar en modo Edit mientras está en Play: para el Play primero.
- `execute_luau` restablece la cámara: para fijar una cámara de prueba usa `BindToRenderStep`.
- Los clics virtuales no activan ClickDetectors ni `Tool.Activated`: usa `tool:Activate()`.
- Para escribir en el chat: `user_keyboard_input` con Slash, espera unos 600 ms, el texto y Return (`SendAsync` se queda colgado).
- Un `require()` de un módulo del servidor desde `execute_luau` crea **otra copia** del módulo: para probar, usa los remotes o los comandos.
- Las capturas de pantalla pueden llegar con varios segundos de retraso.
- Si una `screen_capture` con `camera_position` falla (timeout), la cámara de Studio puede quedarse en `Scriptable` y **no se puede mover**. Arreglo (barra de comandos o `execute_luau` en Edit): `workspace.CurrentCamera.CameraType = Enum.CameraType.Fixed`. Cada persona tiene su propia cámara: hay que hacerlo en cada Studio.
- No cambies `RightGrip.Part0` de una herramienta: Roblox la suelta y se cae del mundo.
- Un Highlight `AlwaysOnTop` tapa las partículas que hay delante del modelo.
- El Bloom del juego quema de blanco los Neon claros y el `Fire` de Roblox: usa partículas y colores menos intensos.
- **Edit cachea los `require`:** tras editar un módulo, `require` desde `execute_luau` en Edit devuelve la versión vieja. Para probar en Edit, clona el módulo (y los que usa) o prueba en Play.
- Para rehacer una parcela del carril: `require(game.ServerStorage.LaneKit).buildPlot(n)` (en Edit; con clones si has cambiado `LaneKit`/`LaneThemes`).
- En el chat, la primera vez puede no coger el foco: si el comando no hace nada, repítelo.
- Si la pala cuelga de la mano en vez de ir cogida con las dos: mira si hay más de una `RightGrip` en `RightHand` (pasa si al jugador se le da la pala dos veces).

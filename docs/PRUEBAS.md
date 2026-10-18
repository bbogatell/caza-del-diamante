# Cómo probar

## Comandos de chat (solo en Studio o con la cuenta del dueño)
| Comando | Qué hace |
|---|---|
| `/gnomo [comun\|raro\|epico\|legendario]` | Hace aparecer un gnomo (al azar si no dices cuál). |
| `/talisman <tipo> [rareza] [cantidad]` | Te da talismanes en tus pedestales. Tipos: `velocidad`, `picada`, `empuje`, `area`, `salto`, `suerte`, `cazagnomos`. Rareza por defecto: legendario. |
| `/talisman todos [rareza]` | Uno de cada tipo. |
| `/talisman suelo <tipo> [rareza]` | Lo suelta en el suelo delante de ti. |
| `/talisman borrar` | Quita todos tus talismanes. |
| `/empezar` | Abre la barrera del evento ya. |
| `/rayosx` | Muestra dónde está el diamante escondido. |

## Desde un script (`Request:InvokeServer("Debug", ...)`, solo Studio)
`"coins", n` · `"level", n` · `"gnome", tier` · `"drop"` · `"talisman", {tipo, rareza}` · `"clearTalismans"` · `"resetDaily"` · `"simpit"` (cava el hoyo entero y compara lo ganado con el precio de la siguiente pala).

- La tecla **E** sube de nivel en Studio (`DebugLevelKey`), salvo si sale un aviso de «pulsa E».
- Para probar robos, intercambios y peleas: en Studio, pestaña **Prueba**, elige **2 jugadores** y dale a **Iniciar**.

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

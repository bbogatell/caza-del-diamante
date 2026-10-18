# Arquitectura (dónde está cada cosa en Studio)

> Si cambias algo de aquí, actualiza este documento.

## Servidor: `ServerScriptService.DiamondServer`
| Script | Qué hace |
|---|---|
| `Main` (Script) | Punto de entrada: crea los remotes, gestiona la entrada de jugadores, el golpe de pala (cavar), el golpe a otros jugadores (`Hit`), las peticiones (`Request`: tienda, diario, ajustes, Debug), los comandos de chat y el ranking. |
| `Data` | Perfiles en DataStore `DiamondHunt_Player_v2` (coins, level, streak, passes, settings…; al cargar borra los talismanes antiguos). Los publica como **atributos del jugador** (`Coins`, `Level`, `Settings`…). Ranking `DiamondHunt_Level_v1`. |
| `Plots` | Las 8 parcelas personales del lobby (asignar, título flotante). **Ya no se cava en ellas** (`hit` devuelve `noDig`); en la fase 5 del gran cambio pasan a ser bases. |
| `PlotDecor` | Decoración de cada parcela por nivel (30 niveles, `build(plotModel, level)`). |
| `Shovels` | Crea la herramienta (Tool) de la pala a partir de `ReplicatedStorage.ShovelLook`. |
| `Event` | El evento: barrera, campo, diamante escondido, recoger el diamante y ganador entre servidores. |
| `Finale` | Cinemática final del servidor y paso al infierno (`ServerStorage.Finale`). |

## Cliente: `StarterPlayer.StarterPlayerScripts`
| Script | Qué hace |
|---|---|
| `DiamondClient.Main` | Entrada del cliente: UI, controles de la pala (elige entre cavar y pegar), respuestas a los avisos del servidor, música, correr, mejoras de velocidad. |
| `DiamondClient.UIKit` | Componentes de UI, **lista de sonidos** (`UI.SOUNDS`) e iconos, grupos de sonido (música/efectos). |
| `DiamondClient.HUD` / `Menus` / `Fx` / `Cinematic` | Interfaz fija, ventanas (tienda, diario, ajustes), efectos de pantalla y cinemática final. |
| `ShovelFx`, `PlotFx`, `StatueBoard` | Animaciones visuales (piezas que flotan en palas y parcelas, cartel del diamante del lobby). |
| `DebugLevelKey` | **Solo Studio:** la tecla E sube de nivel para probar. |

## Compartido: `ReplicatedStorage`
- `Config`: **casi todos los números del juego**: niveles, terrenos, palas y precios, profundidad, daño, diario, Robux.
- `DigAnim`: animación de cavar (de una animación de Blender, 19 fotogramas), postura al llevar la pala y animación de pegar.
- `ShovelLook`: modelos de las 30 palas (piezas).
- `Remotes`: `Swing` (cavar), `Hit` (pegar), `Push` (servidor → cliente), `Request` (peticiones).
- `Assets`: diamante y otros.

## Mapa: `workspace.Map`
- `Lobby` (estilo studs, sin árboles): `Floor` (baldosas con textura de studs, top y=18, huecos en los 8 hoyos y en la escalera al campo), `Cliffs` (paredes de piedra de bloques, `Tier4` lejano, `Mine` al fondo), `Props` (barandilla, rodapié, faroles, jardineras, estandartes, cascada, marcos de los hoyos), estatua del diamante con cartel, tienda, diario, rankings, `PlotFrames` (8 parcelas en 2 filas, delante = +Z), `Bounds` (barreras invisibles). Lo antiguo está guardado en `ServerStorage.LobbyBackup`.
- `Field`: campo del evento con barrera (±122). `Field.StudRing`: baldosas de studs de todo lo que rodea la barrera (franja de la valla, talud del sur, lados y norte); dentro de la barrera sigue el terreno real (se excava en el evento). `Field.Walkway.StudFence`: valla y farolas de bloques + `FenceCollider` invisibles. Copias: `ServerStorage.FieldRingBackup` (terreno), `ServerStorage.FieldPropsBackup` (cartel, arco, escalera y valla originales).
- **Regla de estilo:** solo el interior de las parcelas y el campo dentro de la barrera llevan material realista; todo lo demás, textura de studs `rbxassetid://6348166067`.
- `workspace.Mountains` (fuera de `Map`): montañas de fondo de bloques con studs (hierba/roca/nieve), solo decorado (sin colisión). `Mountains.Fill`: bloques que tapan restos de terreno detrás de las paredes del lobby y en las esquinas. Sustituyen al terreno liso de alrededor; copia del terreno original en `ServerStorage.MountainsBackup`. `Finale.buildHell` las borra.
- `ServerStorage.Finale`: plataforma del cielo y el infierno (con `HellBounds`). `ServerStorage.MapAssets`: modelos del Creator Store (sin scripts).

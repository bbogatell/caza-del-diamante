# Arquitectura (dónde está cada cosa en Studio)

> Si cambias algo de aquí, actualiza este documento.

## Servidor: `ServerScriptService.DiamondServer`
| Script | Qué hace |
|---|---|
| `Main` (Script) | Punto de entrada: crea los remotes, gestiona la entrada de jugadores, el golpe de pala (cavar), el golpe a otros jugadores (`Hit`), las peticiones (`Request`: tienda, diario, ajustes, Debug), los comandos de chat y el ranking. |
| `Data` | Perfiles en DataStore `DiamondHunt_Player_v2` (coins, level, streak, passes, `base` (pedestales), `speed` (mejoras), settings…; al cargar borra los talismanes antiguos). Los publica como **atributos del jugador** (`Coins`, `Level`, `Settings`…). Ranking `DiamondHunt_Level_v1`. |
| `Plots` | Asigna a cada jugador una de las 8 parcelas del lobby (su **base**), el título flotante y el decorado por nivel de pala (`PlotDecor`). Ya no hay terreno ni se cava (`hit` devuelve `noDig`). |
| `PlotDecor` | Decoración de cada parcela por nivel (30 niveles, `build(plotModel, level)`). |
| `Shovels` | Crea la herramienta (Tool) de la pala a partir de `ReplicatedStorage.ShovelLook`. |
| `Lane` | **Carril de 15 parcelas compartidas**: terreno de los hoyos (`Config.PLOTS`), cavar (pala 2N−1 o mejor, monedas `Config.DIG_VALUE`), regenerar (cada `LANE.regenTime` o al cavar el 80 %, con aviso y sacando a los de dentro), textos de los arcos y carteles con la pala. Gancho `Lane.onDig` para los fósiles. |
| `Fossils` | Fósiles: salen al cavar (`Lane.onDig`), sueltos en `workspace.Fossils` con «Coger», llevar encima de la cabeza (atributos `Carrying`, `CarryWeight`), golpes que los tiran, entrega en la base, evento de fósil raro (uno por servidor, atributo `FossilEvent`) y `rollCreature` (qué bicho sale). |
| `Bases` | Bases (las parcelas del lobby): suelo y 10 pedestales, fósiles abriéndose (tiempo real, también sin conexión), eclosión, monedas por segundo de los bichos, vender, cartel. Guardado en `p.base.slots`. |
| `Looks` | Modelos de fósiles y bichos: el final de `ServerStorage.Models.Fosiles/Bichos.<id>` o uno provisional (usa los constructores de `LaneThemes`). |
| `Event` | El evento: barrera, campo, diamante escondido, recoger el diamante y ganador entre servidores. |
| `Finale` | Cinemática final del servidor y paso al infierno (`ServerStorage.Finale`). |

## Cliente: `StarterPlayer.StarterPlayerScripts`
| Script | Qué hace |
|---|---|
| `DiamondClient.Main` | Entrada del cliente: UI, controles de la pala (elige entre cavar y pegar), respuestas a los avisos del servidor, música, correr, mejoras de velocidad. |
| `DiamondClient.UIKit` | Componentes de UI, **lista de sonidos** (`UI.SOUNDS`) e iconos, grupos de sonido (música/efectos). |
| `DiamondClient.HUD` / `Menus` / `Fx` / `Cinematic` | Interfaz fija, ventanas (tienda, diario, ajustes), efectos de pantalla y cinemática final. |
| `ShovelFx`, `PlotFx`, `StatueBoard` | Animaciones visuales (piezas que flotan en palas y parcelas, cartel del diamante del lobby). |
| `LaneFx` | Ambiente de cada parcela al entrar (tinte, niebla, noche), desde `Config.PLOTS[n].sky`. |
| `BaseFx` | Cuenta atrás encima de los fósiles de las bases, grietas y temblor en el último 10 %. |
| `DebugLevelKey` | **Solo Studio:** la tecla E sube de nivel para probar. |

## Compartido: `ReplicatedStorage`
- `Config`: **casi todos los números del juego**: carril y parcelas (`LANE`, `PLOTS`), palas (`SHOVELS`), monedas por cavar (`DIG_VALUE`), base, fósiles, eventos, velocidad, diario, Robux. Hijos: `Config.Creatures` (los 198 bichos) y `Config.Fossils` (13 rarezas y 60 fósiles).
- `DigAnim`: animación de cavar (de una animación de Blender, 19 fotogramas), postura al llevar la pala y animación de pegar.
- `ShovelLook`: modelos de las 30 palas (piezas).
- `Remotes` (avisos nuevos por `Push`: `FossilFound`, `FossilPicked`, `FossilDropped`, `FossilFell`, `FossilDelivered`, `RareFound`, `FossilEvent`, `Hatched`, `Sold`, `RegenWarn`): `Swing` (cavar), `Hit` (pegar), `Push` (servidor → cliente), `Request` (peticiones).
- `Assets`: diamante y otros.

## Mapa: `workspace.Map`
- `Lobby` (estilo studs, sin árboles): `Floor` (baldosas con textura de studs, top y=18, huecos en los 8 hoyos y en la escalera al campo), `Cliffs` (paredes de piedra de bloques, `Tier4` lejano, `Mine` al fondo), `Props` (barandilla, rodapié, faroles, jardineras, estandartes, cascada, marcos de los hoyos), estatua del diamante con cartel, tienda, diario, rankings, `PlotFrames` (8 parcelas en 2 filas, delante = +Z), `Bounds` (barreras invisibles). Lo antiguo está guardado en `ServerStorage.LobbyBackup`.
- `Lane` (gran cambio): `Gateway` (portón del fondo del lobby), `Plot01`…`Plot15` (cada una: `Floor`, `Cliffs` con barreras invisibles, `Arch`, `ShovelSign`, `Ambience`, `Decor`) y `FieldEnd` (plaza de llegada al campo, montañas y barreras). Se genera en Edit con `ServerStorage.LaneKit` + `ServerStorage.LaneThemes`: `require(game.ServerStorage.LaneKit).buildPlot(n)` rehace una parcela.
- `Meadow`: prado de studs donde antes estaba el campo.
- `Field`: campo del evento con barrera (±122), **al final del carril** (centro `Config.FIELD_CENTER` = z −3208, girado 180°). `Field.StudRing`: baldosas de studs de todo lo que rodea la barrera (franja de la valla, talud del sur, lados y norte); dentro de la barrera sigue el terreno real (se excava en el evento). `Field.Walkway.StudFence`: valla y farolas de bloques + `FenceCollider` invisibles. Copias: `ServerStorage.FieldRingBackup` (terreno), `ServerStorage.FieldPropsBackup` (cartel, arco, escalera y valla originales).
- **Regla de estilo:** solo el interior de las parcelas y el campo dentro de la barrera llevan material realista; todo lo demás, textura de studs `rbxassetid://6348166067`.
- `workspace.Mountains` (fuera de `Map`): montañas de fondo de bloques con studs (hierba/roca/nieve), solo decorado (sin colisión). `Mountains.Fill`: bloques que tapan restos de terreno detrás de las paredes del lobby y en las esquinas. Sustituyen al terreno liso de alrededor; copia del terreno original en `ServerStorage.MountainsBackup`. `Finale.buildHell` las borra.
- `ServerStorage.Models.Bichos|Fosiles|Palas`: aquí se dejan los modelos finales con el id como nombre; si no hay, el juego genera uno provisional.
- **StreamingEnabled** está activado: en el cliente, buscar las piezas del mapa con `WaitForChild`/`FindFirstChild`.
- `ServerStorage.Finale`: plataforma del cielo y el infierno (con `HellBounds`). `ServerStorage.MapAssets`: modelos del Creator Store (sin scripts).

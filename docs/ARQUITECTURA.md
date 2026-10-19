# Arquitectura (dónde está cada cosa en Studio)

> Si cambias algo de aquí, actualiza este documento.

## Servidor: `ServerScriptService.DiamondServer`
| Script | Qué hace |
|---|---|
| `Main` (Script) | Punto de entrada: crea los remotes, gestiona la entrada de jugadores, el golpe de pala (cavar), el golpe a otros jugadores (`Hit`), las peticiones (`Request`: tienda, diario, ajustes, Debug), los comandos de chat y el ranking. |
| `Data` | Perfiles en DataStore `DiamondHunt_Player_v2` (coins, level, streak, passes, `base` (pedestales), `speed` (mejoras), settings…; al cargar borra los talismanes antiguos). Los publica como **atributos del jugador** (`Coins`, `Level`, `Settings`…). Ranking `DiamondHunt_Level_v1`. |
| `Plots` | Asigna a cada jugador una de las 8 parcelas del lobby (su **base**) y el título flotante. Sin decorado por nivel (`PlotDecor` ya no se usa) ni terreno; no se cava (`hit` devuelve `noDig`). |
| `PlotDecor` | Decoración de cada parcela por nivel (30 niveles, `build(plotModel, level)`). |
| `Shovels` | Crea la herramienta (Tool) de la pala a partir de `ReplicatedStorage.ShovelLook`. |
| `Lane` | **Carril de 15 parcelas compartidas**: terreno de los hoyos (`Config.PLOTS`), cavar (pala 2N−1 o mejor, monedas `Config.DIG_VALUE`), regenerar (cada `LANE.regenTime` o al cavar el 80 %, con aviso y sacando a los de dentro), textos de los arcos y carteles con la pala. Gancho `Lane.onDig` para los fósiles. |
| `Fossils` | Fósiles: salen al cavar (`Lane.onDig`), sueltos en `workspace.Fossils` con «Coger», llevar encima de la cabeza (atributos `Carrying`, `CarryWeight`), golpes que los tiran, entrega en la base, evento de fósil raro (uno por servidor, atributo `FossilEvent`) y `rollCreature` (qué bicho sale). |
| `Bases` | Bases (las 8 parcelas del lobby, 50×50, iguales): el jugador deja el fósil donde quiera del suelo (`place`), se abre con el tiempo (también sin conexión), «abrir ya» con Robux (`requestOpen`/`grantOpen`), eclosión, monedas por segundo, vender, cartel. Guardado en `p.base.slots` con la posición `ox`/`oz`. |
| `Looks` | Modelos de fósiles y bichos: el final de `ServerStorage.Models.Fosiles/Bichos.<id>` o uno provisional (usa los constructores de `LaneThemes`). |
| `Items` | Objetos de la mochila: **Bate** (gratis, golpea al de delante; es lo que noquea, la pala ya no pega), **Alfombra Mágica** (pase; el modelo bajo los pies al equiparla), **Trampas de Oso** y **Poder de Hielo** (se gastan, `p.items`). `Items.stun` deja quieto a un jugador unos segundos. |
| `Training` | **Velocidad entrenada** (como «Roba un huevo»): la cinta de correr de cada jugador delante de su base (11 niveles, cada uno con su aspecto), el cartel de mejora (dinero / Robux), los pasos que suman velocidad, los rastros (multiplican y se ven detrás) y los multiplicadores de Robux. Guardado en `p.training`. |
| `Event` | El evento: barrera, campo, diamante escondido, recoger el diamante y ganador entre servidores. |
| `Finale` | Cinemática final del servidor y paso al infierno (`ServerStorage.Finale`). |

## Cliente: `StarterPlayer.StarterPlayerScripts`
| Script | Qué hace |
|---|---|
| `DiamondClient.Main` | Entrada del cliente: UI, la pala (solo cava), respuestas a los avisos del servidor, música y el **movimiento** (siempre corres a la velocidad que has entrenado (`Config.walkSpeedOf(SpeedStat)`), animación de correr a ritmo fijo y **sin inercia**: la velocidad horizontal es siempre la dirección que pulsas × tu velocidad, así que arranca y para en seco y los choques no te lanzan). |
| `DiamondClient.UIKit` | Componentes de UI, **lista de sonidos** (`UI.SOUNDS`) e iconos, grupos de sonido (música/efectos). |
| `DiamondClient.HUD` / `Menus` / `Fx` / `Cinematic` | Interfaz fija, ventanas, efectos de pantalla y cinemática final. La **tienda** (`Menus`): cabecera, categorías a la izquierda (Palas, Velocidad, Objetos, VIP, Monedas), artículo destacado y cuadrícula de tarjetas. En Studio, el atributo del jugador `DebugOpenMenu = "Shop:objetos"` abre una ventana. |
| `ShovelFx`, `PlotFx`, `StatueBoard` | Animaciones visuales (piezas que flotan en palas y parcelas, cartel del diamante del lobby). |
| `LaneFx` | Ambiente de cada parcela al entrar (tinte, niebla, noche), desde `Config.PLOTS[n].sky`. |
| `BaseFx` | Fósiles abriéndose en las bases: levitan, giran, brillan y sueltan partículas (más cuanto menos les queda), grietas y temblor en el último 10 %, cuenta atrás; esconde el «Abrir ya» a quien no es el dueño. |
| `TreadFx` | Subirse a tu cinta: el personaje corre sin moverse y la cinta se mueve (atributo local `OnTreadmill`). |
| `CarpetFly` | Vuelo con la alfombra mágica (LinearVelocity + AlignOrientation en el personaje, límite de altura). |
| `DebugLevelKey` | **Solo Studio:** la tecla E sube de nivel para probar. |

## Compartido: `ReplicatedStorage`
- `Config`: **casi todos los números del juego**: carril y parcelas (`LANE`, `PLOTS`), palas (`SHOVELS`), monedas por cavar (`DIG_VALUE`), base, fósiles, eventos, velocidad, diario, Robux. Hijos: `Config.Creatures` (los 198 bichos) y `Config.Fossils` (13 rarezas y 60 fósiles).
- `DigAnim`: animación de cavar (de una animación de Blender, 19 fotogramas), postura al llevar la pala y animación de pegar.
- `ShovelLook`: modelos de las 30 palas (piezas).
- `Remotes` (avisos nuevos por `Push`: `FossilFound`, `FossilPicked`, `FossilDropped`, `FossilFell`, `FossilDelivered`, `RareFound`, `FossilEvent`, `Hatched`, `Sold`, `RegenWarn`): `Swing` (cavar), `Hit` (pegar), `Push` (servidor → cliente), `Request` (peticiones).
- `Assets`: diamante y otros.

## Mapa: `workspace.Map`
- `Lobby` (estilo studs, sin árboles): `Floor` (baldosas con textura de studs, top y=18, huecos en los 8 hoyos y en la escalera al campo), `Cliffs` (paredes de piedra de bloques, `Tier4` lejano, `Mine` al fondo), `Props` (barandilla, rodapié, faroles, jardineras, estandartes, cascada, marcos de los hoyos), estatua del diamante con cartel, tienda, diario, rankings, `PlotFrames` (8 bases de 50×50 en 2 filas, x ±33/±95, z −310/−426, delante = +Z), `Bounds` (barreras invisibles). Lo antiguo está guardado en `ServerStorage.LobbyBackup`.
- `Lane` (gran cambio): `Gateway` (portón del fondo del lobby), `Plot01`…`Plot15` (cada una: `Floor`, `Cliffs` con barreras invisibles, `Arch`, `ShovelSign`, `Ambience`, `Decor`) y `FieldEnd` (plaza de llegada al campo, montañas y barreras). Se genera en Edit con `ServerStorage.LaneKit` + `ServerStorage.LaneThemes`: `require(game.ServerStorage.LaneKit).buildPlot(n)` rehace una parcela.
- `FrontMountains`: montañas de studs donde antes estaba el campo (delante del lobby). `SkyLimit`: techo invisible a y = 222 en todo el mapa.
- `Field`: campo del evento con barrera (±122), **al final del carril** (centro `Config.FIELD_CENTER` = z −3208, girado 180°). `Field.StudRing`: baldosas de studs de todo lo que rodea la barrera (franja de la valla, talud del sur, lados y norte); dentro de la barrera sigue el terreno real (se excava en el evento). `Field.Walkway.StudFence`: valla y farolas de bloques + `FenceCollider` invisibles. Copias: `ServerStorage.FieldRingBackup` (terreno), `ServerStorage.FieldPropsBackup` (cartel, arco, escalera y valla originales).
- **Regla de colisiones:** los adornos se atraviesan (CanCollide desactivado) para no chocar corriendo; solo chocan los suelos, las paredes de los acantilados, las barreras invisibles, el techo y lo imprescindible del campo.
- **Regla de estilo:** solo el interior de las parcelas y el campo dentro de la barrera llevan material realista; todo lo demás, textura de studs `rbxassetid://6348166067`.
- `workspace.Mountains` (fuera de `Map`): montañas de fondo de bloques con studs (hierba/roca/nieve), solo decorado (sin colisión). `Mountains.Fill`: bloques que tapan restos de terreno detrás de las paredes del lobby y en las esquinas. Sustituyen al terreno liso de alrededor; copia del terreno original en `ServerStorage.MountainsBackup`. `Finale.buildHell` las borra.
- `ServerStorage.Models.Bichos|Fosiles|Palas`: aquí se dejan los modelos finales con el id como nombre; si no hay, el juego genera uno provisional.
- **StreamingEnabled** está activado: en el cliente, buscar las piezas del mapa con `WaitForChild`/`FindFirstChild`.
- `ServerStorage.Finale`: plataforma del cielo y el infierno (con `HellBounds`). `ServerStorage.MapAssets`: modelos del Creator Store (sin scripts).

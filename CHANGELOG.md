# Registro de cambios

> El más nuevo arriba. Formato en [`CLAUDE.md`](CLAUDE.md).

## 2026-10-19 · seguo970 (Claude) · Vuelven los fósiles al cavar en las parcelas
**Qué:** al cavar en las parcelas del carril vuelve a poder salir un fósil (6 % por palada que saca tierra), con la rareza según la tabla de cada parcela y luego I/II/III, como antes. Sale suelto en el suelo con el aviso «¡FÓSIL …! pulsa E para cogerlo». **La tierra se sigue dando** en cada palada y la Máquina de Fósiles sigue igual: ahora son dos maneras de conseguir fósiles.
**Dónde:** `DiamondServer.Fossils` → `Fossils.onDig` (vuelve a usar `Fossils.roll(n)` y `Config.FOSSIL.chance`).
**Probado:** en Play: 60 paladas en la parcela 1 → +164 de tierra y 1 fósil Común suelto en el suelo. Sin errores. No probado: cogerlo con E (código que no se ha tocado).
**Notas:** la probabilidad se cambia en `Config.FOSSIL.chance` (0,06).

## 2026-10-19 · bbogatell (Claude) · Cavar da tierra, Máquina de Fósiles, dejar el fósil con clic y retoques del HUD
**Qué:**
- **Cavar ya no da monedas ni fósiles al azar: da TIERRA** (más por bloque cuanto más avanzada es la parcela: de 1 a 800). La tierra vuela hacia su contador del HUD.
- **Máquina de Fósiles** en el lobby (entre la estatua y las bases): canjeas tierra por un fósil de la **rareza que elijas**, si está desbloqueada (se desbloquea al poder cavar en la primera parcela donde sale) y si te llega la tierra (Común 60 … Divino 2M; Brainrot 15K, Mutante 150K). Sale I/II/III al azar (60/30/10) directamente a tus manos, y hay que estar al lado de la máquina. El fósil raro de los eventos sigue enterrado en el carril.
- **El fósil se deja haciendo clic** en el suelo de tu base (con un círculo que sigue al ratón y el aviso «Haz clic donde quieras dejar el fósil»); ya no hay botón ni tecla F.
- HUD: botón de Tienda **verde**; velocidad y monedas **más pequeñas** y nueva fila de **tierra**; **quitado el botón Base**; el **contador de arriba** sale grande al entrar y a los 4 s se encoge hacia arriba.
- **Arreglado:** al quitar la compra antigua de velocidad se habían borrado sin querer los manejadores del servidor para dejar fósiles en la base; vuelven a estar.
**Dónde:** `Config.DIRT` (tierra por bloque, precios, `unlockPlot`, `Config.rarityUnlocked`), `Lane.dig` (tierra), `Fossils.buyFromMachine` y `Fossils.place(pos)`, `Bases.place(..., clicked)`, `Data` (`p.dirt`, atributo `Dirt`), `Main` (`BuyFossil`, `PlaceFossil` con posición, comando `/tierra`); mapa `Lobby.FossilMachine`; cliente `Main` (clic para dejar, tierra al cavar, abrir la máquina), `HUD`, `Menus` (ventana de la máquina).
**Probado:** en Play: una palada en la parcela 1 da 7 de tierra y 0 monedas; Épico bloqueado con la pala 1; lejos de la máquina no deja canjear; al lado sale un fósil Raro a las manos; clic fuera de la base rechazado y dentro se deja en el punto exacto; capturas del HUD. Sin errores.
**Notas:** `Config.DIG_VALUE` ya no existe. Los precios en tierra son una propuesta inicial: hay que probarlos jugando.

## 2026-10-19 · bbogatell (Claude) · La velocidad se entrena en una cinta de correr (copiado de «Roba un huevo»)
**Qué:** la velocidad **ya no se compra: se entrena**, como en «Roba un huevo» (datos de varias guías de fans; los números cambian algo entre ellas):
- **Cinta de correr** delante de cada base (al lado de la puerta). Súbete: el personaje se queda mirando al frente y **corre sin moverse** mientras la cinta se mueve. **Cada paso (2 por segundo) suma velocidad**, con «👟 +N» flotando. Para bajarte, pulsa una dirección.
- **11 niveles de cinta, cada uno con su aspecto**: Básica (+2 por paso, gratis), Sci-Fi (+5, 15K), Fuego (+12, 250K), Famoso (+30, 5M), Dorada (+80, 120M), Congelada (+100, 3B), Bloque de la Suerte (+200, 75B), Hacker (+500, 2T), Demoníaca (+1K, 50T), Angelical (+2K, 1Qa) y Astral (+3K, 15Qa). Al lado, un **cartel «Mejora · Nivel N > Nivel N+1»** con el precio en dinero y en Robux (49 … 1.299 R$; el 8 → 9 cuesta 799, como en la referencia). Se mejora con E (dinero) o R (Robux).
- **Rastros** (tienda, en orden, con dinero): multiplican cada paso de ×1,5 a ×20 (100 … 5Qa) y se ven detrás del personaje.
- **Multiplicadores de Robux** para siempre: x2 por 3 R$, x4 por 9, x8 por 29, x16 por 79, x32 por 199, x64 por 399 y x128 por 799. La oferta azul del HUD enseña siempre el siguiente.
- **De velocidad a carrera:** empiezas a 16 studs/s; 900 → 28, 10K → 55, 100K → 87, 1M → 119, 1B → 218, 20B → 260; tope 400. Fórmula: 16 + 14,23 · ln(1 + v/700). El HUD enseña la velocidad entrenada (p. ej. «620K»).
- Fuera lo antiguo: correr más rápido con monedas, el «+1 nivel» y el pase «Correr VIP». Quien los tuviera empieza a entrenar desde 0 (las monedas y la pala se quedan).
**Dónde:** `Config.TRAINING` (cintas, rastros, multiplicadores, pasos por segundo), `Config.walkSpeedOf`, `Config.perStep`, productos generados `Config.PRODUCTS.Tread2-11` y `SpeedX2…SpeedX128` (IDs a 0). Servidor nuevo: `DiamondServer.Training` (modelo de cada cinta, cartel con avisos, pasos, mejoras, rastros, multiplicadores). `Data`: `p.training` (atributos `SpeedStat`, `Tread`, `Trail`, `SpeedMult`). `Main`: `UpgradeTread`, `BuyTrail`, recibos, comando `/velocidad`. Cliente nuevo: `StarterPlayerScripts.TreadFx` (subirse y correr en la cinta, cinta moviéndose); `Main` (velocidad desde `SpeedStat`, avisos `Step` y `TreadUp`), `HUD` (velocidad entrenada y oferta del siguiente multiplicador), `Menus` (pestaña Velocidad: cinta destacada, cinta con Robux, rastro y multiplicadores).
**Probado:** en Play: en la cinta 2 pasos por segundo a +2 cada uno; mejorar 7 veces con dinero hasta la Hacker (negra y verde neón); rastro y x2 → 1.500 por paso (500 × 1,5 × 2); la tienda enseña el siguiente nivel a 50T o 799 R$. Sin errores.
**Notas:** crear en el Creator Dashboard los productos de las 10 mejoras de cinta y de los 7 multiplicadores y poner sus IDs en `Config.TRAINING`. No he copiado las pociones ni los packs de «1.000 millones de velocidad» de «Roba un huevo».

## 2026-10-19 · bbogatell (Claude) · Movimiento sin inercia de verdad: arranca y para en seco
**Qué:** al dejar de pulsar, el personaje **se para de golpe** (antes, a mucha velocidad, se deslizaba un rato) y al pulsar **arranca ya a toda velocidad**, como en «Roba un huevo». Girar también es instantáneo. Sigue cortándose lo que añadan los choques y los golpes del bate siguen empujando.
**Dónde:** cliente `DiamondClient.Main`, apartado «Movement»: la velocidad horizontal es siempre la dirección que pulsas × tu velocidad, o cero si no pulsas nada.
**Probado:** en Play a velocidad 600: de 0 al máximo en 0,014 s (un fotograma) y al soltar W se para en 0 s, sin deslizarse (0 studs).

## 2026-10-19 · bbogatell (Claude) · Velocidad sin inercia (como «Roba un huevo»), obstáculos atravesables y HUD nuevo
**Qué:**
- **Velocidad como en «Roba un huevo»:** siempre corres a tu velocidad, sin mantener Shift, y la animación es siempre la misma de correr, a un ritmo fijo. **Sin inercia:** si al chocar el motor de físicas te lanza, esa velocidad extra se corta en el mismo fotograma, así que ya no sales volando contra las paredes. Tampoco te caes ni haces el muñeco de trapo al chocar. Los golpes del bate siguen empujando (0,7 s de margen).
- **Se atraviesa todo lo que estorba al correr** (1.550 piezas): arcos, carteles y adornos de las 15 parcelas, bordillos, barandillas y muretes de la llegada al campo, columnas del portón; en el lobby, vallas, postes y puertas de las bases, barandillas, flores, tienda, cofre, rankings, estatua y bordillos; en el campo, la valla visible, el arco, el marcador y los pilones. Siguen chocando los suelos, las paredes de los acantilados, las barreras invisibles, el techo, la escalera del campo y la barrera del evento.
- **HUD nuevo, copiado de la referencia:**
  - Izquierda, a media altura: botón grande rojo «🛒 Tienda» y debajo la oferta azul «⚡ Correr VIP x1,3 · SOLO 299 R$», que desaparece si ya lo tienes.
  - Abajo a la izquierda, en grande: tu pala, tu velocidad (zapatilla con un «+» que abre la tienda de velocidad) y tus monedas en verde.
  - Derecha: botones cuadrados **Base** (nuevo: te lleva a tu base, salvo si llevas un fósil), Diario, VIP, Invitar y Ajustes.
**Dónde:** cliente `DiamondClient.Main` (apartado «Movement»: velocidad, animación, anti-inercia; `knockUntil` en `Knock`), `DiamondClient.HUD` (columna izquierda, estadísticas y botones de la derecha nuevos; `HUD.promoBtn`, `speedBtn`, `levelBtn`, `baseBtn`); servidor `Main` (`GoBase`). Mapa: `CanCollide = false` en los adornos (lista arriba); `ServerStorage.LaneKit.buildPlot` lo aplica solo al rehacer una parcela.
**Probado:** en Play, corriendo a 600 de lado contra la pared del carril durante 3 s: te paras en la pared y no subes ni un stud. «Base» te lleva a tu base. Capturas del HUD. Sin errores.
**Notas:** el ajuste «Correr con Shift» ya no hace nada (siempre corres).

## 2026-10-19 · bbogatell (Claude) · Fuera el prado, techo invisible, objetos (bate, alfombra, trampas, hielo) y tienda nueva
**Qué:**
- **Quitado el prado** delante del lobby (donde estaba el campo del diamante): ahora hay **montañas de studs** que suben desde la barandilla, y una barrera invisible en el borde del lobby.
- **Techo invisible** en todo el mapa a y = 222: nadie puede subir demasiado (la alfombra además se para en 210).
- **Bate** (gratis, todos lo tienen): ahora **se noquea con el bate, no con la pala**. Golpea al jugador que tengas delante, lo empuja y, si lleva un fósil, le quita «vida» (el daño de tu pala).
- **Alfombra Mágica** (pase de Robux): al equiparla aparece bajo tus pies y **vuelas** hacia donde mires: WASD o el joystick, Espacio para subir, Ctrl o Q para bajar, Shift para el turbo; en móvil, botones ▲ ▼.
- **Trampas de Oso** (Robux, se gastan: packs de 3 y 10): se dejan en el suelo delante de ti y quien las pise (menos tú) **se queda atrapado 5 s**; como mucho 5 tuyas a la vez y duran 3 min.
- **Poder de Hielo** (Robux, se gasta: packs de 3 y 10): **congela 5 s** al jugador más cercano (18 studs), con un rayo y un bloque de hielo.
- **Tienda rehecha**, siguiendo las tiendas de simuladores de Roblox: cabecera con el título, tus monedas y el botón de cerrar; a la izquierda las categorías con icono y nombre (**Palas, Velocidad, Objetos, VIP, Monedas**); en cada una, un **artículo destacado** grande (la siguiente pala, correr más rápido, la alfombra, x2 monedas, el mejor pack) y debajo una **cuadrícula de tarjetas** con su estado (equipada, tuya, precio en verde o rojo, bloqueada, «tienes N»).
- Al aparecer en tu base miras hacia fuera y la puerta es más alta, para que no tape la cámara.
**Dónde:** mapa: `Map.Meadow` borrado, `Map.FrontMountains` (140 bloques), `Map.SkyLimit` (techo), barrera nueva en `Map.Bounds` (z −139); bases: `GateTop`/`GatePost` más altos y `Spot` mirando a +Z. `Config.ITEMS`, `Config.PASSES.MagicCarpet`, `Config.PRODUCTS.Traps3/Traps10/Freeze3/Freeze10` (IDs a 0). Servidor nuevo: `DiamondServer.Items` (herramientas, golpe del bate, trampas, hielo, `stun`, alfombra). `Main`: herramientas al aparecer, compras, el remote `Hit` de la pala ya no hace nada, comando `/objetos`. `Data`: `p.items` (atributos `Traps`, `FreezeCharges`). Cliente: `StarterPlayerScripts.CarpetFly` (vuelo), `Main` (la pala solo cava, avisos `Stunned` y `FreezeBeam`), `Menus` (tienda nueva y gancho de prueba `DebugOpenMenu`).
**Probado:** en Play: `/objetos` da las 4 herramientas; la alfombra sube hasta 210 y vuela por el carril; la trampa se queda en el suelo y descuenta una; el bate hace su animación; compras simuladas de la alfombra y las trampas; capturas de las pestañas Palas, Velocidad y Objetos. Sin errores. **Sin probar con 2 jugadores:** que la trampa y el hielo atrapen a otro y que el bate empuje y tire el fósil.
**Notas:** crear en el Creator Dashboard el pase «Alfombra Mágica» y los productos de trampas y hielo, y poner sus IDs en `Config`.

## 2026-10-19 · bbogatell (Claude) · Velocidad máxima al correr: 600
**Qué:** el nivel 100 de correr más rápido baja de 900 a **600**. Siguen siendo 100 niveles, los 10 primeros igual (30 → 55); el resto de la curva se suaviza: nivel 25 = 101, 50 = 218, 75 = 384, 90 = 508. Los precios no cambian.
**Dónde:** `Config.SPEED.run.curve`.
**Probado:** en Play: nivel 100, WalkSpeed 600 y 605 studs recorridos en 1 s.

## 2026-10-19 · bbogatell (Claude) · Correr más rápido: 100 niveles, el 100 a 900
**Qué:** correr más rápido pasa a **100 niveles**. Los 10 primeros igual (30 → 55); luego la curva se acelera hasta **900 en el nivel 100** (nivel 25 = 110, 50 = 278, 75 = 541, 90 = 745). Precios: nivel 1 = 4.000, 10 = 53,5K, 25 = 4M, 50 = 5,4B, 75 = 7,3T, 90 = 551T, 100 = 9,8Q (más o menos un día de lo que generan los mejores bichos).
**Dónde:** `Config.SPEED.run` (`max` 100, `curve`, `price`).
**Probado:** en Play: comprar los 100 niveles seguidos (el 101 dice «nivel máximo»); corriendo, WalkSpeed 900 y 907 studs recorridos en 1 s.

## 2026-10-19 · bbogatell (Claude) · Correr más rápido: 50 niveles (el 50, exagerado)
**Qué:** correr más rápido pasa de 10 a **50 niveles**. Los 10 primeros siguen igual (30 → 55); desde el 11 cada nivel sube más que el anterior: nivel 20 = 90, 30 = 144, 40 = 217 y **50 = 310** (10 veces lo normal). Con el pase Correr VIP, ×1,3. Precios nuevos que crecen más despacio para que el último encaje con la economía de las palas: nivel 1 = 4.000, 10 = 325K, 20 = 43M, 30 = 5,7B, 40 = 754B, 50 = 99,8T.
**Dónde:** `Config.SPEED.run` (`max` 50, `curve` = velocidad de cada nivel, `price`), `Config.speedOf` (usa `curve` si existe).
**Probado:** en Play: comprar niveles seguidos hasta el 49; corriendo, WalkSpeed 300 y 305 studs recorridos en 1 s.

## 2026-10-19 · bbogatell (Claude) · Solo se mejora correr, pestaña «Velocidad» en la tienda y comando /dinero
**Qué:** ya no se puede comprar andar más rápido (andar se queda en 16); solo **correr más rápido** (10 niveles con monedas, +1 nivel con Robux) y el pase **Correr VIP** (×1,3, ahora solo al correr). La velocidad tiene su **propia pestaña en la tienda** (icono del brazo, entre Palas y VIP) en vez de estar dentro de VIP. Comando nuevo **`/dinero <cantidad>`** para darte monedas (admite `5000`, `5k`, `2.5m`, `1b`, `3t`).
**Dónde:** `Config.SPEED.walk` (máx. 0), `Config.speedOf` (el pase solo para correr), quitado `Config.PRODUCTS.SpeedWalk`, `Config.PASSES.SpeedPass` renombrado; cliente `Menus` (pestaña `velocidad`, la de VIP queda con x2 Monedas y los packs); servidor `Main` (comando `/dinero`).
**Probado:** en Play: `/dinero 2.5m` por el chat da 2.500.000; comprar andar dice «nivel máximo»; correr sí; con el pase andar sigue a 16; la pestaña Velocidad tiene sus 3 tarjetas y en VIP ya no hay velocidad.
**Notas:** quien hubiera comprado niveles de andar los conserva guardados, pero ya no hacen nada.

## 2026-10-19 · bbogatell (Claude) · Bases más grandes e iguales, fósiles en el suelo donde quieras y «abrir ya» con Robux
**Qué:**
- **Bases nuevas, iguales para todos:** 50×50 studs (antes el hoyo era de 28×28), una plataforma de studs con borde blanco, puerta en la parte delantera, postes con farol en las esquinas y el cartel del dueño en alto. **Quitado el decorado por nivel de pala** (`PlotDecor` ya no se usa). Recolocadas para que quepan: x ±33 y ±95, z −310 y −426. Apareces dentro de tu base.
- **El fósil se deja donde quieras de tu base:** al entrar en ella con un fósil sale el botón **«📍 DEJAR FÓSIL AQUÍ [F]»** y se deja en el suelo delante de ti (ya no se entrega solo). Caben 12 cosas y tiene que haber 5 studs entre una y otra. El bicho sale en el mismo sitio.
- **Animación al abrirse:** el fósil **levita** un poco, **gira despacio**, **se ilumina** cada vez más y **suelta partículas** (trocitos que caen y una neblina de su color), cada vez más fuerte según pasa el tiempo; en el último 10 % se agrieta y tiembla. Cuenta atrás encima.
- **Abrir ya con Robux:** al acercarte a un fósil tuyo sale «⚡ Abrir ya (Robux)» (tecla R; solo lo ve el dueño). El precio depende de lo que le queda: 9 R$ (< 10 min), 29 (< 1 h), 79 (< 6 h), 149 (más). Los IDs están a 0: en Studio se simula y en el juego publicado dice «Próximamente».
**Dónde:** mapa `Lobby.PlotFrames.Plot1-8` rehecho (`Platform`, `Border`, `Post`, `Lamp`, `GatePost`, `GateTop`, marcadores invisibles `Floor` y `Spot`); copia de las antiguas en `ServerStorage.PlotFramesBackup`; 52 baldosas tapando los huecos de los hoyos viejos. `Config.BASE` (`slots` 12, `half` 25, `floorY` 19, `minGap` 5), `Config.PRODUCTS.OpenNow1-4` y `Config.openNowProduct`. Servidor: `Bases` reescrito (posiciones `ox`/`oz` en `p.base.slots`; las partidas guardadas con pedestales se colocan solas en cuadrícula; `requestOpen`/`grantOpen`), `Fossils.place` (atributo `InOwnBase`), `Plots` (sin decorado ni terreno), `Main` (`PlaceFossil`, recibos de `OpenNow`). Cliente: `Main` (botón y tecla F), `BaseFx` reescrito (levitar, girar, brillo, partículas, grietas).
**Probado:** en Play: apareces en tu base; fuera de la base no sale el botón y dentro sí; dejar un fósil (queda delante, flotando, con luz y partículas); no deja poner otro a menos de 5 studs; «abrir ya» simulado → sale el bicho (Velocirraptor). Captura con 4 fósiles abriéndose. Sin errores.
**Notas:** crear los 4 productos «Abrir ya» en el Creator Dashboard y poner sus IDs en `Config.PRODUCTS.OpenNow1-4`.

## 2026-10-19 · bbogatell (Claude) · Arreglada de verdad la pala que colgaba de la mano (pala repetida al entrar)
**Qué:** la entrada anterior se equivocaba: el problema **no era StreamingEnabled**. Desde el gran cambio el servidor tarda más en arrancar (rellena los 15 hoyos), así que el jugador que ya estaba dentro se procesaba **dos veces** (por `PlayerAdded` y por el bucle final de `Main`) y recibía **dos palas**. La primera se borraba pero dejaba en la mano una unión `RightGrip` vieja, y `DigAnim` movía esa en vez de la buena: la pala colgaba recta y la animación de cavar se veía mal. Arreglado por los dos lados y **StreamingEnabled vuelve a estar activado**.
**Dónde:** `DiamondServer.Main` (`onPlayer` solo una vez por jugador, tabla `joined`), `ReplicatedStorage.DigAnim` (`updateGrip` usa la `RightGrip` cuya pieza es el `Handle` de la herramienta que llevas y borra las que se han quedado sin pieza), `Workspace.StreamingEnabled = true`.
**Probado:** en Play, sin tocar nada desde que apareces: una sola `RightGrip`, la pala a 0,74 studs de la mano izquierda (antes 2,2) y cogida con las dos manos; igual a mitad de una palada. Con y sin streaming. Captura.

## 2026-10-19 · bbogatell (Claude) · La pala vuelve a ir cogida con las dos manos (StreamingEnabled desactivado)
**Qué:** desde el gran cambio la pala colgaba recta de la mano con la hoja en el suelo, y la animación de cavar se veía mal. La causa era **StreamingEnabled**: con él, el cliente ve la soldadura de la mano (`RightHand.RightGrip`) sin su pieza (`Part1` vacío), y `DigAnim` no puede colocar la pala en la mano izquierda. Lo he vuelto a desactivar y la pala vuelve a estar como antes.
**Dónde:** `Workspace.StreamingEnabled = false`. No se ha tocado `DigAnim` ni `ShovelLook`. Los arreglos para streaming (estatua `Persistent`, `WaitForChild`, botón «Superficie» calculado con `Config`) se quedan: no molestan.
**Probado:** en Play: la pala queda a 0,7 studs de la mano izquierda, como manda la animación (con streaming estaba a 2,2). Capturas antes y después.
**Notas:** si algún día se quiere StreamingEnabled (el brief lo pedía), antes hay que hacer que `DigAnim` no dependa de esa soldadura, por ejemplo con su propia soldadura creada en el cliente.

## 2026-10-19 · bbogatell (Claude) · Quitada la roca realista entre el portón y la parcela 1
**Qué:** detrás de la antigua pared del fondo del lobby quedaba terreno realista (roca, hasta y=34) que se veía al cruzar el portón del carril. Borrado, y también cualquier terreno por encima del suelo del carril fuera de los hoyos (plazas, caminos y acantilados de las 15 parcelas).
**Dónde:** terreno: x ±210, z −440…−576 (portón y plaza de la parcela 1); en cada parcela, la plaza y los lados con |x| > 68, de y 14 a 186. Los hoyos no se han tocado.
**Probado:** recorrido de todo el carril cada 4 studs: no queda terreno por encima de y=20 fuera de los hoyos; captura desde el portón.

## 2026-10-18 · bbogatell (Claude) · Gran cambio, fase 6: mejoras de velocidad
**Qué:** en la tienda (pestaña VIP, apartado «Velocidad») se compra con monedas **andar más rápido** y **correr más rápido** (10 niveles cada uno: andar 16 → 31, correr 30 → 55). Con Robux: **+1 nivel de andar**, **+1 nivel de correr** (productos) y el pase **Velocidad VIP** (×1,3 para siempre). Los IDs están a 0 (en Studio la compra se simula). Se guarda en el perfil (`p.speed`).
**Dónde:** `Config.SPEED` (precios y pasos), `Config.speedOf`, `Config.PASSES.SpeedPass`, `Config.PRODUCTS.SpeedWalk/SpeedRun`; servidor `Main` (`BuySpeed`, Robux y `ProcessReceipt`), `Data` (atributos `SpeedWalk`/`SpeedRun`); cliente `Menus` (tarjetas) y `Main` (velocidad real, menos el peso del fósil que llevas).
**Probado:** en Play: comprar 2 niveles de andar (cobra 2.500 + 11.500), +1 de correr y el pase simulados: velocidad 16 → 24,7. Sin errores.

## 2026-10-18 · bbogatell (Claude) · Gran cambio, fases 4 y 5: fósiles, bichos y bases
**Qué:**
- **Fósiles:** al cavar en el carril puede salir uno (6 % por palada): primero la rareza con la tabla de la parcela y luego I/II/III (60/30/10; 50/30/20 en la última parcela de cada rareza). Se coge con **E**, se lleva **encima de la cabeza** y frena según su peso (−10/−20/−30 %, raros −35 %). **No se venden.** Si te pegan con la pala le quitan «vida» (60; cada golpe resta el daño de la pala del que pega): a 0 se cae y cualquiera lo puede coger. También se cae si mueres o te vas.
- **Evento de fósiles raros (★/★★):** `/evento` (o el atributo `ReplicatedStorage.FossilEventRequest`, o `Config.FOSSIL_EVENT.schedule`) entierra **un solo fósil raro por servidor** en una parcela al azar, con un **haz de luz** hasta el cielo. El primero que cava al lado lo saca y se avisa a todo el servidor; mientras lo lleva tiene **contorno visible a través de las paredes**. Dan bichos dos rarezas más arriba y, según la ficha, bichos de Evento (parcelas 11-15, Eternos, Divinos, Pizza Dorada, Mutantes).
- **Bases:** las 8 parcelas del lobby son las bases (una por jugador): el hoyo se cierra con un suelo de studs y hay **10 pedestales** (el decorado por nivel de pala sigue alrededor). El fósil se entrega solo al entrar en tu base y ahí está **a salvo**. Se abre con su tiempo (10 s – 18 h) **aunque estés desconectado**, con cuenta atrás encima; en el último 10 % se agrieta y tiembla; al terminar explota y sale el **bicho** (I mitad baja, II cualquiera, III mitad alta + 10 % de la rareza siguiente; Divino repite y se queda el mejor; Brainrot/Mutante según su ficha). Los bichos **generan monedas cada segundo** (lo de `BICHOS_DINOSAURIOS.md` × `Config.CREATURE_INCOME_MULT`) y se pueden **vender** (mantener E: lo que generan en 60 s) para hacer sitio. El cartel de la base dice de quién es y cuánto genera.
- **Modelos provisionales:** fósiles (roca de studs del color de su rareza con hueso, huella, cráneo… en relieve; luz y partículas según el tipo; los raros con contorno) y bichos (dinosaurio de bloques con la forma que sugiere su nombre, colores y tamaño de su rareza, luz y partículas), con una etiqueta con su nombre real. Si existe `ServerStorage.Models.Fosiles.<id>` o `ServerStorage.Models.Bichos.<id>`, se usa ese modelo.
**Dónde:** `Config.Creatures` (198 bichos), `Config.Fossils` (13 rarezas, 60 fósiles con id, tamaño, tiempo, aspecto y reglas especiales), `Config.FOSSIL`, `Config.BASE`, `Config.FOSSIL_EVENT`; servidor nuevo: `DiamondServer.Fossils`, `DiamondServer.Bases`, `DiamondServer.Looks`; cambiados `Main` (arranque, golpes en el lobby y el carril —no en el campo—, comandos), `Data` (`p.base`), `Plots` (sin terreno ni minerales); cliente: `Main` (avisos), `StarterPlayerScripts.BaseFx` (cuenta atrás, grietas y temblor).
**Probado:** en Play: dar un fósil R-III, llevarlo (velocidad 16 → 11,2), entregarlo en la base, abrirlo (Iguano Pulgar, mitad alta), vender; evento: haz de luz, cavar hasta él, aviso, cogerlo, abrirlo (Poco común ★★ → Carno Toro, Épico); 59 paladas en la parcela 7 → 8 fósiles de sus rarezas; `/fosil C-III` por el chat. Sin errores. **Sin probar:** quitar fósiles a golpes con **2 jugadores**, la cuenta atrás y las grietas vistas en pantalla, y el guardado real (en Studio el DataStore está apagado).

## 2026-10-18 · bbogatell (Claude) · Gran cambio, fase 3: 30 palas nuevas, pala mínima por parcela y economía nueva
**Qué:** las 30 palas tienen los **nombres y rarezas de `PALAS.md`** (de Pala de Rama de Helecho a Pala Divina del Diamante; 10 rarezas, 3 palas cada una). Radio, ritmo y daño son los de antes; los **precios se han recalculado** para la economía de los bichos: abrir la parcela siguiente cuesta lo que generan 6 bichos típicos de tu parcela durante 4 min (parcela 1) … 2 h (parcela 14); las palas pares cuestan el 45 % de la impar siguiente (de 2.200 a 68T). **La parcela N pide la pala 2N−1 o mejor**: con una peor sale «¡DEMASIADO DURO!» y no se cava. Cavar en el carril da monedas (`Config.DIG_VALUE`, de 1 a 310M por bloque según la parcela). La tienda muestra qué parcela abre cada pala. Si alguien deja un modelo final en `ServerStorage.Models.Palas.<id>` (con una pieza `Handle`), se usa ese en vez del de `ShovelLook`.
**Dónde:** `Config.SHOVELS` (tabla escrita a mano, fácil de cambiar), `Config.DIG_VALUE`, `Config.shovelDamage` (lee la tabla), `DiamondServer.Lane.dig`, `DiamondServer.Shovels.build`, cliente: `Main` (avisos), `Menus` (tarjetas de la tienda), `HUD` (nombre de la pala), `DebugLevelKey`.
**Probado:** en Play: con la pala 1 se cava en la parcela 1 y da monedas; en la parcela 2 sale «demasiado duro»; comprar las palas 2 y 3 y cavar en la parcela 2. Sin errores.
**Notas:** quien tenía partida guardada conserva su pala y sus monedas. Las parcelas personales ya no pagan minerales escondidos.

## 2026-10-18 · bbogatell (Claude) · Gran cambio, fase 2: carril de 15 parcelas y el campo al final
**Qué:** detrás del lobby hay un **portón** («PARCELAS · FÓSILES», donde estaba la mina) que lleva a un **carril de 15 parcelas compartidas**, una detrás de otra (z −520 a −3040). Cada parcela: plaza con **arco** (número y nombre), **cartel con la pala necesaria** (texto + modelo 3D de la pala), hoyo de **terreno realista de 112×112×32** con los materiales del documento, caminos de studs a los lados, acantilados y montañas de studs con los colores de su tema, partículas de ambiente y su decorado (dodo gigante, nenúfares, amonites y gotas de ámbar, cañón con huellas, selva con braquiosaurio y cascada, bloques de hielo con mamuts, volcán humeante, puente-esqueleto de mosasaurio, arcos de costillas y calaveras, cuevas de cristal, templo con columnas y guardianes, islas flotantes, rocas flotantes y dragón fracturado, planetas y constelación, trono del T-Rex Galáctico con portal dorado). El decorado crece con el número de parcela. Al entrar en una parcela cambia el ambiente (tinte, niebla; noche en la 14). **El campo del diamante se ha movido al final del carril** (centro z −3208, girado para que la escalera dé al carril), con plaza de llegada, barandilla y montañas alrededor. Donde estaba el campo ahora hay un **prado de studs** con un estanque; cerrado el hueco de la escalera del lobby. Los hoyos se **regeneran** cada 5 min o al cavar el 80 %: aviso 8 s antes y quien esté dentro sale al borde. Activado **StreamingEnabled**.
**Dónde:** mapa nuevo `workspace.Map.Lane` (`Gateway`, `Plot01`…`Plot15` con `Floor`, `Cliffs`, `Arch`, `ShovelSign`, `Ambience`, `Decor`; `FieldEnd`) y `workspace.Map.Meadow`; generadores en `ServerStorage.LaneKit` y `ServerStorage.LaneThemes` (solo en Edit). Servidor: `DiamondServer.Lane` (terreno, cavar, regenerar, textos de arcos y carteles). Cliente: `StarterPlayerScripts.LaneFx` (ambiente). `Config.LANE`, `Config.PLOTS` (las 15 parcelas: nombre, tema, terreno, colores, ambiente, % de fósiles), `Config.TERRAIN_COLORS`, `Config.plotCenter/plotAt`, `Config.FIELD_CENTER` (el `Event` ya usa el nuevo centro). Borrados: la mina, la pared del fondo del lobby en el portón, la barrera invisible del fondo y las montañas que tapaban el carril. Copia del terreno del campo en `ServerStorage.FieldTerrainBackup`.
**Probado:** en Play: llegar a las parcelas 2 y 10 con streaming (carteles con su pala), cavar, regenerar con el jugador dentro (sale al borde). Capturas del carril (parcelas 1, 7, 15) y del campo nuevo. Sin errores. **Sin probar:** el evento del diamante en su nuevo sitio y la cinemática final.
**Notas:** con StreamingEnabled el cliente no tiene todo el mapa: usar `WaitForChild`/`FindFirstChild` o cálculos con `Config` (la estatua del lobby es `Persistent`). Terreno: el color de un material es global, por eso cada parcela usa materiales distintos (`Config.TERRAIN_COLORS`).

## 2026-10-18 · bbogatell (Claude) · Gran cambio, fase 1: fuera gnomos, talismanes y cavar en las parcelas personales
**Qué:** primera fase del gran cambio (carril de 15 parcelas, fósiles y bichos). Quitados del todo los **gnomos** (aparición, música de persecución, contador, alarma, `/gnomo`, nodo de la mina y grupos de colisión `Gnome`/`MineGate`, que se creaban desde el script) y los **talismanes** (pedestales, llevar/robar, intercambio con F, panel de mejoras, atributos `Buff_*`, `/talisman`). **Migración:** al cargar el perfil se borran los talismanes guardados; se mantienen el nivel (pala) y las monedas. Las **8 parcelas personales ya no se cavan** (aviso «Aquí no se cava»): en la fase 5 serán las bases.
**Dónde:** borrados `DiamondServer.Gnomes`, `DiamondServer.Talismans`, `StarterPlayerScripts.GnomeFx`, `StarterPlayerScripts.TalismanFx`, `DiamondClient.TalismanUI`, `ReplicatedStorage.TalismanLook`. Limpiados `Main` (servidor y cliente), `Config` (sin `TALISMAN_*`, `GNOME*`, `gnomeReach`), `UIKit` (sin los sonidos del gnomo), `Data` (`p.talismans = nil` al cargar) y `Plots.hit` (devuelve `noDig`). Golpear a otros jugadores sigue funcionando (servirá para robar fósiles).
**Probado:** en Play, sin errores en la consola; cavar en tu parcela devuelve `noDig` y sale el aviso.
**Notas:** el campo del diamante se mueve en la fase 2 (al final del carril). El comando de Debug `simpit` se ha quitado (era de los hoyos personales).

## 2026-10-18 · seguo970 (Claude) · Arreglados huecos y grietas del mapa
**Qué:** la escalera al campo ya no tiene un hueco arriba por el que se veía el vacío (un escalón más, a media altura) y ahora se puede subir andando del campo al lobby sin saltar. Rellenadas las grietas por las que se veía el vacío entre las paredes del lobby y las montañas (esquina este lobby/campo y detrás de la pared del fondo). Revisado todo el entorno del lobby y del campo cada 4 studs: no quedan columnas vacías ni terreno realista a la vista.
**Dónde:** `Field.Stairs` (2 `Step` nuevos en z −163 y −165; el de −165 queda bajo el suelo del lobby), `Mountains.Fill` (+239 bloques de 4×4 a la altura media de lo que los rodea).
**Probado:** en Play: bajar y subir la escalera andando; capturas de las dos esquinas y del fondo. Sin errores.
**Notas:** desde muy alto se ve el cielo por encima del borde del mundo (las montañas acaban en ±640); desde el suelo no se ve.

## 2026-10-18 · seguo970 (Claude) · Quitada la piedra que asomaba en la esquina lobby/campo
**Qué:** ya no asoma una roca de terreno realista entre los bloques en la esquina del lobby con el campo. Revisado todo el mapa columna a columna (cada 4 studs): no queda terreno visible fuera de las parcelas y del campo.
**Dónde:** terreno borrado en las dos esquinas (|x| 148…212, z −160…−120, y −16…80); 21 restos más tapados o recortados por todo el mapa (17 bloques nuevos en `Mountains.Fill`).
**Probado:** capturas de las dos esquinas, sin piedra. No se ha tocado el lobby ni el campo.

## 2026-10-18 · seguo970 (Claude) · Sin hierbitas saliendo entre las baldosas
**Qué:** ya no sale hierba realista entre las baldosas de studs alrededor del campo. Solo queda hierba con briznas dentro de la barrera del campo del diamante.
**Dónde:** terreno: `Grass` y `LeafyGrass` → `Ground` (no tiene briznas) en todo el mapa salvo el campo (|x|, |z| < 120). Terreno borrado (y −8…60) debajo de las baldosas de `Field.StudRing` (fuera de ±124), donde antes quedaban franjas sin limpiar.
**Probado:** capturas desde la franja de la valla: sin briznas fuera de la barrera. No se ha tocado nada dentro del campo.
**Notas:** la hierba con briznas sale de los materiales de terreno `Grass`/`LeafyGrass`; si hace falta terreno fuera del campo, usar `Ground`.

## 2026-10-18 · seguo970 (Claude) · Todo el mapa en studs salvo las parcelas y el campo
**Qué:** regla nueva de estilo: **solo el interior de las parcelas de los jugadores y el recuadro del campo del diamante (dentro de la barrera, ±122) tienen textura realista**; todo lo demás es de studs. Quitados los 4 árboles junto al cartel grande. Valla de madera y farolillos del campo cambiados por valla y farolas de bloques con studs (mismas posiciones, con paredes invisibles para que sigan frenando igual). Arco «Campo del Diamante», marco, postes y letrero del cartel grande, escalera, bordes de las parcelas y cabeceras de los rankings pasan de madera/piedra realista a plástico con studs (mismos colores); las rocas de la base de los postes son bloques de piedra. El suelo de studs alrededor ahora llega hasta la barrera (incluye la franja de la valla y el talud entre las columnas del sur), y ya no asoma césped realista entre las baldosas ni en la escalera. Tapados restos de terreno detrás de las paredes del lobby y en las esquinas.
**Dónde:** `Field.Jumbotron` (sin `BigTree`, `PostBase` nuevos), `Field.Arch` (`PostBase`), `Field.Stairs`, `Field.Walkway.StudFence` (raíles, postes, farolas, `FenceCollider` invisibles; se borraron las MeshParts `Fence` y `Lantern`), `Field.StudRing` rehecho (872 baldosas + 1 al pie de la escalera), `Mountains.Fill` (278 bloques de relleno), `Lobby.PlotFrames.*.Rim`, `Lobby.Boards.*.Header`. Todas las Parts del mapa con material realista (Wood, WoodPlanks, Cobblestone, Basalt…) → SmoothPlastic + textura de studs. Terreno: borrado por encima del fondo de cada baldosa y en la escalera. Copias: `ServerStorage.FieldPropsBackup` (cartel, arco, escalera y valla originales), `ServerStorage.FieldRingBackup` (terreno).
**Probado:** en Play: bajar la escalera hasta el campo, andar por la franja de fuera, la valla frena por el este y el norte. Sin errores. **Sin probar:** el evento (cavar dentro del campo) y la cinemática final.
**Notas:** al terreno del campo se le ha dejado la hierba realista solo dentro de la barrera. Si alguien añade algo nuevo al mapa, usar la textura `rbxassetid://6348166067` (2 studs por casilla).

## 2026-10-18 · seguo970 (Claude) · Suelo de studs alrededor del recinto del diamante
**Qué:** la hierba realista que rodea el recinto del campo (fuera de la valla de madera, hasta las montañas de bloques) y el talud bajo la barandilla del lobby **fuera de las columnas de las esquinas** ahora son baldosas de studs de 8×8 en los mismos verdes que el lobby, en escalones donde el terreno subía. **No se ha tocado** el interior del recinto (valla, pasarela, barrera y campo), ni el talud entre las dos columnas del sur, ni la escalera ni el arco.
**Dónde:** nuevo `workspace.Map.Field.StudRing` (575 baldosas con colisión, sin sombras). Terreno realista borrado por encima de cada baldosa (lo de debajo queda oculto). Zona: |x| de 134 a 176 y z de −140 a 176, más z 134…176 por el norte; talud del sur (z −140…−125) solo con |x| > 124. Copia del terreno original en `ServerStorage.FieldRingBackup`.
**Probado:** en Play: andar por la franja este sobre las baldosas, sin errores. Los FPS no cambian con o sin las baldosas.
**Notas:** misma textura que el suelo del lobby (`rbxassetid://6348166067`, 2 studs por casilla). Para deshacer: borrar `StudRing` y `Terrain:PasteRegion(FieldRingBackup, Vector3int16.new(-44, -4, -35), true)`.

## 2026-10-18 · seguo970 (Claude) · Mina centrada y los gnomos salen de la mina
**Qué:** quitado el trozo de montaña de bloques que asomaba en la esquina del fondo izquierda del lobby (ahora se ven las paredes con pinos) y los restos de terreno liso que flotaban encima. La entrada de la mina queda centrada con el camino central y el túnel es negro por dentro (ya no se ven ladrillos ni hiedra). Los gnomos ya no aparecen en un punto al azar: salen siempre de la mina y bajan por el camino central.
**Dónde:** `workspace.Mountains.LobbyBack` borrado (85 bloques). Terreno por encima de y=36 borrado en todo el lobby (x ±208, z −528…−136). `Lobby.Cliffs.Mine` movida +4 en X (atributo `Centered`), `Mine.Dark` adelantado a z=−469,7; `Props.Gutter` de la mina movida +4; 2 ladrillos de relleno en `Cliffs.Back` (x=−14). `DiamondServer.Gnomes`: nodo 14 = entrada de la mina (0, −455) unido al nodo 8; aparecen en (0, −466) dentro del túnel. Grupos de colisión nuevos: `Gnome` y `MineGate` (la barrera invisible del fondo, `Bounds` en z=−454, deja pasar a los gnomos pero no a los jugadores).
**Probado:** en Play: gnomo legendario y normal salen de la mina y recorren el camino central; el jugador sigue parado por la barrera en z≈−451. Sin errores.
**Notas:** si se mueve la barrera del fondo o la mina, revisar `MINE_SPAWN`/nodo 14 en `Gnomes` (el script busca la barrera por posición, z≈−454 y x≈0).

## 2026-10-18 · seguo970 (Claude) · Montañas nevadas de bloques con studs
**Qué:** las montañas de terreno liso que rodean todo el mapa (hierba, roca y nieve) ahora son de bloques cuadrados con textura de studs, en escalones de 16×16 studs y 8 de alto. Siguen la misma forma y altura que antes: hierba en verde, roca en gris y nieve en blanco arriba (casquete de 8 studs sobre roca).
**Dónde:** nuevo `workspace.Mountains` (~5.200 piezas, sin colisión ni sombras, fuera de `Map` para que la cinemática final no las mueva una a una). Terreno de las montañas borrado fuera de la zona de juego (y ≥ −16): todo fuera de x ±208 / z −528…192, los lados del campo más allá de los muros (|x| > 176) y las crestas detrás de la pared del fondo del lobby. **No se ha tocado** el terreno del lobby, de las parcelas ni del campo del evento. `DiamondServer.Finale` (`buildHell`): también destruye `Mountains` al pasar al infierno. Copia del terreno original en `ServerStorage.MountainsBackup` (TerrainRegion).
**Probado:** en Play: sin errores, 60 FPS con y sin las montañas. Capturas desde el lobby y el campo. **Sin probar:** la cinemática final/infierno y en móvil.
**Notas:** misma textura que el lobby (`rbxassetid://6348166067`) pero a 4 studs por casilla para que se vean de lejos. Para deshacer: borrar `workspace.Mountains` y pegar `MountainsBackup` con `Terrain:PasteRegion(backup, Vector3int16.new(-160, -10, -160), true)`.

## 2026-10-18 · bbogatell (Claude) · Sin texto «PARCELA LIBRE»
**Qué:** las parcelas sin dueño ya no muestran título flotante. Las ocupadas siguen mostrando nivel, terreno y nombre del jugador.
**Dónde:** `DiamondServer.Plots` → `setSign` (el BillboardGui `Title` se desactiva si no hay dueño).
**Probado:** en Play: 7 parcelas libres sin texto, la propia con «TIERRA».

## 2026-10-18 · bbogatell (Claude) · Lobby: sin marcos de color, sin farolillos, sin estandartes, sol desde arriba
**Qué:** quitados los marcos de color de las parcelas (ahora hierba alrededor de cada hoyo), todos los farolillos (41: paredes, plaza, escalera, mina, tienda) y los 3 estandartes del fondo. El sol ilumina desde arriba, un poco inclinado (mediodía).
**Dónde:** `Lobby.Floor` (PlotFrame → Grass), `Lobby.Cliffs`, `Lobby.Props`, `Lobby.Shop`. `Lighting`: ClockTime 13, GeographicLatitude 23 (dirección del sol ≈ (−0,26, 0,97, 0)), Atmosphere y ColorCorrection neutras (**afecta a todo el juego**).
**Probado:** en Play, 60 FPS, sin errores.

## 2026-10-18 · bbogatell (Claude) · Lobby rehecho más fiel a la imagen de referencia
**Qué:** suelo verde musgo con cuadrícula (baldosas de 8 en tonos distintos) en vez del tablero chillón; caminos de piedra con bordillo; plaza con borde elevado; marcos de color gruesos y elevados alrededor de cada hoyo. Paredes de piedra oscura más altas (4 terrazas, hasta ~110 de alto) con frente de bloques, musgo, hiedra, pinos de capas (oscuros y lima) y faroles en la repisa. Mina con arco de piedra, vigas, raíles y faroles. Estandartes grandes (20×42). Cascada en 4 saltos con pozas. Tienda nueva de madera (toldo a cuadros, estantes con pociones, barriles, faroles colgando). Cofre del diario grande morado y dorado con gema y brillos sobre pedestal escalonado. Rankings con marco blanco grueso, esquinas de color, cabecera de madera y base de color. ~180 matas de flores, jardineras, pilares de piedra con faroles y escombros junto a la escalera. Luz de atardecer.
**Dónde:** `workspace.Map.Lobby` → `Floor`, `Cliffs` (East/West/Back + `Mine`, `WallLanterns`), `Props` (`Banners`, `Waterfall`, `Flowers`, `StairDeco`, `Gutter`…), `Shop`, `Daily`, `Statue`, `Boards.*.NewFrame`. `Lighting` (ClockTime 17,3, Brightness 3, Atmosphere/ColorCorrection cálidas: **afecta a todo el juego**). `ServerStorage.LobbyKit.pine` mejorado.
**Probado:** en Play: 60 FPS (la primera versión iba a 14 FPS por ~18.000 piezas en las paredes; se rehizo con bloques más grandes y sin sombras: ~4.700). Se puede entrar en la parcela, ir a la tienda y al cofre. Sin errores.
**Notas:** sin sombras en paredes, flores y suelo por rendimiento. El cartel de la derecha sigue siendo el de GANADOR (el juego escribe ahí el ganador), no «Síguenos». El ranking sigue siendo TOP NIVEL (no hay «diamantes» en el juego).

## 2026-10-18 · bbogatell (Claude) · Lobby como la imagen de referencia (paredes de piedra, mina, cascada)
**Qué:** el lobby queda rodeado por paredes de bloques de piedra con studs en 4 terrazas, con hierba encima, enredaderas colgando y pinos de bloques; al fondo, la entrada de una mina con vigas de madera y antorchas, y 3 estandartes (⚔️ rojo, 💎 azul, 🎁 morado). Cascada en la pared este con poza. Farolas de piedra con farol, jardineras de flores, rocas y arbustos. Tienda de madera con estantería de botellas, cofre del diario morado y dorado, pedestal del diamante azul/blanco/verde, marco oscuro alrededor de cada hoyo, rankings con postes de madera. Iluminación más cálida (tarde).
**Dónde:** `workspace.Map.Lobby` → nuevo `Cliffs` (paredes, `Tier4`, `Mine`), más cosas en `Props` (`Banners`, `Waterfall`, `Lanterns`, `Planters`, `PlotRims`, `EdgeGreen`, rodapié de piedra). Terreno de las montañas cercanas quitado donde van las paredes. `Lighting.ClockTime` 16,6 y `ColorCorrection` algo más cálida (**afecta a todo el juego**). Herramienta nueva para construir: `ServerStorage.LobbyKit` (bloques con studs, pinos, faroles, jardineras, estandartes).
**Probado:** en Play: 59 FPS, andar hasta la tienda, el diario, la pared este (para en x≈129), la mina (para en z≈−451) y bajar la escalera al campo. Sin errores.
**Notas:** unas 4.000 piezas nuevas. Si en móvil va lento, se pueden quitar `Cliffs.Tier4` (la fila más alta y lejana).

## 2026-10-18 · bbogatell (Claude) · Lobby estilo studs (más simple)
**Qué:** se quitan del lobby todos los árboles, arbustos, rocas, setas, bancos y la valla. Suelo nuevo de bloques con textura de studs (estilo *Roba un huevo* / *Steal a Brainrot*): cuadros verdes en dos tonos, caminos grises, plaza clara alrededor del diamante y una base de color distinta por parcela con su hoyo libre. Tienda, cofre del diario, pedestal del diamante y bases de los rankings rehechos con bloques de studs de colores; barandilla roja/blanca sobre el campo (hueco en la escalera), borde blanco alrededor y farolas de bloques. Solo el lobby: el campo del evento y la decoración de las parcelas no se han tocado.
**Dónde:** `workspace.Map.Lobby` → nuevos `Floor` (317 baldosas) y `Props`; rehechos dentro de `Shop`, `Daily`, `Statue`, `Boards` (se conservan las partes con scripts: `PromptPart`, `Glow`, carteles, `DiamondAnchor`, `BigDiamond`, paneles de ranking). Terreno del lobby: hierba → Ground y aplanado bajo el suelo. Copia de lo borrado en `ServerStorage.LobbyBackup`. Textura de studs: `rbxassetid://6348166067` (decal 6348166071), 2 studs por casilla.
**Probado:** en Play: andar por el lobby y hasta las parcelas, avisos de la tienda y del diario a su alcance, parcela de nivel 14 encima de su base de color, escalera al campo despejada. Sin errores.
**Notas:** el suelo está a y=18 (antes la hierba estaba a 16–18). `LobbySpawn` movido a y=18,5.

## 2026-10-16 · bbogatell (Claude) · Repositorio compartido del equipo
**Qué:** se crea este repositorio con la documentación del juego y el registro de cambios para trabajar en equipo con seguo970.
**Dónde:** solo este repositorio (no se ha tocado el juego).

## 2026-10-15 · bbogatell (Claude) · Gnomos más fáciles de golpear y menos frecuentes
**Qué:** alcance para pegar al gnomo ~15–21 studs (según tamaño), no hace falta apuntar perfecto. Aparece cada 8–15 min (antes 1,5–2,5).
**Dónde:** `ReplicatedStorage.Config` (`GNOME.interval`, `gnomeReach`), `DiamondClient.Main` (`hitTarget`), `DiamondServer.Main` (`Hit`).
**Probado:** golpes a 6, 10 y 14 studs con el gnomo pequeño.

## 2026-10-15 · bbogatell (Claude) · Sonidos del gnomo y contador
**Qué:** alarma «Alerta» al aparecer (se repite según el tamaño), música «Level Fun+ (Chase Theme)» mientras está vivo, sonido de monedas en cada golpe y contador de 4 min hasta que se escapa (en pantalla y encima del gnomo).
**Dónde:** `DiamondClient.UIKit` (`SOUNDS.alarm/gnomeChase/gnomeHit`), `GnomeFx`, `DiamondServer.Gnomes` (atributo `ExpiresAt`).
**Probado:** sí, en Play.

## 2026-10-15 · bbogatell (Claude) · 4 tamaños de gnomo
**Qué:** Gnomo / Raro / Épico / Legendario, cada vez más grande, con más vida y más efectos (el legendario es arcoíris). Cada uno suelta un talismán de su rareza. Contorno rojo que se ve a través de las paredes y aviso en pantalla.
**Dónde:** `Config.GNOME_TIERS`, `DiamondServer.Gnomes` (`addEffects`), `GnomeFx`.

## 2026-10-15 · bbogatell (Claude) · Gnomos y talismanes
**Qué:** nueva mecánica completa: gnomo con vida que se golpea con la pala (animación nueva de pegar, cada pala hace más daño), suelta talismanes que se llevan a la parcela, 8 pedestales con mejoras, robos, intercambio y guardado. Comandos `/gnomo` y `/talisman`.
**Dónde:** `DiamondServer.Gnomes`, `DiamondServer.Talismans`, `ReplicatedStorage.TalismanLook`, `DiamondClient.TalismanUI`, `TalismanFx`, `DigAnim` (pegar).
**Probado:** con 1 jugador (matar, recoger, entregar, mejoras). **Sin probar con 2 jugadores.**

## Antes (resumen)
- Barreras invisibles en el borde del mapa y del infierno.
- Animación de cavar del usuario (Blender) y postura al llevar la pala con las dos manos.
- Cartel encima del diamante del lobby (título, contador, 10.000 ROBUX).
- Barras de volumen de música y efectos en Ajustes.
- 30 palas modeladas por piezas y reducidas a un tamaño que no atraviesa el suelo.
- Economía: un hoyo completo siempre da para la siguiente pala; hoyos más hondos en cada nivel.
- Decoración de las 30 parcelas, títulos flotantes encima de las parcelas.
- Parcelas personales de terreno real, 30 niveles de terreno y minerales con física.
- Evento del diamante, cinemática final e infierno.

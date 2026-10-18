# Registro de cambios

> El más nuevo arriba. Formato en [`CLAUDE.md`](CLAUDE.md).

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

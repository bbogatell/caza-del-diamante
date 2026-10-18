# Registro de cambios

> El más nuevo arriba. Formato en [`CLAUDE.md`](CLAUDE.md).

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

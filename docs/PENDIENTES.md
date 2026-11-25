# Pendientes, ideas y bugs conocidos

> Marca con `[x]` lo terminado y pon quién lo hizo.

## Por hacer antes de lanzar
- [ ] **Poner a seguo970 de admin**: `Config.ADMINS` (el nombre «seguo970» no existe en Roblox: poner su nombre de usuario actual o su id).
- [ ] **Decidir qué es el premio del Robux dorado** (24/11: de momento solo «el Robux dorado», sin cantidad). Ver `docs/LANZAMIENTO.md`.
- [ ] Crear los productos y el pase de Robux y poner sus ids (68 productos + DoubleCoins).
- [ ] Ficha del juego: nombre, descripción, icono, miniaturas, cuestionario de madurez (declarar objetos aleatorios de pago y violencia ligera) y 7 jugadores por servidor.
- [ ] Traducción automática (inglés) desde el Creator Dashboard.
- [ ] Probar en un móvil barato de verdad (memoria; `StreamingMinRadius` = 3.600 carga todo el mapa).
- Crear en el Creator Dashboard los productos de giros de la ruleta `Spin1` (49 R$), `Spin3` (129 R$) y `Spin10` (349 R$) y poner sus ids en `Config.PRODUCTS` (ahora id 0: en Studio se simulan, en el juego publicado salen «Próximamente»).
- [ ] **Terreno dorado (19/11):** crear los productos `GoldPack1/5/15` (199 / 799 / 1.999 R$) y poner sus ids en `Config.PRODUCTS`. ⚠️ Antes, decidir si se venden: vender fósiles que pueden dar Robux puede ir contra las normas de Roblox sobre juegos de azar con premios de valor real.
- [ ] **Mejoras del terreno dorado (25/11):** crear los productos `GoldDynamite3` (99 R$), `GoldBarrel` (99), `GoldChain` (129) y `GoldDrill` (249) y poner sus ids. Imágenes de tienda con ChatGPT cuando haya sesión (ahora se ve el modelo 3D).
- [ ] El nombre del juego («ENCUENTRA EL DIAMANTE» / «La Caza del Diamante») ya no encaja con el juego nuevo: decidir si se cambia (lo hace el dueño en Roblox).
- [ ] Crear los productos nuevos de la tienda (12/11): `Featured1/3/10/50`, `Restock1-3`, `SpeedPack1-6`, `TrailR2-16`.
- [ ] Imágenes de la tienda que faltan (`Menus` → `SHOP_IMG`): una imagen por cinta de correr (para «tu cinta ➜ la siguiente»). Las 20 estelas ya tienen imagen (17/11). Las 24 principales ya están (12/11).
- [ ] Crear los gamepasses y productos de Robux y poner sus IDs en `Config.PASSES` / `Config.PRODUCTS` (ahora están a 0): x2 Monedas, los 4 «Abrir fósil ya» (`OpenNow1-4`), las trampas (`Traps3`), el hielo (`Freeze3`) y los packs de monedas (`Coins10k`…`Coins10q`); los de la velocidad: estelas de Robux `Trail17-20` (`TRAINING.trails[n].robuxId`), mejoras de cinta `Tread2-11` (`TRAINING.treadmills[n].robuxId`) y multiplicadores `SpeedX2-128` (`TRAINING.mults[n].id`).
- [ ] Poner **7 jugadores por servidor** en Game Settings → Places (no se puede desde un script): desde el 17/11 el lobby tiene 7 bases (antes 8).
- [ ] Revisar la economía jugando (precios de palas, tierra por bloque `DIRT.perVoxel`, precios de la máquina `DIRT.prices`, 2 % de fósiles, vida del fósil 60, venta ×60 s).
- [ ] Revisar las normas de Roblox sobre el premio en Robux y redactar las condiciones del premio.
- [ ] Subir los paquetes de monedas con Robux (5K/50K/500K se han quedado cortos con los precios nuevos).
- [ ] Borrar `StarterPlayerScripts.DebugLevelKey` (o dejarlo, solo funciona en Studio).
- [x] Borrar `ServerScriptService.TEMP_ExpoBichos` (seguo970, 10/11): borrado.
- [x] Borrar `workspace.PasarelaFosiles` (seguo970, 03/11): borrada después de que seguo970 revisara los 60 fósiles en ella.

## Bugs / a medias
- [ ] **Piezas de los fósiles dorados** (seguo970, 25/11): ya salen y se guardan (Pala Robux 1/200, ticket 1/150, `Config.GOLD.parts`). Al juntar las 5 de la **Pala Robux** ya se consigue la pala, con su animación (25/11). Al juntar las 5 del **ticket** ya sale la animación y te suma un ticket (`p.gold.tickets`), y desde el 25/11 se queda en el inventario (barra de herramientas), pero **falta decidir para qué sirve** (lo dirá seguo970). También falta dónde ver tu colección. La Pala Robux cava como la de tu nivel: ¿debería ser más fuerte?
- [ ] `ServerStorage.CopiasSeguridad` **no existía** el 25/11, aunque los documentos hablan de copias que había dentro (p. ej. `CazaDiamante_quitada_2026-11-19`, `FinaleInfierno_desactivado`). Esas copias parece que se han perdido. Se ha vuelto a crear la carpeta.
- [ ] **Animación nueva de cavar** (seguo970, 21/10): puesta desde el `.blend` y vista cavando por seguo970 (se ve bien). Falta verla con otro jugador; en los fotogramas 8-9 el codo izquierdo se dobla del todo (viene así de Blender).
- [ ] **Pala 29 nueva** (seguo970, 21/10): puesta, texturizada y animada. Falta verla en la tienda, en móvil y en la mano de otro jugador. La capa ya se mueve como tela (huesos `ShovelBone`).

- [x] **Luz de rareza de los fósiles demasiado fuerte** (seguo970, 09/11): ahora es progresiva por rareza, de 0,10 (Común) a 0,65 (Mutante), en `Looks.fossil`.

- [x] **Se podía caer al vacío desde la escalera del campo** (seguo970, 09/11): tapado con dos `StairCollider` invisibles en `Map.Field.Stairs`.
- [ ] Borrar `ServerStorage.MapBackup_Clipping` (seguo970, 09/11) cuando se confirme que el mapa está bien tras quitar el z-fighting.
- [ ] Z-fighting pendiente en `Lobby.Podium` (15 caras, bbogatell): corregirlo en `PodiumBuilder`.

## Sin probar
- [ ] Cinemática de entrada (bbogatell, 10/11) en móvil: el botón «Saltar» y que no tape nada al acabar.
- [ ] **Podio de los más ricos** (bbogatell, 09/11): verlo con 2-3 jugadores y con el ranking global real (`DiamondHunt_Coins_v1`, solo funciona publicado).
- [ ] Fósiles de estrella sueltos: que desaparezcan a los 300 s (`FOSSIL.looseLifeStar`).
- [ ] **Pala 28 (Pala Galáctica)** (seguo970, 21/10): seguo970 la ha visto en Play y se ve bien. Falta mirarla en la tienda, en móvil y en la mano de otro jugador. Del prompt quedan sin hacer el «aparecer» de anillos y halo al sacarla y la flotación de ±0,05 (casi no se vería).
- [ ] Pala 30 importada (`Models.Palas.L30`, animada): rendimiento en móvil y verla en la mano de otro jugador. En la tienda se ve pálida sobre su tarjeta.
- [ ] Con **2 jugadores**: el bate (empuje y tirar el fósil), la trampa y el hielo sobre otro jugador.
- [ ] **Terreno dorado con 2 jugadores**: que el prompt «¡Abrir!» solo lo vea el dueño, que el otro no pueda abrirlo, y la cinemática del ganador vista por el que no gana.
- [ ] Ganador entre servidores del Robux dorado (DataStore `DiamondHunt_GoldRobux_v1` + MessagingService): solo se puede probar publicado. Y un servidor que arranca cuando ya hay ganador (terreno cerrado sin cinemática).
- [ ] Guardado real de la base y la velocidad (DataStore apagado en Studio) y que los fósiles se abran estando desconectado.
- [ ] Cuenta atrás, grietas y temblor de los fósiles vistos en pantalla.
- [ ] Rendimiento del carril con StreamingEnabled en móvil (radio de carga bajado a 320 el 10/11: mirar que no aparezcan cosas de golpe al correr por el carril).
- [ ] **Optimización móvil pendiente** (seguo970, 10/11): bichos de las bases (hasta 96 en el lobby, media de 515 piezas; las partículas y luces ya van por distancia con `CreatureLOD`, hecho: versión sencilla de lejos y completo de cerca, fases 3A y 3B, 10/11; falta probarlo con 2 o más jugadores y en un móvil real, sobre todo que no tarde al acercarse. Prueba del 10/11 con `/llenar 12` (96 bichos): en PC el cliente tiene 59-63k piezas (casi todo completo), con Modo rendimiento 29k en tu base y 42k en el centro; la simulación va a 60 Hz. Los FPS de dibujo no se pudieron medir porque Studio los limita a 15 desde las herramientas: hay que mirarlos a mano con Shift+F5 en Studio o en el móvil) y tienda de palas (30 vistas 3D cuyas 323 piezas orbitales se animan cada fotograma aunque la tienda esté cerrada).
- [ ] Ajustes en móvil (barra de volumen con el dedo).
- [ ] Probar la progresión jugando de verdad (sin trucos): el ritmo de las primeras palas (la 2 cuesta 2.200 y un bicho común da 3 💰/s).
- [ ] Montañas de bloques (`workspace.Mountains`): rendimiento en móvil (ya no hay paso al infierno).

## Ideas / mejoras
- [x] Mejorar la base para agrandarla (seguo970, 19/10): 2 niveles con monedas. Falta probar con 2 jugadores y al salir/volver, y ajustar los precios.
- [ ] Pendiente del fondo del lobby algo escalonada y un trozo de agua azul suelto a la derecha.
- [ ] Discord del juego (hay un brief preparado).

## Placeholders (modelos provisionales para sustituir)
> Para cambiar cualquiera: deja el modelo final en la carpeta indicada con el **id como nombre** y el juego lo usa en vez del provisional. Pon una pieza `Root` en la base (si no, se crea sola). Las palas necesitan una pieza `Handle` en la empuñadura, con el mango a lo largo de +Y y todo soldado al `Handle`.
- [ ] **198 bichos** → `ServerStorage.Models.Bichos.<id>` (id = número de su ficha en `BICHOS_DINOSAURIOS.md`, p. ej. `174` = T-Rex Galáctico). Ahora: dinosaurio de bloques genérico según el nombre, con los colores de su rareza.
- [x] **60 fósiles** → `ServerStorage.Models.Fosiles.<id>` (seguo970, 03/11): un diseño por rareza hecho con `ServerStorage.FossilBuilder`. Mejorables con modelos propios: deja el modelo con el id como nombre y sustituye al generado.
- [ ] **30 palas** → `ReplicatedStorage.Models.Palas.L<n>` (`L1`…`L30`; así también salen en la tienda; `ServerStorage.Models.Palas` solo cambia la de la mano). Hechas: **todas** (`L1`–`L30`) (la `L1` usa materiales de Roblox en madera, piedra y cuerda; si se quieren las texturas del GLB, sus IDs están en `tools/modelos/L1/texturas/IDS.txt`) (modelos importados; cómo: `docs/IMPORTAR_MODELOS.md`). Ahora: los diseños de `ShovelLook` (por nivel) con los nombres nuevos; falta adaptarlos a los diseños de `PALAS.md`.
- [ ] **Decorado de las 15 parcelas**: piezas sencillas de `ServerStorage.LaneThemes` (dodo, esqueletos, volcán, puente de mosasaurio, templo, islas, T-Rex Galáctico…). Mejorable con modelos más detallados, sobre todo las estatuas.
- [ ] Bases: plataforma sencilla igual para todos con valla de madera (como «Roba un huevo»); la valla no choca.
- [ ] Objetos: modelos sencillos (bate, trampa, orbe de hielo, alfombra) y emojis en la tienda; mejorables con modelos e iconos propios.
- [ ] Cintas de correr: modelos sencillos por nivel (colores, neón, alas, cuernos, halo); mejorables. Faltan las pociones de velocidad y los packs de velocidad de «Roba un huevo» (no pedidos).

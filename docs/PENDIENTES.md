# Pendientes, ideas y bugs conocidos

> Marca con `[x]` lo terminado y pon quién lo hizo.

## Por hacer antes de lanzar
- [ ] Confirmar fecha y hora definitivas del evento (`Config.EVENT_TIME`).
- [ ] Crear los gamepasses y productos de Robux y poner sus IDs en `Config.PASSES` / `Config.PRODUCTS` (ahora están a 0): x2 Monedas, los 4 «Abrir fósil ya» (`OpenNow1-4`), la Alfombra Mágica, las trampas (`Traps3/10`), el hielo (`Freeze3/10`) y los packs de monedas (`Coins10k`…`Coins10q`); los de la velocidad: estelas de Robux `Trail17-20` (`TRAINING.trails[n].robuxId`), mejoras de cinta `Tread2-11` (`TRAINING.treadmills[n].robuxId`) y multiplicadores `SpeedX2-128` (`TRAINING.mults[n].id`).
- [ ] Poner **8 jugadores por servidor** en Game Settings → Places (no se puede desde un script).
- [ ] Revisar la economía jugando (precios de palas, tierra por bloque `DIRT.perVoxel`, precios de la máquina `DIRT.prices`, 2 % de fósiles, vida del fósil 60, venta ×60 s).
- [ ] Revisar las normas de Roblox sobre el premio en Robux y redactar las condiciones del premio.
- [ ] Subir los paquetes de monedas con Robux (5K/50K/500K se han quedado cortos con los precios nuevos).
- [ ] Borrar `StarterPlayerScripts.DebugLevelKey` (o dejarlo, solo funciona en Studio).
- [x] Borrar `ServerScriptService.TEMP_ExpoBichos` (seguo970, 10/11): borrado.
- [x] Borrar `workspace.PasarelaFosiles` (seguo970, 03/11): borrada después de que seguo970 revisara los 60 fósiles en ella.

## Bugs / a medias
- [ ] **Animación nueva de cavar** (seguo970, 21/10): puesta desde el `.blend` y vista cavando por seguo970 (se ve bien). Falta verla con otro jugador; en los fotogramas 8-9 el codo izquierdo se dobla del todo (viene así de Blender).
- [ ] **Pala 29 nueva** (seguo970, 21/10): puesta, texturizada y animada. Falta verla en la tienda, en móvil y en la mano de otro jugador. La capa ya se mueve como tela (huesos `ShovelBone`).

- [x] **Luz de rareza de los fósiles demasiado fuerte** (seguo970, 09/11): ahora es progresiva por rareza, de 0,10 (Común) a 0,65 (Mutante), en `Looks.fossil`.

- [x] **Se podía caer al vacío desde la escalera del campo** (seguo970, 09/11): tapado con dos `StairCollider` invisibles en `Map.Field.Stairs`.
- [ ] Borrar `ServerStorage.MapBackup_Clipping` (seguo970, 09/11) cuando se confirme que el mapa está bien tras quitar el z-fighting.
- [ ] Z-fighting pendiente en `Lobby.Podium` (15 caras, bbogatell): corregirlo en `PodiumBuilder`.

## Sin probar
- [ ] **Podio de los más ricos** (bbogatell, 09/11): verlo con 2-3 jugadores y con el ranking global real (`DiamondHunt_Coins_v1`, solo funciona publicado).
- [ ] Fósiles de estrella sueltos: que desaparezcan a los 300 s (`FOSSIL.looseLifeStar`).
- [ ] **Pala 28 (Pala Galáctica)** (seguo970, 21/10): seguo970 la ha visto en Play y se ve bien. Falta mirarla en la tienda, en móvil y en la mano de otro jugador. Del prompt quedan sin hacer el «aparecer» de anillos y halo al sacarla y la flotación de ±0,05 (casi no se vería).
- [ ] Pala 30 importada (`Models.Palas.L30`, animada): rendimiento en móvil y verla en la mano de otro jugador. En la tienda se ve pálida sobre su tarjeta.
- [ ] Con **2 jugadores**: el bate (empuje y tirar el fósil), la trampa y el hielo sobre otro jugador.
- [ ] El evento del diamante y la cinemática final con el campo en su sitio nuevo (z −3208).
- [ ] Guardado real de la base y la velocidad (DataStore apagado en Studio) y que los fósiles se abran estando desconectado.
- [ ] Cuenta atrás, grietas y temblor de los fósiles vistos en pantalla.
- [ ] Rendimiento del carril con StreamingEnabled en móvil (radio de carga bajado a 320 el 10/11: mirar que no aparezcan cosas de golpe al correr por el carril).
- [ ] **Optimización móvil pendiente** (seguo970, 10/11): bichos de las bases (hasta 96 en el lobby, media de 515 piezas; las partículas y luces ya van por distancia con `CreatureLOD`, hecho: versión sencilla de lejos y completo de cerca, fases 3A y 3B, 10/11; falta probarlo con 2 o más jugadores y en un móvil real, sobre todo que no tarde al acercarse. Prueba del 10/11 con `/llenar 12` (96 bichos): en PC el cliente tiene 59-63k piezas (casi todo completo), con Modo rendimiento 29k en tu base y 42k en el centro; la simulación va a 60 Hz. Los FPS de dibujo no se pudieron medir porque Studio los limita a 15 desde las herramientas: hay que mirarlos a mano con Shift+F5 en Studio o en el móvil) y tienda de palas (30 vistas 3D cuyas 323 piezas orbitales se animan cada fotograma aunque la tienda esté cerrada).
- [ ] Ajustes en móvil (barra de volumen con el dedo).
- [ ] Probar la progresión jugando de verdad (sin trucos): el ritmo de las primeras palas (la 2 cuesta 2.200 y un bicho común da 3 💰/s).
- [ ] Montañas de bloques (`workspace.Mountains`): rendimiento en móvil y que desaparezcan bien en la cinemática final / paso al infierno.

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

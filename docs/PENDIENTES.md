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

## Bugs / a medias
- [ ] **Animación publicada de la pala 29** (seguo970, 21/10): `130701784003158` y `109501587444048` están vacías (0 fotogramas). `103511085846454` (bbogatell) tiene la «Rey» completa, pero al reproducirla el cráneo, la mandíbula, el halo y la capa (Motor6D del importador) se separan de la pala. La pala 29 sigue con la animación horneada (`ShovelAnim`), que se ve bien. Solo haría falta publicar una animación si se quiere cambiar el movimiento; habría que arreglar esos 4 huesos en el Animation Editor, y aun así en la mano se movería 2,4 veces de más (ver CHANGELOG del 21/10).

## Sin probar
- [ ] **Pala 28 (Pala Galáctica)** (seguo970, 21/10): seguo970 la ha visto en Play y se ve bien. Falta mirarla en la tienda, en móvil y en la mano de otro jugador. Del prompt quedan sin hacer el «aparecer» de anillos y halo al sacarla y la flotación de ±0,05 (casi no se vería).
- [ ] Palas 29 y 30 importadas (`Models.Palas.L29`/`L30`, animadas): rendimiento en móvil y verlas en la mano de otro jugador. En la tienda la 30 se ve pálida sobre su tarjeta; la 29 sin mirar.
- [ ] Con **2 jugadores**: el bate (empuje y tirar el fósil), la trampa y el hielo sobre otro jugador.
- [ ] El evento del diamante y la cinemática final con el campo en su sitio nuevo (z −3208).
- [ ] Guardado real de la base y la velocidad (DataStore apagado en Studio) y que los fósiles se abran estando desconectado.
- [ ] Cuenta atrás, grietas y temblor de los fósiles vistos en pantalla.
- [ ] Rendimiento del carril con StreamingEnabled en móvil.
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
- [ ] **60 fósiles** → `ServerStorage.Models.Fosiles.<id>` (`C-I`…`MU-III`; los raros `C-S1` = ★, `C-S2` = ★★…). Ahora: roca de studs con un relieve sencillo.
- [ ] **30 palas** → `ReplicatedStorage.Models.Palas.L<n>` (`L1`…`L30`; así también salen en la tienda; `ServerStorage.Models.Palas` solo cambia la de la mano). Hechas: `L28`, `L29` y `L30` (modelos importados; cómo: `docs/IMPORTAR_MODELOS.md`). Ahora: los diseños de `ShovelLook` (por nivel) con los nombres nuevos; falta adaptarlos a los diseños de `PALAS.md`.
- [ ] **Decorado de las 15 parcelas**: piezas sencillas de `ServerStorage.LaneThemes` (dodo, esqueletos, volcán, puente de mosasaurio, templo, islas, T-Rex Galáctico…). Mejorable con modelos más detallados, sobre todo las estatuas.
- [ ] Bases: plataforma sencilla igual para todos con valla de madera (como «Roba un huevo»); la valla no choca.
- [ ] Objetos: modelos sencillos (bate, trampa, orbe de hielo, alfombra) y emojis en la tienda; mejorables con modelos e iconos propios.
- [ ] Cintas de correr: modelos sencillos por nivel (colores, neón, alas, cuernos, halo); mejorables. Faltan las pociones de velocidad y los packs de velocidad de «Roba un huevo» (no pedidos).

# Pendientes, ideas y bugs conocidos

> Marca con `[x]` lo terminado y pon quién lo hizo.

## Por hacer antes de lanzar
- [ ] Confirmar fecha y hora definitivas del evento (`Config.EVENT_TIME`).
- [ ] Crear los gamepasses y productos de Robux y poner sus IDs en `Config.PASSES` / `Config.PRODUCTS` (ahora están a 0): x2 Monedas, los 4 «Abrir fósil ya» (`OpenNow1-4`), la Alfombra Mágica, las trampas (`Traps3/10`), el hielo (`Freeze3/10`) y los packs de monedas; los de la velocidad: mejoras de cinta `Tread2-11` (`TRAINING.treadmills[n].robuxId`) y multiplicadores `SpeedX2-128` (`TRAINING.mults[n].id`).
- [ ] Poner **8 jugadores por servidor** en Game Settings → Places (no se puede desde un script).
- [ ] Revisar la economía jugando (precios de palas, tierra por bloque `DIRT.perVoxel`, precios de la máquina `DIRT.prices`, 2 % de fósiles, vida del fósil 60, venta ×60 s).
- [ ] Revisar las normas de Roblox sobre el premio en Robux y redactar las condiciones del premio.
- [ ] Subir los paquetes de monedas con Robux (5K/50K/500K se han quedado cortos con los precios nuevos).
- [ ] Borrar `StarterPlayerScripts.DebugLevelKey` (o dejarlo, solo funciona en Studio).

## Sin probar
- [ ] Con **2 jugadores**: el bate (empuje y tirar el fósil), la trampa y el hielo sobre otro jugador.
- [ ] El evento del diamante y la cinemática final con el campo en su sitio nuevo (z −3208).
- [ ] Guardado real de la base y la velocidad (DataStore apagado en Studio) y que los fósiles se abran estando desconectado.
- [ ] Cuenta atrás, grietas y temblor de los fósiles vistos en pantalla.
- [ ] Rendimiento del carril con StreamingEnabled en móvil.
- [ ] Ajustes en móvil (barra de volumen con el dedo).
- [ ] Montañas de bloques (`workspace.Mountains`): rendimiento en móvil y que desaparezcan bien en la cinemática final / paso al infierno.

## Ideas / mejoras
- [ ] Pendiente del fondo del lobby algo escalonada y un trozo de agua azul suelto a la derecha.
- [ ] Discord del juego (hay un brief preparado).

## Placeholders (modelos provisionales para sustituir)
> Para cambiar cualquiera: deja el modelo final en la carpeta indicada con el **id como nombre** y el juego lo usa en vez del provisional. Pon una pieza `Root` en la base (si no, se crea sola). Las palas necesitan una pieza `Handle` en la empuñadura, con el mango a lo largo de +Y y todo soldado al `Handle`.
- [ ] **198 bichos** → `ServerStorage.Models.Bichos.<id>` (id = número de su ficha en `BICHOS_DINOSAURIOS.md`, p. ej. `174` = T-Rex Galáctico). Ahora: dinosaurio de bloques genérico según el nombre, con los colores de su rareza.
- [ ] **60 fósiles** → `ServerStorage.Models.Fosiles.<id>` (`C-I`…`MU-III`; los raros `C-S1` = ★, `C-S2` = ★★…). Ahora: roca de studs con un relieve sencillo.
- [ ] **30 palas** → `ServerStorage.Models.Palas.L<n>` (`L1`…`L30`). Ahora: los diseños de `ShovelLook` (por nivel) con los nombres nuevos; falta adaptarlos a los diseños de `PALAS.md`.
- [ ] **Decorado de las 15 parcelas**: piezas sencillas de `ServerStorage.LaneThemes` (dodo, esqueletos, volcán, puente de mosasaurio, templo, islas, T-Rex Galáctico…). Mejorable con modelos más detallados, sobre todo las estatuas.
- [ ] Bases: plataforma sencilla igual para todos con valla de madera (como «Roba un huevo»); la valla no choca.
- [ ] Objetos: modelos sencillos (bate, trampa, orbe de hielo, alfombra) y emojis en la tienda; mejorables con modelos e iconos propios.
- [ ] Cintas de correr: modelos sencillos por nivel (colores, neón, alas, cuernos, halo); mejorables. Faltan las pociones de velocidad y los packs de velocidad de «Roba un huevo» (no pedidos).

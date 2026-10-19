# Pendientes, ideas y bugs conocidos

> Marca con `[x]` lo terminado y pon quién lo hizo.

## Por hacer antes de lanzar
- [ ] Confirmar fecha y hora definitivas del evento (`Config.EVENT_TIME`).
- [ ] Crear los gamepasses y productos de Robux y poner sus IDs en `Config.PASSES` / `Config.PRODUCTS` (ahora están a 0): x2 Monedas, Correr VIP, +1 Correr, los 4 «Abrir fósil ya» (`OpenNow1-4`) y los packs de monedas.
- [ ] Poner **8 jugadores por servidor** en Game Settings → Places (no se puede desde un script).
- [ ] Revisar la economía jugando (precios de palas, `DIG_VALUE`, 6 % de fósiles, vida del fósil 60, venta ×60 s).
- [ ] Revisar las normas de Roblox sobre el premio en Robux y redactar las condiciones del premio.
- [ ] Subir los paquetes de monedas con Robux (5K/50K/500K se han quedado cortos con los precios nuevos).
- [ ] Borrar `StarterPlayerScripts.DebugLevelKey` (o dejarlo, solo funciona en Studio).

## Sin probar
- [ ] Con **2 jugadores**: pegar a quien lleva un fósil hasta que se le cae y cogerlo.
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
- [ ] Bases: plataforma sencilla igual para todos (borde, postes y puerta); mejorable.

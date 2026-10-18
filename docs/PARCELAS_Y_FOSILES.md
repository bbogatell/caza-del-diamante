# Parcelas y fósiles

> Diseño de las **15 parcelas** del carril de excavación y de los **fósiles** que se encuentran en ellas. Va junto a [`BICHOS_DINOSAURIOS.md`](BICHOS_DINOSAURIOS.md) (los 198 bichos) y sigue su mismo estilo: todo de bloques con textura de studs, cartoon y cada vez más épico. Solo el **interior excavable** de cada parcela es terreno realista (regla de `CLAUDE.md`).

## Cómo funciona

1. Las 15 parcelas van **una detrás de otra** en un carril largo que sale del lobby. Al final, después de la parcela 15, está el campo del diamante.
2. **Para cavar en una parcela hace falta su pala** (o una mejor). Con una pala peor, el suelo está «demasiado duro». Se mantienen las **30 palas**: la parcela N pide la pala **2N−1** (parcela 1 → pala 1, parcela 2 → pala 3… parcela 15 → pala 29). Las palas pares sirven para cavar más rápido o con más daño en la parcela que ya tienes, y la pala 30 es la mejor para la última parcela.
3. Al cavar puede salir un **fósil**. Su rareza depende de la parcela (tabla de cada parcela). El jugador lo lleva **encima de la cabeza** hasta su base. Mientras lo lleva, va más lento según el **peso** del fósil, y otros jugadores le pueden pegar para que lo suelte.
4. En la base, el fósil queda asegurado y **se abre con el tiempo**. Al abrirse sale un **bicho** de la rareza del fósil.

### Rarezas de bicho y su color

Cada rareza de bicho tiene un color que llevan todos sus fósiles, para reconocerlos de un vistazo:

| Rareza | Color de sus fósiles |
|---|---|
| Común | gris piedra |
| Poco común | verde |
| Raro | azul |
| Épico | morado |
| Legendario | dorado |
| Mítico | rojo fuego |
| Cósmico | galaxia (azul noche, morado y rosa) |
| Secreto | negro con morado |
| Eterno | cian y blanco brillante |
| Divino | blanco, oro y arcoíris |
| Brainrot | colores chillones (rosa, amarillo, verde lima) |
| Mutante | verde tóxico y metal |
| Evento | no tiene fósiles normales: sus bichos solo salen de **fósiles raros de evento** |

### Los 3 fósiles normales de cada rareza (I, II y III)

Cada rareza tiene 3 fósiles. **Cuanto mejor es el fósil, mejor es el bicho que suele dar**, pero también es más grande, pesa más y tarda más en abrirse.

| Fósil | Probabilidad de salir* | Qué bichos da (de su rareza, ordenados por lo que generan) | Peso al llevarlo |
|---|---|---|---|
| **I** | 60 % | Solo la **mitad baja** (los que menos generan) | −10 % de velocidad |
| **II** | 30 % | **Cualquiera** de la rareza, todos con la misma probabilidad | −20 % |
| **III** | 10 % | Solo la **mitad alta**, y además un **10 %** de dar un bicho de la **rareza siguiente** | −30 % |

\* Una vez decidida la rareza del fósil (por la tabla de la parcela), estas son las probabilidades de que sea I, II o III. En la **última parcela donde aparece cada rareza**, el III sube al 20 % y el I baja al 50 %.

### Los 2 fósiles raros de evento de cada rareza (★ y ★★)

- Solo aparecen **durante eventos**, y **solo uno por servidor** en todo el evento: el primero que lo desentierra se lo lleva (aviso a todo el servidor: «¡Fulano ha encontrado un fósil raro!»).
- Dan un bicho **dos rarezas por encima** de la suya. Por ejemplo, un fósil raro Épico da un bicho Mítico.
  - **★** da cualquier bicho de esa rareza superior.
  - **★★** da solo la mitad alta de esa rareza superior.
- **En las parcelas avanzadas (11 a 15) también pueden dar bichos de Evento**, los que ya están en la lista de bichos: los 6 Dragosaurios y los bichos «de evento» con número (#007, #001, #010, #013). Ver la tabla de cada fósil raro.
- Pesan mucho (−35 % de velocidad) y brillan muchísimo: todo el servidor ve dónde va quien lo lleva (contorno visible a través de las paredes). Son un imán para robos.

### Tiempos de apertura

| Rareza | Fósil I | Fósil II | Fósil III | Raro ★ / ★★ |
|---|---|---|---|---|
| Común | 10 s | 20 s | 30 s | 3 min / 4 min |
| Poco común | 30 s | 45 s | 1 min | 8 min / 10 min |
| Raro | 1 min | 2 min | 3 min | 18 min / 25 min |
| Épico | 3 min | 5 min | 8 min | 45 min / 1 h |
| Legendario | 8 min | 12 min | 18 min | 1 h 30 / 2 h |
| Mítico | 20 min | 30 min | 45 min | 3 h / 4 h |
| Cósmico | 45 min | 1 h | 1 h 30 | 6 h / 8 h |
| Secreto | 1 h 30 | 2 h | 3 h | 12 h / 14 h |
| Eterno | 3 h | 5 h | 8 h | 16 h / 18 h |
| Divino | 8 h | 12 h | 18 h | 18 h / 18 h |
| Brainrot | 2 min | 10 min | 30 min | 1 h / 2 h |
| Mutante | 15 min | 1 h | 3 h | 6 h / 10 h |

### Estilo de todos los fósiles (para modelarlos)

- Bloque o forma de roca hecha con piezas sencillas, con la **textura de studs** (`rbxassetid://6348166067`), del color de su rareza.
- Se ven **huesos, huellas o siluetas** del bicho incrustados en relieve (piezas de color hueso o Neon).
- **I:** pequeño y sencillo (2-3 studs, 8-15 piezas, sin partículas o casi).
- **II:** más grande (3-4 studs, 15-30 piezas), con partes brillantes y 1-2 emisores.
- **III:** grande e impresionante (4-6 studs, 30-60 piezas), con cristales o metal incrustado, 3-5 emisores y luz.
- **Raros ★ / ★★:** espectaculares (5-8 studs, 60-120 piezas), con 6-12 emisores, luz fuerte, contorno brillante y un haz de luz hacia el cielo mientras están enterrados (para que se vea dónde hay que cavar durante el evento).
- **Al abrirse:** el fósil se agrieta (grietas en Neon que crecen durante el último 10 % del tiempo), tiembla y explota en trozos que dejan ver al bicho. Cuanto mejor es el fósil, mayor es la explosión.

---

## Las 15 parcelas

> Cada parcela es **muy grande** (para muchos jugadores a la vez) y tiene la forma de un hoyo enorme de terreno realista rodeado de su decoración en bloques de studs a escala gigante. La entrada de cada parcela es un **arco** con su número y nombre, y una **puerta de pala**: un cartel con el dibujo de la pala necesaria.
>
> La decoración crece en epicidad con el nivel, igual que los bichos: de unos pocos helechos en la parcela 1 a estructuras colosales, cientos de piezas y decenas de emisores en la 15.
>
> **Porcentajes:** probabilidad de la **rareza** de cada fósil que sale en esa parcela. Después se decide si es I, II o III (ver arriba). Los **fósiles raros de evento** que pueden salir en cada parcela (solo durante eventos) son los de las rarezas que aparecen en ella.

**1. Bosque de Helechos** · pala 1
- **Tema:** el principio de todo: un bosque bajo y verde con helechos gigantes, huevos rotos y nidos de Dodos.
- **Terreno que se cava:** `Ground` (tierra marrón) con capas de `Grass` en la superficie.
- **Decoración (studs):** helechos gigantes de bloques verdes, troncos caídos, nidos con huevos de colores, un Dodo de piedra gigante en la entrada y setas rojas.
- **Colores:** verdes y marrones suaves, cielo claro.
- **Ambiente:** pocas hojas que caen, mariposas.
- **Fósiles:** Común 75 % · Poco común 22 % · Raro 3 %.

**2. Pantano Jurásico** · pala 3
- **Tema:** pantano con agua verde, nenúfares gigantes y troncos podridos.
- **Terreno que se cava:** `Mud` (barro).
- **Decoración:** nenúfares enormes, juncos altos, troncos huecos, un esqueleto de Compsognathus sobre una roca, charcos (Glass verde translúcido).
- **Colores:** verde oscuro, marrón y verde agua.
- **Ambiente:** burbujas que salen del barro, luciérnagas, niebla baja.
- **Fósiles:** Común 40 % · Poco común 40 % · Raro 18 % · Épico 2 %.

**3. Playa de Ámbar** · pala 5
- **Tema:** costa prehistórica con arena dorada, gotas gigantes de ámbar con insectos dentro y conchas de amonites.
- **Terreno que se cava:** `Sand` (arena).
- **Decoración:** amonites gigantes en espiral, gotas de ámbar enormes en Neon naranja translúcido con un mosquito dentro, palmeras prehistóricas (cicas), olas de bloques azules.
- **Colores:** dorado, naranja ámbar, azul mar.
- **Ambiente:** brillos dorados en el ámbar, gaviotas prehistóricas.
- **Fósiles:** Poco común 35 % · Raro 45 % · Épico 17 % · Legendario 1 % · Brainrot 2 %.

**4. Cañón de Arena Roja** · pala 7
- **Tema:** cañón desértico de rocas rojas en capas, con huellas gigantes de dinosaurio en las paredes.
- **Terreno que se cava:** `Sandstone` (arenisca).
- **Decoración:** paredes en capas rojas y naranjas, arcos de piedra, huellas gigantes en relieve, cactus prehistóricos, un esqueleto de Triceratops semienterrado.
- **Colores:** rojo, naranja, arena.
- **Ambiente:** remolinos de arena, polvo en el aire.
- **Fósiles:** Raro 40 % · Épico 45 % · Legendario 12 % · Mítico 1 % · Brainrot 2 %.

**5. Selva Cretácica** · pala 9
- **Tema:** selva espesa con árboles gigantes, lianas, flores enormes y una cascada.
- **Terreno que se cava:** `LeafyGrass` arriba y `Ground` debajo.
- **Decoración:** árboles colosales de bloques con raíces, lianas colgando, flores gigantes de colores, una cascada de bloques azules, un Braquiosaurio de piedra asomando entre los árboles.
- **Colores:** verdes intensos, flores rosa y naranja.
- **Ambiente:** hojas, luciérnagas, gotas de la cascada y pájaros.
- **Fósiles:** Épico 45 % · Legendario 42 % · Mítico 10 % · Brainrot 3 %.

**6. Tundra de los Mamuts** · pala 11
- **Tema:** llanura helada de la edad de hielo con mamuts congelados en bloques de hielo.
- **Terreno que se cava:** `Snow` arriba e `Ice` debajo.
- **Decoración:** bloques de hielo gigantes con mamuts y Triceratops congelados dentro, carámbanos enormes, pinos nevados, un esqueleto de Megaterio de pie.
- **Colores:** blanco, azul hielo y gris.
- **Ambiente:** nieve que cae, vaho, brillo de escarcha.
- **Fósiles:** Legendario 50 % · Mítico 38 % · Cósmico 8 % · Mutante 2 % · Brainrot 2 %.

**7. Volcán Humeante** · pala 13
- **Tema:** las faldas de un volcán en erupción, con ríos de lava y rocas negras.
- **Terreno que se cava:** `Basalt` con vetas de `CrackedLava`.
- **Decoración:** un volcán colosal al fondo echando humo, ríos de lava (Neon naranja), rocas negras con grietas brillantes, un Espinosaurio de obsidiana en la entrada.
- **Colores:** negro, rojo y naranja.
- **Ambiente:** ceniza, brasas que suben, humo y temblores de vez en cuando.
- **Fósiles:** Legendario 25 % · Mítico 50 % · Cósmico 20 % · Secreto 1 % · Mutante 2 % · Brainrot 2 %.

**8. Abismo Marino Seco** · pala 15
- **Tema:** el fondo de un océano prehistórico que se ha secado: corales gigantes, conchas y esqueletos de reptiles marinos.
- **Terreno que se cava:** `Salt` (sal) y `Limestone` (caliza).
- **Decoración:** corales enormes de colores, esqueleto colosal de Mosasaurio arqueado sobre la parcela como un puente, conchas gigantes, algas secas.
- **Colores:** azul profundo, coral rosa y blanco hueso.
- **Ambiente:** burbujas que flotan en el aire, rayos de luz como bajo el agua.
- **Fósiles:** Mítico 40 % · Cósmico 45 % · Secreto 11 % · Mutante 2 % · Brainrot 2 %.

**9. Cementerio de Gigantes** · pala 17
- **Tema:** un valle lleno de esqueletos colosales de dinosaurios, con niebla y cuervos.
- **Terreno que se cava:** `Slate` (pizarra) oscuro.
- **Decoración:** costillares gigantes que forman arcos, cráneos enormes de T-Rex y Triceratops, lápidas de piedra, árboles secos, farolas con fuego verde.
- **Colores:** gris, blanco hueso, verde fantasma.
- **Ambiente:** niebla, cuervos, fuego verde, polvo de hueso.
- **Fósiles:** Mítico 15 % · Cósmico 50 % · Secreto 30 % · Eterno 1 % · Mutante 2 % · Brainrot 2 %.

**10. Cueva de Cristal** · pala 19
- **Tema:** una caverna gigante llena de cristales brillantes de colores.
- **Terreno que se cava:** `Glacier` y `Rock`.
- **Decoración:** racimos de cristales colosales en Neon (rosa, cian, morado), estalactitas, un Estegosaurio de cristal gigante en la entrada, setas luminosas.
- **Colores:** morado oscuro con cristales de colores brillantes.
- **Ambiente:** destellos, polvo brillante, luz pulsante de los cristales.
- **Fósiles:** Cósmico 40 % · Secreto 48 % · Eterno 8 % · Mutante 2 % · Brainrot 2 %.

**11. Templo Perdido** · pala 21
- **Tema:** las ruinas de un templo antiguo construido por dinosaurios, con estatuas gigantes y runas.
- **Terreno que se cava:** `Cobblestone` y `Limestone`.
- **Decoración:** columnas colosales, escalinatas, estatuas gigantes de Rex y Raptores guardianes, runas en Neon dorado, braseros con fuego, enredaderas.
- **Colores:** piedra beige, dorado y verde musgo.
- **Ambiente:** runas flotando, polvo dorado, fuego de los braseros.
- **Fósiles:** Cósmico 15 % · Secreto 55 % · Eterno 25 % · Divino 1 % · Mutante 2 % · Brainrot 2 %.

**12. Islas del Cielo** · pala 23
- **Tema:** islas flotantes entre las nubes, unidas por puentes, donde anidan los pterosaurios.
- **Terreno que se cava:** la isla principal, de `Ground` y `Rock` (las islas pequeñas de alrededor son decoración de studs).
- **Decoración:** islas flotantes con cascadas que caen al vacío, puentes colgantes, nidos gigantes de Quetzalcoatlus, nubes de bloques blancas, un arco de nubes en la entrada.
- **Colores:** azul cielo, blanco nube, verde y dorado.
- **Ambiente:** nubes que pasan, plumas, viento, rayos de sol.
- **Fósiles:** Secreto 45 % · Eterno 46 % · Divino 5 % · Mutante 3 % · Brainrot 1 %.

**13. Grieta Dimensional** · pala 25
- **Tema:** el suelo se ha roto y deja ver otra dimensión: fragmentos de roca flotan y hay portales.
- **Terreno que se cava:** `Asphalt` (oscuro) con capas de `CrackedLava` en tono morado (color del material cambiado a morado).
- **Decoración:** rocas flotantes girando, portales en Neon morado, grietas de energía en el suelo, un Dragón Fracturado de piedra suspendido en el aire.
- **Colores:** negro, morado y rosa neón.
- **Ambiente:** fragmentos flotando, chispas moradas, distorsión, relámpagos.
- **Fósiles:** Secreto 20 % · Eterno 63 % · Divino 13 % · Mutante 4 %.

**14. Nebulosa de los Dioses** · pala 27
- **Tema:** una parcela en el espacio: plataformas sobre una nebulosa, con planetas y anillos alrededor.
- **Terreno que se cava:** `Glacier` (con color cambiado a morado cósmico) y `Basalt`.
- **Decoración:** planetas gigantes de bloques orbitando, anillos de Saturno, estrellas en Neon, constelaciones de dinosaurios dibujadas en el cielo, un T-Rex de nebulosa enorme mirando desde arriba.
- **Colores:** negro espacial, morado, azul y rosa con estrellas blancas.
- **Ambiente:** estrellas, cometas, polvo cósmico, auroras.
- **Fósiles:** Eterno 60 % · Divino 35 % · Mutante 5 %.

**15. Trono del Rey Galáctico** · pala 29
- **Tema:** la parcela definitiva: un santuario colosal de oro y luz en el que reina una estatua gigantesca del T-Rex Galáctico, justo antes del campo del diamante.
- **Terreno que se cava:** `Foil` (oro) y `Marble` (mármol) en capas, con vetas de `Glacier` brillante.
- **Decoración:** estatua colosal del T-Rex Galáctico sentado en un trono, columnas de oro, escaleras de luz, halos flotando, cascadas de luz, arcos con gemas y un portal dorado hacia el campo del diamante.
- **Colores:** oro, blanco, arcoíris y galaxia.
- **Ambiente:** partículas arcoíris, rayos de luz desde el cielo, estrellas, polvo dorado y ondas de energía.
- **Fósiles:** Eterno 30 % · Divino 65 % · Mutante 5 %.

### Resumen de rarezas por parcela

| Parcela | Com | PoC | Raro | Épi | Leg | Míti | Cósm | Secr | Eter | Div | Brain | Mut |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | 75 | 22 | 3 | | | | | | | | | |
| 2 | 40 | 40 | 18 | 2 | | | | | | | | |
| 3 | | 35 | 45 | 17 | 1 | | | | | | 2 | |
| 4 | | | 40 | 45 | 12 | 1 | | | | | 2 | |
| 5 | | | | 45 | 42 | 10 | | | | | 3 | |
| 6 | | | | | 50 | 38 | 8 | | | | 2 | 2 |
| 7 | | | | | 25 | 50 | 20 | 1 | | | 2 | 2 |
| 8 | | | | | | 40 | 45 | 11 | | | 2 | 2 |
| 9 | | | | | | 15 | 50 | 30 | 1 | | 2 | 2 |
| 10 | | | | | | | 40 | 48 | 8 | | 2 | 2 |
| 11 | | | | | | | 15 | 55 | 25 | 1 | 2 | 2 |
| 12 | | | | | | | | 45 | 46 | 5 | 1 | 3 |
| 13 | | | | | | | | 20 | 63 | 13 | | 4 |
| 14 | | | | | | | | | 60 | 35 | | 5 |
| 15 | | | | | | | | | 30 | 65 | | 5 |

> **Palas:** se mantienen las 30 palas actuales. La parcela N pide la pala 2N−1 (columna «pala» de cada parcela). Las palas pares no abren parcela nueva, pero cavan más rápido en la parcela en la que estás.

---

## Fósiles normales (36: 3 por rareza)

> Formato: **nombre** · tamaño · apertura · qué da. Los bichos de cada rareza están en [`BICHOS_DINOSAURIOS.md`](BICHOS_DINOSAURIOS.md); «mitad baja» y «mitad alta» se refieren a esa rareza ordenada por lo que generan.

### Común (gris piedra) · parcelas 1-2

**C-I. Piedra con Huella** · 2 studs · 10 s · mitad baja de Común
- Losa de piedra gris con una huella de dinosaurio de tres dedos hundida en relieve. Sin partículas.

**C-II. Huesito Fósil** · 2,5 studs · 20 s · cualquier Común
- Roca gris redondeada con un hueso pequeño color hueso incrustado y una ramita de helecho fosilizada. 1 emisor de polvo (ritmo 2).

**C-III. Cráneo de Dodo** · 3 studs · 30 s · mitad alta de Común (10 % de Poco común)
- Bloque de piedra con un cráneo de pico ganchudo asomando y dos piedrecitas brillantes como ojos. 2 emisores: polvo y destellos blancos (ritmo 4). Luz blanca tenue.

### Poco común (verde) · parcelas 1-3

**PC-I. Helecho Fósil** · 2 studs · 30 s · mitad baja de Poco común
- Losa verde musgo con una hoja de helecho fosilizada en relieve verde claro.

**PC-II. Diente de Raptor** · 3 studs · 45 s · cualquier Poco común
- Roca verde con un diente curvo enorme saliendo de ella. 1 emisor de hojitas (ritmo 3).

**PC-III. Garra Esmeralda** · 3,5 studs · 1 min · mitad alta de Poco común (10 % de Raro)
- Roca verde oscura con una garra de raptor completa y cristales verdes incrustados. 3 emisores: hojas, destellos verdes y polvo. Luz verde.

### Raro (azul) · parcelas 1-4

**R-I. Amonites Azul** · 2,5 studs · 1 min · mitad baja de Raro
- Concha de amonites en espiral, azul, con studs.

**R-II. Vértebra Azul** · 3,5 studs · 2 min · cualquier Raro
- Roca azul con una columna de vértebras en relieve. 2 emisores: burbujas y destellos azules.

**R-III. Cráneo de Zafiro** · 4 studs · 3 min · mitad alta de Raro (10 % de Épico)
- Cráneo de dinosaurio de piedra azul con zafiros en Neon azul en los ojos. 3 emisores (destellos, polvo azul, burbujas) y luz azul.

### Épico (morado) · parcelas 2-5

**E-I. Huevo Petrificado** · 3 studs · 3 min · mitad baja de Épico
- Huevo de dinosaurio de piedra morada con grietas. 1 emisor de polvo morado.

**E-II. Cuerno Amatista** · 4 studs · 5 min · cualquier Épico
- Roca morada de la que sale un cuerno de triceratops con amatistas incrustadas. 2 emisores (destellos morados y polvo) y luz morada.

**E-III. Cráneo Épico** · 5 studs · 8 min · mitad alta de Épico (10 % de Legendario)
- Cráneo grande de raptor morado sobre una base de roca con cristales en Neon morado y una garra saliendo. 4 emisores (destellos, chispas moradas, polvo y humo morado) y luz morada.

### Legendario (dorado) · parcelas 3-7

**L-I. Hueso Dorado** · 3 studs · 8 min · mitad baja de Legendario
- Roca con un hueso largo dorado incrustado. 1 emisor de destellos dorados.

**L-II. Huevo de Oro** · 4 studs · 12 min · cualquier Legendario
- Huevo de dinosaurio de oro con dibujos en relieve, medio enterrado en roca. 3 emisores (destellos, monedas y polvo dorado) y luz dorada.

**L-III. Cráneo del Rey Dorado** · 5,5 studs · 18 min · mitad alta de Legendario (10 % de Mítico)
- Cráneo de T-Rex de oro macizo con una corona y gemas rojas en los ojos sobre un pedestal de roca. 4 emisores (destellos, monedas, rayos dorados y polvo), luz dorada y brillo en el suelo.

### Mítico (rojo fuego) · parcelas 4-9

**M-I. Ámbar Rojo** · 3,5 studs · 20 min · mitad baja de Mítico
- Gota grande de ámbar rojo translúcido con una pluma dentro. 2 emisores (brasas y destellos rojos).

**M-II. Garra de Rubí** · 4,5 studs · 30 min · cualquier Mítico
- Roca negra con una garra gigante de rubí en Neon rojo. 3 emisores (brasas, chispas y humo) y luz roja.

**M-III. Corazón de Lava** · 6 studs · 45 min · mitad alta de Mítico (10 % de Cósmico)
- Roca volcánica agrietada con un corazón de lava latiendo en el centro (Neon naranja que pulsa) y un cráneo de dinosaurio encima. 5 emisores (fuego, brasas, humo, chispas y calor), luz roja pulsante y aura a ras de suelo.

### Cósmico (galaxia) · parcelas 6-11

**CO-I. Meteorito Estelar** · 3,5 studs · 45 min · mitad baja de Cósmico
- Meteorito negro con estrellas brillantes en las grietas. 2 emisores (estrellas y polvo cósmico).

**CO-II. Geoda Galáctica** · 5 studs · 1 h · cualquier Cósmico
- Roca partida por la mitad que deja ver una galaxia en su interior, con un hueso flotando dentro. 4 emisores (estrellas, nebulosa, destellos y polvo) y luz morada.

**CO-III. Cráneo de Nebulosa** · 6 studs · 1 h 30 · mitad alta de Cósmico (10 % de Secreto)
- Cráneo de dinosaurio hecho de nebulosa semitransparente, con planetas pequeños en órbita y una base de meteorito. 5 emisores (estrellas, nebulosa, cometas, destellos y polvo), 2 luces y estrellas en órbita.

### Secreto (negro y morado) · parcelas 7-13

**S-I. Obsidiana Sellada** · 4 studs · 1 h 30 · mitad baja de Secreto
- Bloque de obsidiana negra con un sello rúnico morado en el centro. 2 emisores (humo negro y chispas moradas).

**S-II. Cráneo Sombrío** · 5 studs · 2 h · cualquier Secreto
- Cráneo negro con los ojos en Neon morado, envuelto en cadenas, sobre roca oscura. 4 emisores (humo, niebla, chispas y almas) y contorno negro y morado.

**S-III. Reliquia Prohibida** · 6,5 studs · 3 h · mitad alta de Secreto (10 % de Eterno)
- Cofre de piedra negra con huesos, runas moradas y una grieta de la que sale luz morada; cadenas rotas alrededor. 5 emisores (humo negro, niebla morada, runas, relámpagos y chispas), contorno y luz morada pulsante.

### Eterno (cian y blanco) · parcelas 9-15

**ET-I. Cristal Eterno** · 4,5 studs · 3 h · mitad baja de Eterno
- Cristal cian gigante con un fósil de dinosaurio dentro. 3 emisores (destellos, polvo de luz y escarcha) y luz cian.

**ET-II. Huevo Rúnico** · 5,5 studs · 5 h · cualquier Eterno
- Huevo de dinosaurio blanco con runas cian brillantes que giran y un anillo de energía alrededor. 4 emisores y un anillo de energía girando.

**ET-III. Núcleo Eterno** · 7 studs · 8 h · mitad alta de Eterno (10 % de Divino)
- Esfera de energía cian dentro de una jaula de costillas de dinosaurio de cristal, con tres anillos de energía girando. 5 emisores, 3 anillos, `Beam` de luz hacia arriba y pulso cada 4 s.

### Divino (blanco, oro y arcoíris) · parcelas 11-15

**D-I. Ámbar Celestial** · 5 studs · 8 h · mitad baja de Divino
- Gota de ámbar dorado gigante con una pluma de ángel dentro y una aureola pequeña encima. 4 emisores (destellos dorados, plumas, arcoíris y rayos) y luz dorada.

**D-II. Huevo Divino** · 6 studs · 12 h · cualquier Divino
- Huevo de oro y mármol blanco con alas pequeñas de luz, una aureola y gemas arcoíris. 5 emisores, halo y columna de luz pequeña.

**D-III. Corona del Primer Rey** · 8 studs · 18 h · mitad alta de Divino (10 %: el mejor Divino de su mitad)
- Cráneo gigante de T-Rex de oro y cristal con una corona de planetas, sobre un pedestal de mármol con runas arcoíris. 5 emisores (arcoíris, estrellas, destellos, plumas y rayos), halo, columna de luz y onda de choque cada 3 s.
- Como no hay rareza por encima del Divino, su 10 % extra es un **reintento**: si sale un Divino de la mitad alta, se vuelve a tirar y se queda con el mejor de los dos.

### Brainrot (colores chillones) · parcelas 3-12

**B-I. Huevo Disco** · 3 studs · 2 min · mitad baja de Brainrot
- Huevo de dinosaurio con rayas de colores chillones y una bola de discoteca pequeña encima. 1 emisor de confeti.

**B-II. Pizza Fosilizada** · 4 studs · 10 min · cualquier Brainrot
- Pizza de piedra con un hueso de dinosaurio como pepperoni y zapatillas de deporte pegadas. 2 emisores (confeti y notas musicales).

**B-III. Cappuccino Jurásico** · 5 studs · 30 min · mitad alta de Brainrot (10 % de un Brainrot del tercio más alto)
- Taza gigante de café fosilizada con un cráneo de raptor saliendo de la espuma. 4 emisores (vapor, granos de café, corazones y confeti) y luz rosa.

### Mutante (verde tóxico y metal) · parcelas 6-15

**MU-I. Vial Fosilizado** · 3,5 studs · 15 min · mitad baja de Mutante
- Tubo de ensayo de piedra roto con líquido en Neon verde dentro y una garra asomando. 2 emisores (burbujas y vapor).

**MU-II. Cápsula Mutante** · 5 studs · 1 h · cualquier Mutante
- Cápsula de laboratorio metálica medio enterrada con una ventana por la que se ve una criatura y tubos con líquido verde. 4 emisores (burbujas, vapor, chispas y gotas) y luz verde.

**MU-III. Núcleo Mecha** · 6,5 studs · 3 h · mitad alta de Mutante (10 % de un **Mecha** del tercio más alto)
- Reactor metálico con un núcleo verde brillante y cables, del que sale un brazo robótico de dinosaurio. 5 emisores (chispas, humo, vapor, rayos y luces de alarma) y luz verde pulsante.

---

## Fósiles raros de evento (24: 2 por rareza)

> Solo durante eventos y **uno por servidor**. Salen en las parcelas donde aparece su rareza. Dan un bicho **dos rarezas por encima**: **★** cualquiera de esa rareza, **★★** solo la mitad alta. Todos llevan un haz de luz hacia el cielo mientras están enterrados, y contorno visible a través de las paredes mientras alguien los lleva.

### Bichos de Evento (el premio de los raros más altos)

Son los 6 **Dragosaurios** de la rareza Evento y los bichos «de evento» con número de otras rarezas:

| Bicho | Rareza | Genera |
|---|---|---|
| Dragosaurio Aurora Bebé | Evento | 5M $/s |
| Dragosaurio Sombra | Evento | 25M $/s |
| Dragosaurio Chamuscado | Evento | 35M $/s |
| Dragosaurio Taladro | Evento | 100M $/s |
| Dragosaurio del Vacío | Evento | 120M $/s |
| Dragosaurio Ascua | Evento | 600M $/s |
| Amonites Ciudadela #007 | Mítico | 12,5M $/s |
| Mordisquitos #013 | Cósmico | 185K $/s |
| Experimento #001 | Secreto | 285M $/s |
| Experimento #010 Dragón Rosa | Eterno | 2,5B $/s |

**Regla de las parcelas avanzadas:** si un fósil raro sale en las **parcelas 11 a 15**, tiene la probabilidad de dar un **bicho de Evento** que indica cada ficha. Si no, da lo normal. Cuando da un bicho de Evento, ★ elige cualquiera de la tabla y ★★ uno de la mitad que más genera.

### Común → da Raro

**C-★. Huella de Oro** · 4 min
- Losa de piedra con una huella gigante rellena de oro brillante. 6 emisores (destellos dorados, polvo, rayos, estrellitas, hojas y brillo), luz dorada y haz de luz.

**C-★★. Nido Petrificado** · 4 min
- Nido de piedra con tres huevos fosilizados de colores que brillan. 7 emisores y luz de colores pulsante.

### Poco común → da Épico

**PC-★. Helecho de Esmeralda** · 8 min
- Helecho fosilizado hecho de esmeraldas en Neon verde. 6 emisores, luz verde y haz.

**PC-★★. Colmillo Jade** · 10 min
- Colmillo de raptor enorme de jade tallado con runas. 7 emisores y contorno verde.

### Raro → da Legendario

**R-★. Amonites de Zafiro** · 18 min
- Amonites gigante de zafiro en Neon azul con agua girando dentro. 7 emisores y luz azul.

**R-★★. Corazón del Océano** · 25 min
- Perla azul gigante dentro de una concha fosilizada abierta. 8 emisores, anillo de agua girando y luz azul pulsante.

### Épico → da Mítico

**E-★. Huevo de Amatista** · 45 min
- Huevo de dinosaurio de amatista facetada con un embrión brillando dentro. 8 emisores y luz morada.

**E-★★. Cráneo Coronado** · 1 h
- Cráneo de raptor con una corona de amatistas y ojos en Neon morado. 9 emisores, anillo de energía morado y haz.

### Legendario → da Cósmico

**L-★. Lingote Jurásico** · 1 h 30
- Lingote de oro gigante con un esqueleto de dinosaurio grabado en relieve. 8 emisores (monedas, destellos, rayos…) y luz dorada.

**L-★★. Trono Fosilizado** · 2 h
- Trono pequeño de oro y hueso con un cráneo de T-Rex en el respaldo. 10 emisores, halo dorado y haz.

### Mítico → da Secreto

**M-★. Ámbar de Fénix** · 3 h
- Ámbar rojo gigante con una pluma de fuego que arde dentro. 9 emisores (fuego, brasas, humo…) y luz roja.

**M-★★. Corazón de Volcán** · 4 h
- Roca volcánica con un corazón de magma que late y lava cayendo. 10 emisores, pulso de calor y haz rojo.

### Cósmico → da Eterno

**CO-★. Meteorito Caído** · 6 h
- Meteorito humeante con un cráter brillante y estrellas en su interior. 10 emisores y estrellas en órbita. **Parcela 11: 15 % de bicho de Evento.**

**CO-★★. Ojo de la Galaxia** · 8 h
- Esfera de cristal con una galaxia girando dentro, sostenida por garras de piedra. 11 emisores y 2 anillos. **Parcela 11: 15 % de bicho de Evento.**

### Secreto → da Divino

**S-★. Sarcófago Sombrío** · 12 h
- Sarcófago de obsidiana con forma de dinosaurio, cadenas moradas y runas. 11 emisores, contorno negro y morado y niebla. **Parcelas 11-13: 25 % de bicho de Evento.**

**S-★★. Grial del Vacío** · 14 h
- Copa de obsidiana de la que sale un portal morado con un ojo. 12 emisores, distorsión y relámpagos. **Parcelas 11-13: 25 % de bicho de Evento.**

### Eterno → da bicho de Evento o Divino

Dos rarezas por encima de Eterno ya no queda ninguna rareza normal, así que estos dan **bichos de Evento**:

**ET-★. Cristal del Tiempo** · 16 h
- Reloj de arena gigante de cristal cian con huesos de dinosaurio como arena y tres anillos girando. 12 emisores. **50 % bicho de Evento (cualquiera), 50 % Divino (cualquiera).**

**ET-★★. Huevo del Origen** · 18 h
- Huevo colosal de luz cian con runas eternas, dentro de un nido de cristal. 13 emisores, anillos y columna de luz. **100 % bicho de Evento (mitad alta).**

### Divino → da bicho de Evento

**D-★. Lágrima de los Dioses** · 18 h
- Gota de ámbar arcoíris gigante con un halo y alas de luz. 14 emisores, halo, columna de luz y onda de choque. **100 % bicho de Evento (cualquiera).**

**D-★★. Corazón del Rey Galáctico** · 18 h
- El corazón del T-Rex Galáctico: una estrella brillante dentro de una caja torácica de oro y cristal, con planetas en órbita. 16 emisores, halo, columna de luz, onda de choque y temblor. **100 % bicho de Evento de la mitad alta, con un 25 % de que sea directamente el Dragosaurio Ascua.**

### Brainrot → mejores Brainrot

**B-★. Bola Disco Fósil** · 1 h
- Bola de discoteca gigante de piedra con huesos de colores, girando y lanzando luces. 8 emisores. **Da un Brainrot de la mitad alta.**

**B-★★. Pizza Dorada Legendaria** · 2 h
- Pizza de oro con el queso en Neon y un hueso de T-Rex. 10 emisores. **Da Bombardino Rexodilo o Brachio Fragolini; en la parcela 11-12, 20 % de bicho de Evento.**

### Mutante → Mecha

**MU-★. Tanque de Clonación** · 6 h
- Tanque de laboratorio con un embrión de dinosaurio mecánico flotando en líquido verde. 10 emisores. **Da un Mecha cualquiera; en parcelas 11-15, 25 % de bicho de Evento.**

**MU-★★. Reactor Omega** · 10 h
- Reactor de guerra con un núcleo verde inestable y brazos robóticos. 12 emisores y relámpagos. **Da un Mecha de la mitad alta; en parcelas 11-15, 25 % de bicho de Evento.**

---

## Cifras

- **15 parcelas.**
- **60 fósiles:** 36 normales (12 rarezas × 3) y 24 raros de evento (12 rarezas × 2). La rareza Evento no tiene fósiles propios: sus bichos salen de los fósiles raros.

*Documento creado el 2026-10-18. Los porcentajes, tiempos y pesos son una propuesta inicial: habrá que ajustarlos al probar el juego.*

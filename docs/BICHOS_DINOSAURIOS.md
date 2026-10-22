# Bichos de La Caza del Diamante: los 198 dinosaurios

> Lista equivalente a la de «Roba un huevo» (ver [`REFERENCIA_ROBA_UN_HUEVO.md`](REFERENCIA_ROBA_UN_HUEVO.md)): **mismo número de bichos (198), mismas 13 rarezas y mismos ingresos por rareza**, pero todos de temática dinosaurio o animal prehistórico (algunos inventados). Va de un **Dodo Corriente** (1 $/s) a un **T-Rex Galáctico** (9.000 millones $/s).
>
> Cada ficha trae lo necesario para pedir el modelo 3D a Claude. **Antes de modelar cualquiera, aplica la guía de estilo de abajo (la parte común y la fila de su rareza)** y luego la ficha del bicho.

## Proceso para hacer un bicho (hechos: 1-37, 191)

**Guía completa paso a paso: [`GUIA_BICHOS.md`](GUIA_BICHOS.md).**

1. ChatGPT genera una ficha visual del bicho (pose principal, 4 vistas, animación en reposo y partículas) a partir de esta ficha.
2. Claude construye el modelo con un script en `ServerStorage.CreatureBuilders.<Nombre>` (usa `CreatureBuilders.Kit`), que lo guarda en `ServerStorage.Models.Bichos.<id>`.
3. Animación: los sencillos usan el rig `Generic` de `ReplicatedStorage.CreatureRigs` (piezas marcadas con el atributo `Role` = Head/Eye/Tail/Wing; atributos del modelo `HeadPivot`, `TailPivot`, `TailSway`, `HeadTilt`); los complicados tienen su propio rig.
4. Probar en el juego con `/bicho <id> base` + `/abrir`.

## Guía de estilo

### Común a todos

- **Estilo:** cartoon de Roblox / «Roba un huevo», construido con piezas sencillas (bloques, cuñas, cilindros, esferas) unidas entre sí. Se reconoce enseguida qué dinosaurio es: siluetas claras y rasgos exagerados (cuernos más largos, placas más grandes, mandíbulas más anchas que en la realidad).
- **Textura:** las piezas del cuerpo en `SmoothPlastic` con la textura de studs `rbxassetid://6348166067` (2 studs por casilla) y el color de la pieza. Sin studs: ojos, dientes, garras finas y piezas `Neon`.
- **Neon:** solo en lo que brilla (ojos mágicos, cristales, lava, runas, venas de energía, núcleos).
- **Ojos:** expresivos, de estilo cartoon (esfera blanca, pupila y brillo). En los bichos fieros, ceño marcado y pupila pequeña; en los adorables, ojos grandes.
- **Montaje:** todo anclado, con una pieza raíz invisible (`Root`) en la base para colocarlo en el pedestal.
- **Sin sonido:** los bichos no llevan ningún sonido. Si la ficha pide algo como «zumbido», se hace visual (vibración, pulsos).
- **Animación en reposo (todos):** respira (escala 1 → 1,03 en 2 s), parpadea cada 3-5 s y balancea la cola. Cada ficha añade su animación propia.
- **Animación de caminar (todos):** en la base, cada bicho se pasea despacio de vez en cuando por un círculo pequeño alrededor de donde se dejó (entre 2,5 y 7 studs según su tamaño), se gira hacia donde va y se para unos segundos entre paseo y paseo. Según el tipo:
  - **Con patas** (bípedos, cuadrúpedos, aves): las patas se balancean alternas al andar, y el cuerpo sube y baja un poco y se bambolea de lado. Los gordos se bambolean más y los de patas cortas dan pasitos rápidos.
  - **Voladores:** baten más las alas mientras avanzan.
  - **Sin patas** (tentáculos, serpientes, peces, babosas, robots con orugas): se deslizan, reptan o flotan, y lo que tengan (tentáculos, cola, aletas, orugas) se mueve más rápido mientras avanzan.

  Al modelarlo: marcar las piezas de cada pata con `Role = "Leg"`, `Side` (1 / −1) y `LegPivot` (la cadera), y ajustar `StepRate`/`Waddle` en el modelo si hace falta (ver el proceso arriba).

### Proporciones

- **Chibi (cabeza enorme, cuerpo rechoncho, patas cortitas): SOLO los Comunes y los bebés** (Proto Bebé, Ptero Chispa, Mordisquitos #013, Megalodón Bebé y Dragosaurio Aurora Bebé).
- **Todos los demás:** proporciones de dinosaurio de verdad, pero exageradas en estilo cartoon: cabeza a escala real o algo grande, cuerpos más musculosos y anchos de lo normal, patas gruesas y potentes, rasgos de cada especie aumentados. Cuanto más alta la rareza, **más robusto, más blindado, más grande y más imponente**.

### Escalada por rareza (OBLIGATORIA)

Cada rareza **supera claramente** a la anterior en tamaño, número de piezas, detalle y efectos. **Cada bicho tiene su altura exacta en su ficha (`Altura`)**, elegida según su especie, su forma y su valor: suele caer dentro del rango de su rareza y como mucho se sale un poco (los bebés y los bichos bajos y anchos por debajo; los más altos o valiosos de cada rareza por encima). Usa siempre la de la ficha. **Piezas:** desde que la animación va por huesos (ver `GUIA_BICHOS.md`), el número de piezas casi no afecta a los FPS, así que los bichos se hacen **muy detallados** (manchas y escamas sueltas, dientes uno a uno, dedos y garras, costillas de crestas y golas, bordes de otro color…). Los números de la tabla son el mínimo orientativo; los bichos 1-12 se hicieron antes con menos piezas. Los números de partículas son orientativos (ritmo = `Rate` del `ParticleEmitter`).

| Rareza | Altura (studs) | Piezas | Pose y presencia | Partículas y efectos |
|---|---|---|---|---|
| Común | 3-4 | 60-100 | Chibi, adorable, pose tranquila | Ninguna |
| Poco común | 4-5 | 100-160 | Cartoon normal, pose con personalidad | 1 emisor suave (ritmo 2-4) |
| Raro | 5-6 | 200-320 | Cartoon atlético, rasgos marcados | 1-2 emisores (ritmo 5-8) |
| Épico | 7-8 | 300-450 | Musculoso, pose de acción | 2-3 emisores (ritmo 10-15) + `PointLight` |
| Legendario | 9-10 | 400-600 | Robusto e imponente, escamas y placas en relieve | 3-4 emisores (ritmo 20-30) + luz + brillo dorado en el suelo |
| Mítico | 11-12 | 500-750 | Blindado o elemental, piezas brillantes incrustadas | 4-6 emisores (ritmo 30-50) + aura a ras de suelo + luz fuerte |
| Cósmico | 13-15 | 650-900 | Majestuoso, piezas flotando alrededor | 6-8 emisores (ritmo 50-80) + estrellas orbitando + 2 luces |
| Secreto | 16-18 | 800-1100 | Amenazador, silueta enorme y oscura | 8-10 emisores (ritmo 60-100) + `Highlight` negro y morado + humo oscuro + niebla en el suelo |
| Eterno | 20-24 | 1000-1400 | Leyenda viva: armaduras, coronas, alas o estructuras gigantes | 10-14 emisores (ritmo 100-150) + 2-3 anillos de energía girando + `Beam` de luz + pulsos de onda cada 4 s |
| Divino | 26-32 | 1300-1800 | Dios colosal: cada pieza recargada, varias capas de armadura y adornos | 15-25 emisores (ritmo 150-300) + halo + `Beam` de luz desde el cielo + partículas arcoíris + ondas de choque + temblor de cámara cerca |
| Brainrot | 5-14 | 150-700 | Meme absurdo; crece con su valor | Crece de 1 a 8 emisores con su valor |
| Mutante | 8-22 | 300-1300 | Orgánicos: carne, baba y bultos; Mecha: robots de guerra | De 3 a 14 emisores según su valor |
| Evento | 12-22 | 650-1300 | Dragosaurios espectaculares | De 6 a 14 emisores según su valor |

**Al salir del fósil:** Común, un «pop» pequeño. Cada rareza superior, una explosión más grande. Divino: columna de luz, onda de choque, lluvia de partículas y temblor.

**Ingresos:** son los mismos números que «Roba un huevo» (1 $/s … 9B $/s). Habrá que ajustarlos a la economía de nuestro juego. K = mil, M = millón, B = mil millones.

## Resumen

| Rareza | Bichos | Ingresos ($/s) |
|---|---|---|
| Común | 5 | 1 – 6 |
| Poco común | 3 | 8 – 18 |
| Raro | 10 | 35 – 280 |
| Épico | 11 | 180 – 4K |
| Legendario | 21 | 225 – 130K |
| Mítico | 23 | 16K – 12,5M |
| Cósmico | 28 | 185K – 165M |
| Secreto | 35 | 1,25M – 1,75B |
| Eterno | 24 | 65M – 4B |
| Divino | 14 | 1B – 9B |
| Brainrot (especial) | 6 | 100 – 110M |
| Mutante (especial) | 12 | 10K – 4B |
| Evento (especial) | 6 | 5M – 600M |
| **Total** | **198** | |

---

## Común (5) · chibi, sin partículas

**1. Dodo Corriente** — 💰 1 $/s · *ave prehistórica (Raphus cucullatus)*
- **Altura:** 3,8 studs
- **Modelo:** chibi. Bola de cuerpo gordísima con patitas naranjas cortas y un pico enorme y curvo, más grande que la cabeza. Alitas diminutas pegadas a los lados y un penacho de 3 plumas en la cola. Cara de despistado: un ojo un poco más grande que el otro.
- **Colores:** cuerpo gris azulado; pico amarillo pálido con la punta ganchuda marrón; patas naranjas; plumas de la cola blancas.
- **Efectos:** ninguno. Tuerce la cabeza a los lados de vez en cuando.

**2. Compi** — 💰 2 $/s · *Compsognathus*
- **Altura:** 3,6 studs
- **Modelo:** chibi. Dinosaurio bípedo pequeñito con cabeza grande y redonda, 4 dientecitos, bracitos de 2 dedos y cola larga. Inclinado hacia delante, como a punto de correr.
- **Colores:** verde lima por encima; barriga amarillo crema; rayas verde oscuro en lomo y cola.
- **Efectos:** ninguno. Da saltitos nerviosos.

**3. Proto Bebé** — 💰 3 $/s · *Protoceratops cría (bebé)*
- **Altura:** 3,4 studs
- **Modelo:** chibi. Cuadrúpedo rechoncho con una gola corta y redondeada, pico de loro y un bultito en la nariz. Lleva un trozo de cáscara de huevo en la cabeza como gorrito.
- **Colores:** cuerpo arena; gola marrón claro con 3 lunares marrón oscuro; pico gris; cáscara blanca.
- **Efectos:** ninguno. Bosteza.

**4. Loro-saurio** — 💰 4 $/s · *Psittacosaurus*
- **Altura:** 3,6 studs
- **Modelo:** chibi. Bípedo pequeño con cabeza cuadrada, pico de loro, dos pómulos puntiagudos y un abanico de cerdas en la cola.
- **Colores:** verde oliva; pico naranja; pómulos amarillos; cerdas rojizas.
- **Efectos:** ninguno. Mastica algo con el pico.

**5. Hipsi Velocín** — 💰 6 $/s · *Hypsilophodon*
- **Altura:** 3,8 studs
- **Modelo:** chibi. Bípedo pequeño de piernas largas para correr, ojos enormes y cola recta. Lleva una cinta en la frente.
- **Colores:** verde hoja con manchas verde oscuro; barriga blanca; cinta roja.
- **Efectos:** ninguno. Hace estiramientos de corredor.

## Poco común (3) · cartoon normal, 1 emisor suave

**6. Micro Raptor** — 💰 8 $/s · *Microraptor (dromeosaurio de cuatro alas)*
- **Altura:** 4,5 studs
- **Modelo:** raptor esbelto con plumas largas en brazos **y piernas** (cuatro alas abiertas, como planeando) y cola larga acabada en abanico de plumas. Proporciones reales.
- **Colores:** negro con reflejos azul eléctrico en los bordes de las plumas; ojos amarillos.
- **Partículas:** 1 emisor de brillitos azules (ritmo 3) en las puntas de las alas. Bate las alas suavemente.

**7. Ovi Ladrón** — 💰 12 $/s · *Oviraptor*
- **Altura:** 4,6 studs
- **Modelo:** bípedo con cresta alta en media luna, pico sin dientes y brazos con plumas. Abraza un huevo moteado con cara de pillo.
- **Colores:** naranja; cresta roja; plumas amarillas con puntas negras; huevo blanco con motas azules.
- **Partículas:** 1 emisor de destellos blancos (ritmo 2) alrededor del huevo. Mira a los lados escondiéndolo.

**8. Leaelly Polar** — 💰 18 $/s · *Leaellynasaura (dinosaurio polar)*
- **Altura:** 4,3 studs
- **Modelo:** bípedo ágil de ojos grandes y una cola larguísima (tres veces el cuerpo) enrollada como una bufanda. Orejeras.
- **Colores:** blanco nieve con rayas gris; cola a anillos blancos y azul hielo; orejeras rosa.
- **Partículas:** 1 emisor de copitos de nieve (ritmo 4) que caen sobre él y vaho por la boca.

## Raro (10) · cartoon atlético, 1-2 emisores

**9. Dimorfo Bocazas** — 💰 35 $/s · *Dimorphodon*
- **Altura:** 4,8 studs
- **Modelo:** pterosaurio con cabeza grande de frailecillo y bocaza con dientes de dos tamaños. Alas de membrana abiertas y cola con un rombo en la punta.
- **Colores:** cabeza a franjas naranja, amarillo y negro; cuerpo gris oscuro; membrana morado claro.
- **Partículas:** 1 emisor de plumitas (ritmo 5). Abre y cierra el pico como si gritara.

**10. Cabezón Pachy** — 💰 45 $/s · *Pachycephalosaurus*
- **Altura:** 5,6 studs
- **Modelo:** bípedo robusto con una cúpula enorme en la cabeza rodeada de pinchitos, inclinado para embestir. Vendaje en la cúpula.
- **Colores:** marrón verdoso; cúpula crema; pinchitos gris; vendaje blanco con cruz roja.
- **Partículas:** 1 emisor de polvo (ritmo 5). Cada pocos segundos da un cabezazo y salen 3 estrellitas amarillas.

**11. Galli Avestruz** — 💰 60 $/s · *Gallimimus*
- **Altura:** 6,2 studs
- **Modelo:** dinosaurio-avestruz de patas larguísimas, cuello flexible y pico sin dientes, corriendo con una pata en el aire.
- **Colores:** beige con rayas marrones en el lomo; cuello blanco; pico negro.
- **Partículas:** 2 emisores: líneas de velocidad blancas hacia atrás (ritmo 8) y polvo en los pies (ritmo 5).

**12. Archie** — 💰 75 $/s · *Archaeopteryx*
- **Altura:** 4,8 studs
- **Modelo:** mitad ave, mitad dinosaurio: alas de plumas con 3 garras, hocico con dientes y cola de reptil con plumas a los lados.
- **Colores:** negro azabache con reflejos verde tornasol; plumas de la cola con puntas blancas; ojos dorados.
- **Partículas:** 1 emisor de plumas negras que caen (ritmo 4) y destellos verdes (ritmo 4).

**13. Dilo Abanico** — 💰 90 $/s · *Dilophosaurus*
- **Altura:** 5,8 studs
- **Modelo:** terópodo esbelto con dos crestas finas en media luna y una gola de piel desplegada alrededor del cuello.
- **Colores:** amarillo verdoso con manchas negras; crestas rojas con borde blanco; gola amarilla con lunares rojos y negros.
- **Partículas:** 2 emisores: gotitas verdes (ritmo 6) y destellos en la gola (ritmo 4). Abre la gola de golpe y escupe una bolita verde.

**14. Iguano Pulgar** — 💰 110 $/s · *Iguanodon*
- **Altura:** 6,5 studs
- **Modelo:** herbívoro grande y fuerte con hocico de caballo y un pincho gigante en cada pulgar, levantado como diciendo «¡bien!».
- **Colores:** verde musgo; barriga gris verdosa; pinchos blanco hueso.
- **Partículas:** 1 emisor de destellos blancos en los pulgares (ritmo 6).

**15. Ictio Saltarín** — 💰 140 $/s · *Ichthyosaurus*
- **Altura:** 5 studs
- **Modelo:** reptil marino con forma de delfín, hocico largo, ojos grandes y cola de media luna, saltando sobre una ola.
- **Colores:** lomo azul marino; barriga blanca; ola turquesa semitransparente.
- **Partículas:** 2 emisores: gotas de agua (ritmo 8) y espuma blanca (ritmo 5).

**16. Celo Cazador** — 💰 180 $/s · *Coelophysis*
- **Altura:** 5,3 studs
- **Modelo:** terópodo flaco de cuello en S, cabeza estrecha con muchos dientecitos, agachado al acecho.
- **Colores:** naranja quemado con rayas marrón oscuro; barriga amarilla.
- **Partículas:** 1 emisor de hojas que caen (ritmo 5). Gira la cabeza a saltitos.

**17. Kentro Pincho** — 💰 220 $/s · *Kentrosaurus*
- **Altura:** 5,5 studs
- **Modelo:** pariente del estegosaurio con placas en el cuello que se convierten en pinchos largos hacia la cola y dos pinchos enormes en los hombros.
- **Colores:** amarillo arena con rayas marrón; placas naranja; pinchos hueso con la punta roja.
- **Partículas:** 2 emisores: destellos rojos en las puntas (ritmo 6) y polvo (ritmo 4).

**18. Troodon Listillo** — 💰 280 $/s · *Troodon*
- **Altura:** 5,2 studs
- **Modelo:** raptor con cabeza grande y abombada, ojos enormes al frente, gafas redondas y un libro en la garra.
- **Colores:** plumas verde azulado; cara gris claro; gafas negras; libro rojo.
- **Partículas:** 2 emisores: chispitas blancas (ritmo 6) y signos «?» amarillos que salen de la cabeza (ritmo 2).

## Épico (11) · musculoso, en pose de acción, 2-3 emisores y luz

**19. Velocirraptor** — 💰 180 $/s · *Velociraptor*
- **Altura:** 6,6 studs
- **Modelo:** raptor musculoso con plumas, la garra en hoz de cada pie levantada y exagerada, hocico largo con sonrisa malvada y brazos emplumados. Pose de salto de ataque.
- **Colores:** plumas marrón dorado con rayas negras; cara gris; garras negras; ojos amarillos.
- **Partículas:** 2 emisores: plumas (ritmo 10) y zarpazos naranjas en el aire (ritmo 2). Luz naranja. Golpea el suelo con la garra.

**20. Paraso Trompeta** — 💰 240 $/s · *Parasaurolophus*
- **Altura:** 8,2 studs
- **Modelo:** hadrosaurio grande con una cresta tubular larguísima hacia atrás, como una trompeta, y pico de pato. Patas delanteras más cortas.
- **Colores:** verde con rayas amarillas; cresta roja con la punta naranja.
- **Partículas:** 2 emisores: notas musicales de colores desde la cresta (ritmo 10) y aros de sonido (ritmo 2). Luz amarilla.

**21. Estego Placas** — 💰 260 $/s · *Stegosaurus*
- **Altura:** 7,8 studs
- **Modelo:** estegosaurio corpulento con dos filas de placas gigantes en forma de cometa (cada placa con borde en relieve) y cola con 4 pinchos largos.
- **Colores:** verde oliva; barriga crema; placas naranja con borde rojo; pinchos blancos.
- **Partículas:** 3 emisores: calor que sube de las placas (ritmo 12), chispas naranjas (ritmo 8) y polvo al mover la cola (ritmo 5). Luz cálida.

**22. Anqui Tanque** — 💰 320 $/s · *Ankylosaurus*
- **Altura:** 6,6 studs
- **Modelo:** tanque viviente ancho y bajo, cubierto de placas de armadura en relieve con pinchos laterales, cuernos en la cabeza y una maza doble enorme en la cola.
- **Colores:** marrón tierra; armadura gris piedra; maza gris oscuro con bandas de hierro.
- **Partículas:** 2 emisores: polvo y piedrecitas al golpear el suelo con la maza (ritmo 15 a ráfagas) y chispas grises (ritmo 6). Luz suave.

**23. Cori Casco** — 💰 325 $/s · *Corythosaurus*
- **Altura:** 8 studs
- **Modelo:** hadrosaurio grande con una cresta redonda y alta como un casco corintio.
- **Colores:** azul verdoso con rayas blancas; cresta morado brillante con borde amarillo; pico naranja.
- **Partículas:** 2 emisores: partículas moradas (ritmo 10) y aros de sonido desde la cresta (ritmo 2). Luz morada.

**24. Deino Terrible** — 💰 420 $/s · *Deinonychus*
- **Altura:** 7,2 studs
- **Modelo:** raptor grande y muy musculoso, con garras de hoz enormes, plumas en brazos y cabeza y una mirada de cazador.
- **Colores:** plumas gris pizarra; pecho blanco; cresta de plumas rojas; garras negras.
- **Partículas:** 3 emisores: chispas rojas (ritmo 10), zarpazos rojos (ritmo 2) y plumas (ritmo 6). Luz roja.

**25. Estira Corona** — 💰 600 $/s · *Styracosaurus*
- **Altura:** 7,4 studs
- **Modelo:** ceratopsio robusto con un cuerno largo en la nariz y una gola rodeada de 6 pinchos larguísimos, como una corona de rayos.
- **Colores:** verde bosque; gola amarilla con el centro rojo; pinchos y cuerno hueso.
- **Partículas:** 3 emisores: rayitos amarillos desde la corona (ritmo 12), polvo al pisar (ritmo 6) y destellos (ritmo 5). Luz amarilla.

**26. Bario Pescador** — 💰 850 $/s · *Baryonyx*
- **Altura:** 8 studs
- **Modelo:** terópodo grande con hocico de cocodrilo y garras enormes en los pulgares, con un pez atravesado en una garra.
- **Colores:** verde agua con rayas azul oscuro; barriga blanca; garras negras; pez plateado.
- **Partículas:** 3 emisores: gotas de agua (ritmo 12), salpicaduras a sus pies (ritmo 8) y burbujas (ritmo 5). Luz azul.

**27. Ptera Cresta** — 💰 1,1K $/s · *Pteranodon*
- **Altura:** 7,6 studs
- **Modelo:** pterosaurio grande con las alas abiertas de par en par, pico largo y una cresta larga hacia atrás.
- **Colores:** cuerpo blanco; alas azul celeste con degradado a azul marino; cresta roja; pico amarillo.
- **Partículas:** 3 emisores: ráfagas de viento en espiral (ritmo 12), plumitas (ritmo 5) y destellos azules (ritmo 5). Luz azul.

**28. Plesio Cuellilargo** — 💰 1,5K $/s · *Plesiosaurus*
- **Altura:** 7,5 studs
- **Modelo:** reptil marino de cuerpo ancho, cuatro aletas grandes y cuello larguísimo en S, asomando de un charco.
- **Colores:** verde azulado con lunares turquesa; barriga crema; charco azul transparente.
- **Partículas:** 3 emisores: burbujas (ritmo 12), ondas en el agua (ritmo 3) y gotas (ritmo 6). Luz turquesa.

**29. Carno Toro** — 💰 4K $/s · *Carnotaurus*
- **Altura:** 8,5 studs
- **Modelo:** terópodo musculoso con dos cuernos de toro, cara corta, bracitos diminutos y piel de bultos en relieve. Pose de embestida.
- **Colores:** rojo intenso; barriga naranja; cuernos negros; bultos rojo oscuro.
- **Partículas:** 3 emisores: vapor por la nariz (ritmo 15), chispas rojas (ritmo 10) y polvo al rascar el suelo (ritmo 8). Luz roja.

## Legendario (21) · robustos e imponentes, 3-4 emisores, luz y brillo dorado en el suelo

**30. Ptero Chispa** — 💰 225 $/s · *pterosaurio bebé de fuego (bebé, inventado)*
- **Altura:** 8 studs
- **Modelo:** chibi (es un bebé). Pterosaurio redondito con alitas cortas y una llama viva encima de la cabeza en lugar de cresta. Ojos traviesos.
- **Colores:** naranja; alas rojas con borde amarillo; llama en Neon amarillo y naranja.
- **Partículas (3):** chispas de fuego (ritmo 20), humo claro (ritmo 10) y brasas que suben (ritmo 10). Luz naranja y brillo dorado en el suelo.

**31. Archie de Luz** — 💰 225 $/s · *Archaeopteryx angelical (inventado)*
- **Altura:** 9 studs
- **Modelo:** Archaeopteryx adulto y majestuoso con las alas abiertas hacia arriba, plumas en varias capas y una aureola sobre la cabeza.
- **Colores:** plumas blanco perla con puntas doradas; aureola en Neon dorado; ojos azul cielo.
- **Partículas (3):** plumas blancas que caen (ritmo 20), destellos dorados (ritmo 20) y rayitos de luz (ritmo 5). Luz blanca cálida.

**32. Tricera Jefe** — 💰 1,8K $/s · *Triceratops*
- **Altura:** 9,4 studs
- **Modelo:** triceratops enorme y macizo: patas como columnas, piel con escamas en relieve, 3 cuernos largos y curvados y una gola gigante con el borde de pinchos pequeños. Cabeza baja, listo para embestir.
- **Colores:** gris azulado; gola azul real con rombos amarillos; cuernos marfil; pico negro.
- **Partículas (4):** destellos azules en la gola (ritmo 25), polvo al pisar (ritmo 20), piedrecitas (ritmo 10) y resoplido (ritmo 10). Luz azul y brillo dorado.

**33. Alo Feroz** — 💰 2,8K $/s · *Allosaurus*
- **Altura:** 10 studs
- **Modelo:** gran terópodo musculoso con dos cuernos rojos delante de los ojos, cráneo largo con mandíbula enorme, brazos fuertes de 3 garras y cicatrices en el hocico. Ruge cada pocos segundos.
- **Colores:** marrón rojizo con rayas negras; cuernos rojos; barriga beige.
- **Partículas (4):** aliento de vapor naranja (ritmo 25), chispas rojas (ritmo 20), anillo de rugido (ritmo 1) y polvo (ritmo 10). Luz roja.

**34. Dimetro Vela** — 💰 3,6K $/s · *Dimetrodon (sinápsido)*
- **Altura:** 9 studs
- **Modelo:** reptil robusto de patas abiertas con una vela ENORME en el lomo (varillas gruesas en relieve) y cabeza grande con dientes de dos tamaños.
- **Colores:** gris verdoso; vela naranja y roja con varillas blancas; barriga amarilla.
- **Partículas (3):** la vela brilla en Neon de atardecer; calor que sube (ritmo 25), chispas (ritmo 15) y brasas (ritmo 10). Luz naranja.

**35. Braquio Cuellito** — 💰 4,8K $/s · *Brachiosaurus*
- **Altura:** 11,2 studs
- **Modelo:** saurópodo enorme con las patas delanteras más largas, cuello altísimo y una joroba en la nariz. Masticando una rama con hojas.
- **Colores:** verde agua con manchas verde oscuro; barriga gris; rama marrón con hojas lima.
- **Partículas (3):** hojas que caen girando (ritmo 25), destellos verdes (ritmo 15) y polvo al pisar (ritmo 10). Luz verde.

**36. Terizino Tijeras** — 💰 5,5K $/s · *Therizinosaurus*
- **Altura:** 10,6 studs
- **Modelo:** bípedo enorme con barriga grande, cuello largo, pico pequeño y unos brazos larguísimos acabados en 3 garras como cuchillas, más largas que su cabeza. Pose con los brazos abiertos.
- **Colores:** plumas blancas y negras; garras negras con filo plateado; pico amarillo.
- **Partículas (4):** destellos plateados en las garras (ritmo 25), plumas (ritmo 15), estelas plateadas al mover los brazos (ritmo 10) y polvo (ritmo 8). Luz blanca.

**37. Elvisaurio** — 💰 7K $/s · *Cryolophosaurus*
- **Altura:** 9,4 studs
- **Modelo:** terópodo robusto con una cresta ondulada de oreja a oreja como el tupé de Elvis, gafas de sol y pose de rockero.
- **Colores:** blanco hielo con rayas azul claro; tupé amarillo brillante; gafas negras.
- **Partículas (4):** notas musicales (ritmo 20), estrellitas (ritmo 20), copos de nieve (ritmo 15) y destellos en las gafas (ritmo 5). Luz blanca.

**38. Sauro Pinchos** — 💰 9,5K $/s · *Sauropelta*
- **Altura:** 8,6 studs
- **Modelo:** anquilosaurio enorme y blindado con pinchos gigantes en cuello y hombros, armadura de bultos en relieve y cola larga y gorda.
- **Colores:** marrón oscuro; bultos marrón claro; pinchos gris con las puntas doradas.
- **Partículas (3):** destellos dorados en los pinchos (ritmo 25), polvo (ritmo 15) y chispas (ritmo 10). Luz dorada.

**39. Pachirino** — 💰 11K $/s · *Pachyrhinosaurus*
- **Altura:** 9,2 studs
- **Modelo:** ceratopsio corpulento con un gran bulto rugoso en la nariz y una gola con dos cuernos curvos hacia arriba.
- **Colores:** gris pardo; bulto marrón oscuro; gola naranja con borde negro; cuernos hueso.
- **Partículas (4):** nieve (ritmo 25), vaho (ritmo 15), escarcha brillante (ritmo 15) y polvo (ritmo 8). Luz blanca.

**40. Quetzal Gigante** — 💰 11K $/s · *Quetzalcoatlus*
- **Altura:** 10,8 studs
- **Modelo:** pterosaurio GIGANTE apoyado en las cuatro extremidades, cuello largo de jirafa y pico larguísimo. Abre las alas cada pocos segundos.
- **Colores:** cuerpo blanco; cabeza y pico en degradado amarillo y rojo; alas naranja; ojos verdes.
- **Partículas (4):** ráfagas de viento (ritmo 25), plumitas (ritmo 15), polvo al abrir las alas (ritmo 20 a ráfagas) y destellos (ritmo 10). Luz cálida.

**41. Lio Pleuro** — 💰 15K $/s · *Liopleurodon*
- **Altura:** 9,6 studs
- **Modelo:** reptil marino masivo con cabeza enorme de cocodrilo, cuello corto y 4 aletas potentes, saliendo de un remolino con la boca abierta.
- **Colores:** azul oscuro por encima, gris claro por debajo; dientes blancos; remolino turquesa.
- **Partículas (4):** remolino de agua (ritmo 30), burbujas (ritmo 20), espuma (ritmo 15) y gotas (ritmo 15). Luz azul.

**42. Uta Raptor** — 💰 15K $/s · *Utahraptor*
- **Altura:** 9,8 studs
- **Modelo:** el raptor más grande, musculoso y pesado, con garras de hoz enormes, brazos con plumas largas y una cresta de plumas. Pose de salto.
- **Colores:** plumas verde oscuro con puntas naranjas; cara gris; garras negras con filo rojo.
- **Partículas (4):** zarpazos rojos (ritmo 3), plumas (ritmo 20), chispas (ritmo 20) y polvo (ritmo 10). Luz verde.

**43. Megalo Abuelo** — 💰 22K $/s · *Megalosaurus*
- **Altura:** 9,6 studs
- **Modelo:** gran terópodo veterano y erguido, con sombrero de copa, monóculo y un bastón de hueso.
- **Colores:** marrón verdoso con rayas oscuras; sombrero negro con cinta roja; monóculo dorado.
- **Partículas (3):** destellos dorados (ritmo 25), polvo de libro antiguo (ritmo 15) y burbujas de té (ritmo 10). Luz cálida.

**44. Guanlong Cresta** — 💰 22,5K $/s · *Guanlong*
- **Altura:** 9 studs
- **Modelo:** tiranosaurio esbelto con una cresta alta que recorre el hocico como un casco y plumas en el cuello.
- **Colores:** plumas naranja y blancas; cresta en degradado rojo, naranja y amarillo (Neon suave).
- **Partículas (4):** chispas naranjas (ritmo 25), brasas (ritmo 15), humo (ritmo 10) y destellos en la cresta (ritmo 10). Luz naranja.

**45. Diplo Látigo** — 💰 30K $/s · *Diplodocus*
- **Altura:** 10,4 studs
- **Modelo:** saurópodo larguísimo con el cuello estirado y una cola todavía más larga acabada en látigo, haciendo un latigazo.
- **Colores:** gris verdoso con rayas blancas; barriga crema.
- **Partículas (4):** onda de choque blanca en la punta de la cola (ritmo 1), polvo (ritmo 25), viento (ritmo 15) y destellos (ritmo 10). Luz blanca.

**46. Majunga Calvo** — 💰 30K $/s · *Majungasaurus*
- **Altura:** 9,2 studs
- **Modelo:** terópodo robusto con cara corta y gorda, un cuerno redondo en la frente, brazos diminutos y cara de mal humor.
- **Colores:** rojo ladrillo con manchas negras; cuerno amarillo; barriga gris.
- **Partículas (4):** nubecita negra de enfado (ritmo 5), chispas rojas (ritmo 25), vapor por la nariz (ritmo 15) y polvo (ritmo 10). Luz roja.

**47. Krono Mandíbula** — 💰 74K $/s · *Kronosaurus*
- **Altura:** 10,2 studs
- **Modelo:** reptil marino colosal con una cabeza que ocupa un tercio del cuerpo, mandíbula llena de dientes cónicos y 4 aletas enormes, saltando en vertical sobre una ola.
- **Colores:** azul petróleo; barriga con manchas blancas; ola azul con espuma.
- **Partículas (4):** salpicaduras (ritmo 30), espuma (ritmo 20), burbujas (ritmo 20) y gotas (ritmo 20). Luz azul.

**48. Argentino Titán** — 💰 95K $/s · *Argentinosaurus*
- **Altura:** 11 studs
- **Modelo:** saurópodo descomunal, el más ancho de su rareza, con patas como columnas de templo y una banderita argentina clavada en el lomo.
- **Colores:** marrón grisáceo con rayas celeste y blanco; bandera celeste y blanca con sol amarillo.
- **Partículas (4):** ondas de polvo al pisar (ritmo 30), piedrecitas (ritmo 15), destellos celestes (ritmo 15) y temblor del suelo. Luz blanca.

**49. Tarbo Mongol** — 💰 115K $/s · *Tarbosaurus*
- **Altura:** 10,4 studs
- **Modelo:** tiranosaurio asiático poderoso, con casco de guerrero mongol con pelo en la punta y hombreras de cuero.
- **Colores:** marrón arena con rayas oscuras; casco dorado con pelo rojo; hombreras marrones.
- **Partículas (4):** arena (ritmo 30), destellos dorados (ritmo 20), polvo (ritmo 15) y viento (ritmo 10). Luz cálida.

**50. Giganoto Rey** — 💰 130K $/s · *Giganotosaurus*
- **Altura:** 11,5 studs
- **Modelo:** terópodo GIGANTE, el mayor de los Legendarios: cráneo largo, dientes de sierra, cresta de bultos sobre los ojos, cicatrices y musculatura marcada. Ruge con la cabeza alzada.
- **Colores:** gris oscuro con rayas rojas; barriga gris claro; ojos naranja brillante.
- **Partículas (4):** anillo de rugido (ritmo 1), polvo (ritmo 30), piedrecitas que saltan (ritmo 20) y chispas rojas (ritmo 20). Luz roja y brillo dorado intenso.

## Mítico (23) · blindados o elementales, 4-6 emisores, aura a ras de suelo y luz fuerte

**51. Raptor Duna** — 💰 16K $/s · *Velociraptor del desierto (inventado)*
- **Altura:** 10,6 studs
- **Modelo:** raptor grande y fibroso con pañuelo de beduino, gafas para la arena y brazaletes de bronce.
- **Colores:** plumas arena dorada con rayas marrón; pañuelo blanco y azul; gafas negras; bronce.
- **Partículas (5):** remolino de arena (ritmo 40), arena fina (ritmo 30), destellos de bronce (ritmo 15), polvo (ritmo 20) y aura beige. Luz amarilla fuerte.

**52. Escorpi Raptor** — 💰 18,5K $/s · *raptor escorpión (inventado)*
- **Altura:** 10,8 studs
- **Modelo:** raptor acorazado con pinzas de escorpión en lugar de manos y una cola segmentada curvada sobre la espalda con un aguijón enorme.
- **Colores:** negro brillante con franjas rojas; pinzas rojas; aguijón en Neon verde veneno.
- **Partículas (5):** gotas verdes del aguijón (ritmo 30), burbujas tóxicas (ritmo 20), humo verde (ritmo 30), chispas (ritmo 15) y aura verde. Luz verde.

**53. Dilo Venenoso** — 💰 22K $/s · *Dilophosaurus tóxico (inventado)*
- **Altura:** 11 studs
- **Modelo:** dilofosaurio adulto y más grande, con la gola desplegada al máximo y escupiendo una bola de veneno.
- **Colores:** verde selva; gola en Neon morado con lunares amarillos; crestas rojas; veneno en Neon verde.
- **Partículas (5):** burbujas tóxicas (ritmo 30), gotas (ritmo 20), humo morado (ritmo 25), esporas (ritmo 15) y aura morada.

**54. Raptigre** — 💰 28K $/s · *raptor tigre (inventado)*
- **Altura:** 11 studs
- **Modelo:** raptor musculoso con rayas de tigre, cara gatuna con bigotes y colmillos de sable que asoman.
- **Colores:** naranja con rayas negras; barriga y bigotes blancos; ojos verde esmeralda.
- **Partículas (5):** zarpazos naranjas (ritmo 3), chispas (ritmo 30), hojas (ritmo 20), polvo (ritmo 15) y aura naranja.

**55. Estego Cristal** — 💰 35K $/s · *Stegosaurus de cristal (inventado)*
- **Altura:** 11,6 studs
- **Modelo:** estegosaurio grande con las placas convertidas en racimos de cristales facetados que salen del lomo y una cola de pinchos de cuarzo.
- **Colores:** cuerpo morado oscuro; cristales en Neon rosa y lila (Transparency 0,3).
- **Partículas (5):** destellos tipo diamante (ritmo 40), fragmentos que flotan (ritmo 15), polvo brillante (ritmo 30), rayos de luz desde los cristales y aura rosa.

**56. Tricera Lanudo** — 💰 42K $/s · *Triceratops de la edad de hielo (inventado)*
- **Altura:** 11,8 studs
- **Modelo:** triceratops enorme cubierto de pelo largo como un mamut, con cuernos curvados como colmillos y la gola llena de carámbanos.
- **Colores:** pelo marrón rojizo; cuernos marfil; gola azul hielo con carámbanos blancos.
- **Partículas (5):** nieve (ritmo 40), vaho (ritmo 20), escarcha (ritmo 25), carámbanos que brillan (ritmo 10) y aura azul helada.

**57. Ptero del Vacío** — 💰 50K $/s · *pterosaurio dimensional (inventado)*
- **Altura:** 11,2 studs
- **Modelo:** pterodáctilo grande con las alas rotas en fragmentos que flotan separados del cuerpo y un único ojo en la frente.
- **Colores:** negro; bordes de los fragmentos en Neon morado; ojo en Neon magenta.
- **Partículas (5):** fragmentos girando (ritmo 15), humo morado (ritmo 40), chispas magenta (ritmo 25), destellos (ritmo 15) y aura morada.

**58. Anqui Guindilla** — 💰 55K $/s · *Ankylosaurus picante (inventado)*
- **Altura:** 10,4 studs
- **Modelo:** anquilosaurio enorme con la maza de la cola en forma de guindilla gigante y la armadura llena de pinchos como semillas.
- **Colores:** rojo picante; maza roja con rabito verde; pinchos amarillos.
- **Partículas (6):** llamarada por la boca cada pocos segundos (ritmo 60 a ráfagas), humo (ritmo 30), chispas (ritmo 30), brasas (ritmo 20), calor (ritmo 20) y aura naranja.

**59. Plesio Fantasma** — 💰 75K $/s · *plesiosaurio espectral (inventado)*
- **Altura:** 11,6 studs
- **Modelo:** plesiosaurio grande y semitransparente (Transparency 0,4) que flota en el aire, con la cola deshaciéndose en humo y cadenas fantasmales colgando.
- **Colores:** azul fantasma pálido en Neon suave; ojos blancos brillantes; cadenas gris transparente.
- **Partículas (5):** humo azul de la cola (ritmo 40), niebla (ritmo 30), orbes fantasma (ritmo 15), destellos (ritmo 15) y aura azul pálido.

**60. Mosa Orca** — 💰 80K $/s · *Mosasaurus orca (inventado)*
- **Altura:** 11,4 studs
- **Modelo:** mosasaurio musculoso con el dibujo de una orca y una aleta dorsal alta, saltando sobre una ola.
- **Colores:** negro y blanco como una orca; ola azul con espuma.
- **Partículas (5):** salpicaduras (ritmo 40), espuma (ritmo 30), burbujas (ritmo 25), gotas (ritmo 25) y aura de agua azul.

**61. Terrorave** — 💰 110K $/s · *Phorusrhacos (ave del terror)*
- **Altura:** 12 studs
- **Modelo:** ave gigante de patas larguísimas y musculosas, alas diminutas y un pico enorme y ganchudo como un hacha. Cara de mala.
- **Colores:** plumas gris oscuro; pico amarillo con punta negra; ojos rojos; patas naranjas.
- **Partículas (5):** plumas negras (ritmo 30), chispas rojas (ritmo 25), polvo (ritmo 25), zarpazos (ritmo 3) y aura gris oscuro.

**62. Anqui Dorado** — 💰 120K $/s · *Ankylosaurus de oro (inventado)*
- **Altura:** 10,6 studs
- **Modelo:** anquilosaurio entero de oro, con gemas incrustadas en cada placa y una maza en forma de lingote gigante.
- **Colores:** dorado brillante (Reflectance 0,2); gemas rojas, azules y verdes.
- **Partículas (6):** monedas doradas que saltan (ritmo 40), destellos (ritmo 40), brillos de gemas (ritmo 20), polvo dorado (ritmo 30), rayos de luz y aura dorada.

**63. Rata Raptor Tóxica** — 💰 180K $/s · *raptor-rata mutante (inventado)*
- **Altura:** 11,2 studs
- **Modelo:** raptor grande con orejas y cola de rata, dientes de roedor y un barril tóxico atado a la espalda.
- **Colores:** gris verdoso con manchas verde neón; barril amarillo con el símbolo de radiactividad.
- **Partículas (5):** burbujas verdes (ritmo 40), humo tóxico (ritmo 40), gotas (ritmo 20), chispas (ritmo 15) y aura verde.

**64. Gorilasaurio Cósmico** — 💰 180K $/s · *gorila-dinosaurio del espacio (inventado)*
- **Altura:** 12,4 studs
- **Modelo:** dinosaurio enorme que anda sobre los nudillos, con brazos gigantes, cresta de huesos y casco de astronauta.
- **Colores:** morado oscuro con constelaciones; casco transparente con borde plateado.
- **Partículas (5):** estrellas (ritmo 40), polvo cósmico (ritmo 30), ondas al golpearse el pecho (ritmo 1), destellos (ritmo 20) y aura morada.

**65. Ptero Grieta** — 💰 220K $/s · *pterosaurio dimensional (inventado)*
- **Altura:** 11,6 studs
- **Modelo:** pterosaurio grande con una grieta brillante que le parte el cuerpo y deja ver el espacio, y alas con agujeros de luz.
- **Colores:** gris piedra; grieta y agujeros en Neon cian; ojos cian.
- **Partículas (5):** chispas cian (ritmo 40), rayos de luz por los agujeros, fragmentos (ritmo 15), polvo cian (ritmo 30) y aura cian.

**66. Hámster-saurio** — 💰 450K $/s · *experimento de laboratorio (inventado)*
- **Altura:** 11,8 studs
- **Modelo:** dinosaurio gordito y musculoso corriendo dentro de una rueda de hámster metálica gigante, con cables y luces.
- **Colores:** naranja y blanco; rueda plateada con luces verdes.
- **Partículas (5):** chispas eléctricas (ritmo 40), humo (ritmo 20), rayos (ritmo 10), luces parpadeantes y aura verde. La rueda gira sin parar.

**67. Panda-saurio Sakura** — 💰 450K $/s · *dinosaurio panda rojo (inventado)*
- **Altura:** 11,6 studs
- **Modelo:** ornitópodo grande con cara y cola de panda rojo, sentado bajo un pequeño cerezo en flor comiendo una rama.
- **Colores:** pelo rojo anaranjado; antifaz blanco; cerezo marrón con flores rosa.
- **Partículas (5):** pétalos (ritmo 50), hojas (ritmo 20), destellos rosa (ritmo 25), mariposas (ritmo 5) y aura rosa.

**68. Cristalito** — 💰 450K $/s · *dinosaurio de cristal (inventado)*
- **Altura:** 12 studs
- **Modelo:** dinosaurio robusto hecho entero de cristales, con pinchos de cristal saliendo de todo el cuerpo.
- **Colores:** cristal azul hielo y blanco en Neon semitransparente.
- **Partículas (5):** destellos tipo diamante (ritmo 50), fragmentos flotantes (ritmo 20), polvo brillante (ritmo 30), rayos de luz y aura azul.

**69. Filo Cuchilla** — 💰 750K $/s · *anquilosaurio de cuchillas (inventado)*
- **Altura:** 11 studs
- **Modelo:** anquilosaurio blindado con placas convertidas en cuchillas metálicas y una sierra circular gigante en la cola.
- **Colores:** gris acero; cuchillas plateadas con filo blanco brillante; ojos rojos.
- **Partículas (6):** chispas de la sierra (ritmo 60), destellos metálicos (ritmo 30), humo (ritmo 20), virutas (ritmo 20), zarpazos (ritmo 3) y aura gris.

**70. Toroceratops Infernal** — 💰 1,25M $/s · *ceratopsio demoníaco (inventado)*
- **Altura:** 12,6 studs
- **Modelo:** ceratopsio enorme con cuernos de toro curvados hacia arriba, aro en la nariz, pezuñas en llamas y grietas de lava por el cuerpo.
- **Colores:** rojo oscuro con grietas en Neon naranja; cuernos negros; aro dorado.
- **Partículas (6):** llamas en las pezuñas (ritmo 50), humo negro por la nariz (ritmo 30), brasas (ritmo 40), chispas (ritmo 30), calor y aura roja.

**71. Cordero-saurio Alado** — 💰 1,25M $/s · *saurópodo angelical (inventado)*
- **Altura:** 12,8 studs
- **Modelo:** saurópodo cubierto de lana esponjosa con dos alas de ángel grandes y una aureola.
- **Colores:** lana blanca; cara rosa claro; alas blancas con puntas doradas; aureola en Neon dorado.
- **Partículas (6):** plumas (ritmo 40), destellos dorados (ritmo 40), nubecitas (ritmo 15), rayos de luz, notas de arpa (ritmo 5) y aura blanca.

**72. Meganeura Gigante** — 💰 1,25M $/s · *Meganeura (libélula prehistórica)*
- **Altura:** 10,4 studs
- **Modelo:** libélula gigantesca con cuatro alas transparentes muy largas, ojos compuestos enormes y cuerpo segmentado.
- **Colores:** verde metálico tornasolado; alas transparentes con nervios negros y reflejos arcoíris; ojos azules.
- **Partículas (5):** polvo brillante de las alas (ritmo 50), destellos arcoíris (ritmo 30), viento (ritmo 20), luciérnagas (ritmo 15) y aura verde.

**73. Amonites Ciudadela #007** — 💰 12,5M $/s · *amonites gigante con una ciudadela encima (inventado, de evento)*
- **Altura:** 13,5 studs
- **Modelo:** amonites colosal con una ciudadela medieval entera construida sobre la concha: torres, murallas, puente levadizo y banderas.
- **Colores:** concha en espiral crema y marrón; tentáculos naranjas; castillo gris con tejados azules; banderas rojas.
- **Partículas (6):** ventanas iluminadas en Neon amarillo, humo de chimeneas (ritmo 30), pájaros (ritmo 5), destellos dorados (ritmo 40), burbujas (ritmo 20) y aura dorada. Número «#007» flotante.

## Cósmico (28) · majestuosos, piezas flotando, 6-8 emisores, estrellas en órbita y 2 luces

**74. Mordisquitos #013** — 💰 185K $/s · *T-Rex bebé de laboratorio (bebé, inventado)*
- **Altura:** 12 studs
- **Modelo:** chibi (es un bebé). T-Rex bebé con pañal, collar con plaquita «#013» y una cabeza enorme, mordisqueando un hueso. Flota dentro de una burbuja de cristal de laboratorio con anillos metálicos.
- **Colores:** verde menta; pañal blanco; collar rojo; plaquita dorada; burbuja azul transparente con anillos plateados.
- **Partículas (6):** estrellitas en órbita (ritmo 50), burbujas (ritmo 40), chispas del laboratorio (ritmo 30), destellos azul y morado (ritmo 40), baba brillante (ritmo 10) y polvo cósmico (ritmo 30).

**75. Elasmo Leviatán** — 💰 220K $/s · *Elasmosaurus*
- **Altura:** 15,5 studs
- **Modelo:** plesiosaurio enorme con un cuello descomunal (más largo que su cuerpo) enrollado en espiral hacia el cielo, con la cabeza arriba mirando las estrellas. Aletas como alas.
- **Colores:** azul profundo con lunares de estrellas blancas; barriga lila; bordes de las aletas en Neon turquesa.
- **Partículas (6):** estrellas que suben por el cuello en espiral (ritmo 60), agua flotante (ritmo 40), burbujas (ritmo 30), destellos (ritmo 40), nebulosa (ritmo 20) y polvo cósmico (ritmo 30).

**76. Esfinge-saurio Real** — 💰 280K $/s · *ceratopsio faraón (inventado)*
- **Altura:** 13 studs
- **Modelo:** ceratopsio grande tumbado en pose de Esfinge sobre una base de pirámide, con tocado de faraón, collar egipcio y un cetro.
- **Colores:** arena dorada; tocado a rayas lapislázuli y oro; collar dorado con gemas rojas; pirámide de piedra beige.
- **Partículas (6):** arena dorada flotando (ritmo 60), jeroglíficos brillantes en órbita (ritmo 10), destellos (ritmo 40), rayos de sol, escarabajos dorados (ritmo 5) y polvo (ritmo 30).

**77. Paraceratherium Rey** — 💰 400K $/s · *Paraceratherium (el mamífero terrestre más grande)*
- **Altura:** 15 studs
- **Modelo:** rinoceronte sin cuerno gigantesco, alto como una jirafa, con un manto real sobre el lomo y una corona.
- **Colores:** gris piedra con rayas lila cósmicas; manto morado con borde dorado; corona dorada con gemas azules.
- **Partículas (6):** estrellas (ritmo 50), polvo cósmico (ritmo 40), destellos de la corona (ritmo 30), polvo al pisar (ritmo 30), ondas del suelo (ritmo 1) y nebulosa (ritmo 20).

**78. Ventisaurio** — 💰 585K $/s · *dinosaurio del viento (inventado)*
- **Altura:** 13,8 studs
- **Modelo:** ornitópodo grande y ligero con orejas como aletas que flota sobre un tornado propio, con cintas de viento enrolladas al cuerpo.
- **Colores:** blanco y azul cielo; cintas en Neon blanco semitransparente.
- **Partículas (7):** tornado (ritmo 80), hojas girando (ritmo 40), nubes (ritmo 20), plumas (ritmo 20), destellos (ritmo 30), estrellas en órbita (ritmo 20) y ráfagas (ritmo 20).

**79. Glipto Rodante** — 💰 625K $/s · *Glyptodon*
- **Altura:** 12,4 studs
- **Modelo:** armadillo gigante con un caparazón en cúpula de placas hexagonales en relieve y una maza de pinchos en la cola. Rueda sobre sí mismo cada pocos segundos.
- **Colores:** caparazón marrón con hexágonos de borde dorado brillante; cara gris; maza negra.
- **Partículas (6):** polvo de estrellas al rodar (ritmo 60), chispas doradas (ritmo 40), polvo (ritmo 30), destellos (ritmo 30), estrellas en órbita (ritmo 20) y ondas (ritmo 1).

**80. Megalodón Bebé** — 💰 700K $/s · *Otodus megalodon cría (bebé)*
- **Altura:** 12,2 studs
- **Modelo:** chibi (es un bebé). Tiburón bebé con una boca enorme llena de dientes triangulares, nadando en el aire dentro de una esfera de agua con peces pequeños alrededor.
- **Colores:** gris azulado y blanco; dientes blancos; esfera azul transparente.
- **Partículas (6):** burbujas (ritmo 60), peces pequeños en órbita (ritmo 10), gotas (ritmo 30), estrellitas (ritmo 30), destellos azules (ritmo 30) y corriente de agua (ritmo 20).

**81. Basilosaurio** — 💰 850K $/s · *Basilosaurus*
- **Altura:** 13,4 studs
- **Modelo:** ballena prehistórica larguísima con forma de serpiente marina, ondulando en el aire en forma de S alrededor de su pedestal.
- **Colores:** azul pizarra; barriga blanca; rayas laterales en Neon cian.
- **Partículas (7):** chorro de agua (ritmo 50 a ráfagas), burbujas (ritmo 40), estrellas (ritmo 40), gotas (ritmo 30), destellos cian (ritmo 30), nebulosa (ritmo 20) y corriente (ritmo 20).

**82. Tricera Cósmico** — 💰 1,2M $/s · *Triceratops espacial (inventado)*
- **Altura:** 14 studs
- **Modelo:** triceratops enorme cuya gola es un portal al espacio con una galaxia en espiral dentro, con cuernos de cristal y placas de armadura con constelaciones.
- **Colores:** azul noche; gola con textura de galaxia (morado, rosa, azul); cuernos en Neon cian.
- **Partículas (7):** estrellas saliendo de la gola (ritmo 80), polvo cósmico (ritmo 50), destellos (ritmo 40), cometas pequeños (ritmo 5), nebulosa (ritmo 30), polvo al pisar (ritmo 20) y estrellas en órbita.

**83. Bronto Nebuloso** — 💰 1,5M $/s · *Brontosaurus de nebulosa (inventado)*
- **Altura:** 15,6 studs
- **Modelo:** brontosaurio enorme con el cuerpo semitransparente lleno de nebulosas y planetas diminutos flotando dentro.
- **Colores:** degradado morado, rosa y azul (Transparency 0,2); planetas de colores.
- **Partículas (7):** nubes de nebulosa (ritmo 60), estrellas en órbita (ritmo 40), polvo cósmico (ritmo 50), destellos (ritmo 40), cometas (ritmo 5), polvo al pisar (ritmo 20) y luz pulsante.

**84. Saturnosaurio** — 💰 2,2M $/s · *dinosaurio de Saturno (inventado)*
- **Altura:** 14,6 studs
- **Modelo:** saurópodo robusto con un anillo de Saturno gigante girando alrededor del cuerpo, cabeza redonda como un planeta y lunas pequeñas en órbita.
- **Colores:** amarillo y naranja a franjas; anillo beige y marrón semitransparente; lunas grises.
- **Partículas (7):** asteroides en órbita (ritmo 20), polvo del anillo (ritmo 60), estrellas (ritmo 40), destellos (ritmo 40), nebulosa (ritmo 20), luz pulsante y lunas girando.

**85. Mapache-saurio Radiactivo** — 💰 2,2M $/s · *raptor mapache mutante (inventado)*
- **Altura:** 13,2 studs
- **Modelo:** raptor grande con antifaz y cola anillada de mapache, encima de un contenedor de basura tóxica que rebosa líquido brillante.
- **Colores:** gris con antifaz negro; cola gris y negra; contenedor verde; basura en Neon verde.
- **Partículas (7):** burbujas radiactivas (ritmo 60), vapor verde (ritmo 50), gotas (ritmo 30), chispas (ritmo 30), estrellas verdes en órbita (ritmo 20), moscas brillantes (ritmo 10) y aura verde.

**86. Garra del Terror** — 💰 2,2M $/s · *Therizinosaurus oscuro (inventado)*
- **Altura:** 15 studs
- **Modelo:** therizinosaurio gigante con plumas negras erizadas, garras larguísimas brillantes y brazos abiertos en pose amenazante.
- **Colores:** plumas negras con puntas moradas; garras en Neon morado.
- **Partículas (7):** estelas moradas de las garras (ritmo 50), plumas negras (ritmo 40), sombras (ritmo 30), destellos (ritmo 30), chispas (ritmo 30), estrellas en órbita (ritmo 20) y aura morada.

**87. Helicoprion Sierra** — 💰 2,5M $/s · *Helicoprion*
- **Altura:** 13 studs
- **Modelo:** tiburón prehistórico grande con una espiral de dientes en la mandíbula que gira como una sierra circular.
- **Colores:** gris azulado; espiral blanca con el filo en Neon cian.
- **Partículas (7):** chispas de la sierra (ritmo 80), burbujas (ritmo 40), estrellas (ritmo 30), corriente (ritmo 30), destellos (ritmo 30), gotas (ritmo 20) y ondas.

**88. Megaterio** — 💰 4M $/s · *Megatherium*
- **Altura:** 15,2 studs
- **Modelo:** perezoso gigante de pie, enorme y peludo, con garras gigantes, abrazado a un árbol entero con lianas y cara de sueño.
- **Colores:** pelo marrón claro; cara crema; garras negras; árbol marrón con hojas verdes.
- **Partículas (6):** «Zzz» flotando (ritmo 10), hojas (ritmo 50), estrellas en órbita (ritmo 30), luciérnagas (ritmo 30), destellos (ritmo 30) y polvo (ritmo 20).

**89. Yuty Nevado** — 💰 7,5M $/s · *Yutyrannus*
- **Altura:** 15 studs
- **Modelo:** tiranosaurio enorme cubierto de plumas largas como un abrigo de piel, con cresta en el hocico y garras heladas.
- **Colores:** plumas blanco nieve con puntas azul hielo; cresta en Neon azul claro; ojos dorados.
- **Partículas (8):** ventisca (ritmo 80), copos (ritmo 60), vaho (ritmo 30), escarcha (ritmo 30), estrellas heladas en órbita (ritmo 20), destellos (ritmo 40), polvo de nieve al pisar (ritmo 30) y aura azul.

**90. Pachy Fracturado** — 💰 8M $/s · *Pachycephalosaurus de cristal (inventado)*
- **Altura:** 13,6 studs
- **Modelo:** paquicefalosaurio grande y robusto con la cúpula de cristal roto, con fragmentos flotando alrededor de la cabeza como una corona.
- **Colores:** gris carbón; cúpula de cristal morado con grietas en Neon rosa.
- **Partículas (7):** fragmentos en órbita (ritmo 20), chispas rosas (ritmo 60), destellos (ritmo 40), polvo de cristal (ritmo 40), rayos (ritmo 10), estrellas (ritmo 30) y aura rosa.

**91. Manta Ptero Titán** — 💰 11M $/s · *pterosaurio-manta (inventado)*
- **Altura:** 13,8 studs
- **Modelo:** pterosaurio enorme con las alas anchas de una mantarraya gigante y circuitos luminosos, planeando con la cola larga ondeando.
- **Colores:** negro con circuitos en Neon azul; barriga blanca.
- **Partículas (8):** estela de luz azul (ritmo 60), estrellas (ritmo 50), chispas (ritmo 40), destellos (ritmo 40), polvo cósmico (ritmo 30), corriente (ritmo 30), pulsos en los circuitos y estrellas en órbita.

**92. Ptero Koi** — 💰 12M $/s · *pterosaurio pez koi (inventado)*
- **Altura:** 14 studs
- **Modelo:** pterosaurio grande con escamas y bigotes de pez koi, aletas por alas y una cola de velo larguísima que ondula.
- **Colores:** blanco con manchas naranjas y negras; aletas semitransparentes.
- **Partículas (7):** pétalos (ritmo 60), burbujas (ritmo 40), destellos dorados (ritmo 40), agua flotante (ritmo 30), estrellas (ritmo 30), farolillos pequeños (ritmo 5) y aura rosa.

**93. Archelon Apilado** — 💰 12M $/s · *Archelon ×3 (inventado)*
- **Altura:** 15,4 studs
- **Modelo:** tres tortugas marinas prehistóricas gigantes apiladas, de la más grande abajo a la más pequeña arriba, con caparazones decorados.
- **Colores:** caparazones verde, azul y turquesa con dibujos dorados; piel gris verdoso.
- **Partículas (7):** estrellas (ritmo 50), burbujas (ritmo 40), destellos (ritmo 40), gotas (ritmo 30), polvo (ritmo 20), ondas al tambalearse (ritmo 1) y estrellas en órbita.

**94. Diablillo Compsognato** — 💰 16M $/s · *Compsognathus demonio (inventado)*
- **Altura:** 13,4 studs
- **Modelo:** compsognathus adulto grande y musculoso, con cuernos de diablo, alas de murciélago, cola en flecha y un tridente enorme.
- **Colores:** rojo brillante; cuernos y alas negros; tridente dorado con punta en Neon naranja.
- **Partículas (8):** llamas (ritmo 60), humo negro (ritmo 40), brasas (ritmo 50), chispas (ritmo 40), destellos rojos (ritmo 30), calaveritas (ritmo 5), calor y aura roja.

**95. Polilla Jurásica Sagrada** — 💰 16M $/s · *polilla prehistórica gigante (inventado)*
- **Altura:** 14 studs
- **Modelo:** polilla enorme y peluda con antenas de pluma y cuatro alas gigantes con dibujos de ojos dorados.
- **Colores:** cuerpo blanco crema; alas blancas con dibujos dorados y lila en Neon suave.
- **Partículas (7):** polvo dorado de las alas (ritmo 80), destellos (ritmo 50), luz pulsante, luciérnagas (ritmo 30), estrellas (ritmo 30), rayos de luz y aura dorada.

**96. Rinoceratops Titán** — 💰 17,5M $/s · *ceratopsio-rinoceronte gigante (inventado)*
- **Altura:** 15,4 studs
- **Modelo:** ceratopsio colosal con un cuerno gigantesco de rinoceronte, armadura de piedra con runas grabadas y una gola en forma de puerta de templo.
- **Colores:** piedra gris verdosa con musgo; runas en Neon dorado; cuerno de piedra blanca.
- **Partículas (8):** runas en órbita (ritmo 15), polvo de piedra (ritmo 50), destellos dorados (ritmo 50), hojas (ritmo 30), piedrecitas (ritmo 30), ondas al pisar (ritmo 1), rayos de luz y aura dorada.

**97. Raptor Infernal** — 💰 25M $/s · *raptor demoníaco (inventado)*
- **Altura:** 14,6 studs
- **Modelo:** raptor gigante con el cuerpo de roca volcánica agrietada, ojos de fuego y una melena de llamas en el cuello y la cola.
- **Colores:** negro carbón con grietas en Neon naranja; llamas naranjas y amarillas.
- **Partículas (8):** fuego del cuello (ritmo 80), brasas (ritmo 60), humo (ritmo 40), chispas (ritmo 50), ceniza (ritmo 30), calor, zarpazos de fuego (ritmo 3) y aura roja.

**98. Pavosaurio Celestial** — 💰 25M $/s · *dinosaurio pavo real (inventado)*
- **Altura:** 15 studs
- **Modelo:** ornitópodo grande y elegante con una cola de pavo real colosal desplegada en abanico, llena de ojos brillantes.
- **Colores:** azul eléctrico; cola verde esmeralda con ojos dorados y azules en Neon; cresta dorada.
- **Partículas (8):** destellos uno a uno en la cola, plumas doradas (ritmo 50), estrellas (ritmo 50), polvo dorado (ritmo 60), rayos de luz, mariposas (ritmo 10), purpurina (ritmo 40) y aura azul.

**99. Araña-saurio** — 💰 25M $/s · *dinosaurio araña (inventado)*
- **Altura:** 14,2 studs
- **Modelo:** raptor enorme con 8 patas de araña, 6 ojos y una telaraña gigante detrás como un trono.
- **Colores:** negro con un reloj de arena rojo; ojos en Neon rojo; telaraña blanca brillante.
- **Partículas (7):** hilos brillantes (ritmo 40), arañitas (ritmo 10), destellos rojos (ritmo 40), polvo (ritmo 30), estrellas (ritmo 30), niebla (ritmo 30) y aura roja.

**100. Tucán-Raptor Tóxico** — 💰 30M $/s · *raptor tucán mutante (inventado)*
- **Altura:** 14 studs
- **Modelo:** raptor grande con un pico de tucán gigante de colores, plumaje erizado y gotas tóxicas cayendo.
- **Colores:** plumas negras; pico naranja, amarillo y verde neón; gotas en Neon verde.
- **Partículas (8):** gotas tóxicas (ritmo 60), burbujas (ritmo 50), plumas (ritmo 30), destellos (ritmo 40), vapor (ritmo 40), hojas de selva (ritmo 30), estrellas y aura verde.

**101. Dodo de Tres Cabezas** — 💰 165M $/s · *Dodo mutante gigante (inventado)*
- **Altura:** 16,5 studs
- **Modelo:** el Dodo Corriente convertido en una bestia GIGANTE y musculosa con tres cabezas (feliz, enfadada y dormida), armadura de plumas doradas y una corona en la cabeza central. Ya no es chibi: es imponente.
- **Colores:** gris azulado; tres picos amarillos; plumas doradas; corona dorada con gemas rojas.
- **Partículas (8):** plumas doradas (ritmo 60), estrellas en órbita (ritmo 40), destellos azules y morados (ritmo 60), brillo arcoíris (ritmo 30), «Zzz» de la cabeza dormida (ritmo 5), vapor de la enfadada (ritmo 20), corazones de la feliz (ritmo 10) y polvo cósmico (ritmo 40).

## Secreto (35) · amenazadores y enormes, 8-10 emisores, Highlight negro y morado, humo oscuro y niebla

> Todos los Secretos llevan además: `Highlight` con contorno negro y relleno morado oscuro (FillTransparency 0,85), humo negro que se arrastra por el suelo (ritmo 60) y niebla morada a ras de suelo (ritmo 40). Abajo se listan solo sus emisores propios.

**102. Ojo del Pantano** — 💰 1,25M $/s · *criatura del pantano (inventado)*
- **Altura:** 15 studs
- **Modelo:** cocodrilo prehistórico gigantesco medio hundido en un pantano de lodo, del que asoman un ojo enorme, el lomo con placas cubiertas de algas y raíces retorcidas.
- **Colores:** verde musgo; lodo marrón; ojo amarillo con pupila de serpiente; algas verde oscuro.
- **Partículas (7):** burbujas de lodo (ritmo 50), moscas (ritmo 20), vapor (ritmo 40), gotas (ritmo 30), luciérnagas (ritmo 20), ondas en el lodo (ritmo 1) y destellos del ojo.

**103. Raptor 67** — 💰 1,55M $/s · *raptor meme (inventado)*
- **Altura:** 16,2 studs
- **Modelo:** raptor gigante y fornido con camiseta de baloncesto «67», haciendo el gesto de las manos arriba y abajo, con un balón enorme.
- **Colores:** plumas moradas; camiseta amarilla con números negros; balón naranja.
- **Partículas (6):** números «67» flotando (ritmo 20), confeti (ritmo 50), destellos (ritmo 40), balones pequeños (ritmo 5), estrellas (ritmo 30) y notas musicales (ritmo 20).

**104. Titanoboa Rey** — 💰 3,5M $/s · *Titanoboa*
- **Altura:** 18,5 studs
- **Modelo:** serpiente colosal enrollada en varias vueltas que forman una torre, con la cabeza alzada en lo alto, una corona y la lengua fuera.
- **Colores:** escamas verde oliva con rombos marrones; barriga amarilla; corona dorada; lengua roja.
- **Partículas (7):** siseo en ondas verdes (ritmo 5), escamas brillantes (ritmo 40), hojas de selva (ritmo 40), destellos dorados (ritmo 40), niebla verde (ritmo 40), gotas (ritmo 20) y polvo (ritmo 30).

**105. Yetisaurio** — 💰 5M $/s · *dinosaurio yeti (inventado)*
- **Altura:** 17,4 studs
- **Modelo:** terópodo gigantesco cubierto de pelo blanco desgreñado, con brazos de gorila, pies enormes, cara azul de yeti y carámbanos en la espalda.
- **Colores:** pelo blanco; cara y manos azul claro; colmillos blancos; ojos en Neon rojo.
- **Partículas (8):** ventisca (ritmo 100), copos (ritmo 80), vaho (ritmo 40), escarcha (ritmo 40), piedras de hielo (ritmo 20), rugido (ritmo 1), destellos (ritmo 30) y nieve al pisar (ritmo 40).

**106. Cerberosaurio** — 💰 8M $/s · *raptor de tres cabezas (inventado)*
- **Altura:** 17 studs
- **Modelo:** raptor colosal con tres cabezas, cada una con un collar de pinchos, cadenas en las patas y la cola en llamas.
- **Colores:** negro con vetas rojas en Neon; collares plateados; ojos en Neon rojo; cadenas gris.
- **Partículas (9):** fuego de las tres bocas (ritmo 60 cada una), brasas (ritmo 60), humo (ritmo 40), chispas (ritmo 50), ceniza (ritmo 30), calor y cola en llamas (ritmo 60).

**107. Krakensaurio** — 💰 15M $/s · *plesiosaurio-kraken (inventado)*
- **Altura:** 17,2 studs
- **Modelo:** plesiosaurio monstruoso con tentáculos de kraken saliendo de la boca y del lomo, aplastando un barco pirata pequeño.
- **Colores:** rojo oscuro con ventosas rosas; barco marrón con velas blancas rotas.
- **Partículas (8):** agua oscura (ritmo 80), tinta negra (ritmo 40), burbujas (ritmo 50), astillas del barco (ritmo 10), espuma (ritmo 40), gotas (ritmo 40), relámpagos de tormenta (ritmo 2) y ondas.

**108. Wendigosaurio** — 💰 15M $/s · *dinosaurio esqueleto con cuernos de ciervo (inventado)*
- **Altura:** 18,8 studs
- **Modelo:** terópodo altísimo y escuálido con el cráneo descarnado, cuernos de ciervo gigantes y garras larguísimas. Silueta terrorífica.
- **Colores:** gris ceniza; cráneo blanco hueso; cuernos marrón oscuro; ojos en Neon blanco.
- **Partículas (7):** niebla blanca (ritmo 80), cuervos (ritmo 5), hojas secas (ritmo 40), escarcha (ritmo 30), ojos brillando, susurros (ondas) y ceniza (ritmo 30).

**109. Guardián del Anillo** — 💰 15M $/s · *ceratopsio caballero (inventado)*
- **Altura:** 17 studs
- **Modelo:** ceratopsio gigante con armadura completa de caballero (yelmo, hombreras, escudo en la gola) y un anillo de piedra gigantesco con runas flotando detrás.
- **Colores:** armadura plateada con remaches dorados; cuerpo gris; anillo de piedra con runas en Neon azul.
- **Partículas (8):** runas del anillo (ritmo 30), chispas azules (ritmo 50), destellos metálicos (ritmo 40), polvo (ritmo 30), rayos del anillo (ritmo 5), estrellas (ritmo 30), luz pulsante y el anillo girando.

**110. Tiranosaurio Rex** — 💰 25M $/s · *Tyrannosaurus rex*
- **Altura:** 18 studs
- **Modelo:** EL rey: enorme, con la cabeza gigantesca, dientes enormes, cicatrices de batalla, musculatura brutal, bracitos y patas como troncos. Pose de rugido con una corona ladeada.
- **Colores:** verde oscuro con rayas negras; barriga crema; corona dorada; ojos amarillos.
- **Partículas (8):** rugido (anillo de sonido, ritmo 1), temblor y polvo al pisar (ritmo 80), piedras que saltan (ritmo 30), saliva (ritmo 20), destellos de la corona (ritmo 30), hojas (ritmo 30), aliento (ritmo 40) y grietas brillantes en el suelo.

**111. Tralalerodonte** — 💰 32M $/s · *tiburón-dinosaurio meme (inventado)*
- **Altura:** 16,6 studs
- **Modelo:** tiburón-dinosaurio gigante de pie sobre tres patas musculosas con zapatillas deportivas, con gafas de sol y cadena de oro.
- **Colores:** azul tiburón; barriga blanca; zapatillas azul eléctrico; cadena dorada.
- **Partículas (7):** notas musicales (ritmo 40), agua (ritmo 50), destellos dorados (ritmo 40), burbujas (ritmo 40), confeti (ritmo 30), ondas de baile (ritmo 2) y gotas.

**112. Jefe Esqueleto Cósmico** — 💰 45M $/s · *esqueleto de T-Rex del espacio (inventado)*
- **Altura:** 17,6 studs
- **Modelo:** esqueleto colosal de T-Rex con las costillas abiertas y una galaxia brillando dentro del pecho, y fragmentos de armadura cósmica.
- **Colores:** huesos blanco hueso; galaxia en Neon morado y azul; ojos en Neon cian.
- **Partículas (9):** estrellas saliendo del pecho (ritmo 80), polvo cósmico (ritmo 60), polvo de hueso (ritmo 40), cometas (ritmo 5), nebulosa (ritmo 30), destellos (ritmo 40), llamas cian en los ojos (ritmo 30), planetas en órbita y rugido.

**113. Espino Cósmico** — 💰 60M $/s · *Spinosaurus del espacio (inventado)*
- **Altura:** 18,6 studs
- **Modelo:** espinosaurio gigantesco con una vela colosal en el lomo que es una ventana al espacio, hocico de cocodrilo y garras enormes.
- **Colores:** azul noche; vela con textura de galaxia; dientes blancos; garras en Neon morado.
- **Partículas (9):** estrellas de la vela (ritmo 100), nebulosa (ritmo 40), polvo cósmico (ritmo 60), cometas (ritmo 5), destellos (ritmo 50), agua cósmica (ritmo 40), planetas en órbita, rayos de luz y ondas.

**114. Rompefauces** — 💰 60M $/s · *bestia de la grieta (inventado)*
- **Altura:** 17,4 studs
- **Modelo:** monstruo colosal con una boca que se abre en cuatro mandíbulas como una flor de dientes, con cristales negros saliendo de la espalda.
- **Colores:** negro; interior de la boca en Neon morado; dientes blancos; cristales con borde morado.
- **Partículas (8):** succión de partículas hacia la boca (ritmo 80), fragmentos (ritmo 30), chispas moradas (ritmo 50), destellos (ritmo 40), humo (ritmo 40), rayos (ritmo 5), polvo y ondas.

**115. Megaloceros Espíritu** — 💰 145M $/s · *Megaloceros (ciervo gigante)*
- **Altura:** 18,4 studs
- **Modelo:** ciervo gigantesco y majestuoso con astas enormes como alas y cerezos en flor creciendo en ellas, con un manto de enredaderas.
- **Colores:** blanco espiritual semitransparente; astas doradas; flores rosa; manto verde.
- **Partículas (8):** pétalos (ritmo 100), orbes de espíritu (ritmo 30), luz espiritual, mariposas (ritmo 20), destellos dorados (ritmo 50), hojas (ritmo 40), farolillos (ritmo 5) y rayos de luz.

**116. Ala de Cristal** — 💰 145M $/s · *pterosaurio de cristal oscuro (inventado)*
- **Altura:** 17 studs
- **Modelo:** pterosaurio gigante con las alas hechas de cientos de fragmentos de cristal negro unidos por energía.
- **Colores:** cristal negro; uniones en Neon rosa.
- **Partículas (8):** fragmentos girando (ritmo 40), chispas rosas (ritmo 80), destellos (ritmo 60), rayos entre fragmentos (ritmo 5), polvo de cristal (ritmo 50), estrellas, viento y luz pulsante.

**117. Plesio Eléctrico** — 💰 200M $/s · *plesiosaurio-anguila (inventado)*
- **Altura:** 17,6 studs
- **Modelo:** plesiosaurio enorme con cuerpo de anguila eléctrica y bobinas de energía en el lomo de las que saltan rayos.
- **Colores:** amarillo y negro; bobinas plateadas; rayos en Neon azul eléctrico.
- **Partículas (9):** rayos (ritmo 20), chispas (ritmo 100), arcos eléctricos (Beams), destellos (ritmo 60), agua (ritmo 40), burbujas (ritmo 40), humo (ritmo 30), luz parpadeante y ondas.

**118. Megalodón Mutante** — 💰 215M $/s · *Megalodon mutante (inventado)*
- **Altura:** 17 studs
- **Modelo:** megalodón gigantesco con patas musculosas de dinosaurio, caminando, con cicatrices, un ojo mecánico y placas de metal atornilladas.
- **Colores:** gris con cicatrices rojas; ojo plateado con luz roja; placas metálicas.
- **Partículas (8):** agua (ritmo 80), gotas (ritmo 50), chispas del ojo (ritmo 30), burbujas (ritmo 40), saliva (ritmo 30), temblor al pisar (ritmo 40), humo (ritmo 30) y destellos.

**119. Gargolasaurio** — 💰 225M $/s · *gárgola dinosaurio (inventado)*
- **Altura:** 17,8 studs
- **Modelo:** raptor gigante de piedra agazapado sobre una columna gótica, con alas de murciélago de piedra y musgo.
- **Colores:** piedra gris; ojos en Neon rojo; musgo verde.
- **Partículas (7):** polvo de piedra (ritmo 60), gotas de lluvia (ritmo 80), murciélagos (ritmo 5), relámpagos (ritmo 2), destellos de los ojos, piedrecitas (ritmo 20) y niebla.

**120. Medusaurio Puro** — 💰 225M $/s · *medusa-dinosaurio (inventado)*
- **Altura:** 18 studs
- **Modelo:** dinosaurio enorme con la cabeza en forma de campana de medusa transparente y decenas de tentáculos largos colgando.
- **Colores:** campana blanca brillante; tentáculos rosa y azul pastel en Neon.
- **Partículas (8):** pulsos de luz (ritmo 2), burbujas (ritmo 80), destellos (ritmo 60), polvo marino (ritmo 40), corriente (ritmo 30), luz pulsante, orbes (ritmo 20) y gotas.

**121. Experimento #001** — 💰 285M $/s · *el primer experimento (inventado)*
- **Altura:** 16,8 studs
- **Modelo:** dinosaurio enorme cosido de partes distintas (cabeza de raptor, cuerpo de triceratops, cola de anquilosaurio), con suturas, tornillos, tubos y un tanque en la espalda.
- **Colores:** cada parte de un color (verde, gris y marrón); suturas negras; tornillos plateados; tanque con líquido en Neon verde.
- **Partículas (9):** chispas eléctricas (ritmo 80), rayos (ritmo 10), vapor (ritmo 40), burbujas del tanque (ritmo 40), gotas (ritmo 30), humo (ritmo 40), destellos (ritmo 30), luz parpadeante y ondas.

**122. Dunkleosteus** — 💰 300M $/s · *Dunkleosteus*
- **Altura:** 15,6 studs
- **Modelo:** pez acorazado colosal con la cabeza cubierta de una armadura gruesa de placas y una mandíbula de cuchillas de hueso.
- **Colores:** armadura gris oscuro con remaches; cuerpo azul acero; mandíbula blanca.
- **Partículas (8):** burbujas (ritmo 80), corriente (ritmo 50), chispas al cerrar la mandíbula (ritmo 30), destellos metálicos (ritmo 40), polvo marino (ritmo 40), gotas, ondas y peces huyendo (ritmo 10).

**123. Centaurosaurio** — 💰 350M $/s · *centauro-raptor (inventado)*
- **Altura:** 18,6 studs
- **Modelo:** cuerpo de saurópodo con el torso de un raptor guerrero, armadura, carcaj y un arco gigante tensado.
- **Colores:** marrón caramelo; armadura bronce; arco dorado; flecha en Neon azul.
- **Partículas (8):** flechas de luz (ritmo 5), estelas (ritmo 40), chispas azules (ritmo 60), destellos (ritmo 50), polvo (ritmo 40), hojas (ritmo 30), luz y ondas.

**124. Colmillo Navaja** — 💰 350M $/s · *raptor de acero (inventado)*
- **Altura:** 17 studs
- **Modelo:** raptor gigante con colmillos de acero como navajas, garras metálicas y placas de acero en el lomo.
- **Colores:** negro; colmillos, garras y placas plateados con el filo en Neon blanco.
- **Partículas (8):** destellos metálicos (ritmo 80), chispas (ritmo 60), zarpazos (ritmo 5), estelas plateadas (ritmo 40), polvo (ritmo 30), humo, luz fría y ondas.

**125. Sarcosuchus Tiburón** — 💰 350M $/s · *supercocodrilo con aleta de tiburón (inventado)*
- **Altura:** 15,8 studs
- **Modelo:** cocodrilo colosal con aleta dorsal de tiburón, mandíbula enorme abierta y placas óseas en relieve por todo el lomo.
- **Colores:** verde grisáceo; aleta azul tiburón; dientes blancos.
- **Partículas (8):** agua (ritmo 80), salpicaduras (ritmo 60), burbujas (ritmo 40), saliva (ritmo 20), gotas (ritmo 40), espuma, ondas y destellos.

**126. Estego Luminoso** — 💰 350M $/s · *Stegosaurus bioluminiscente (inventado)*
- **Altura:** 17,4 studs
- **Modelo:** estegosaurio colosal con placas translúcidas gigantes que brillan desde dentro y venas luminosas por todo el cuerpo.
- **Colores:** azul oscuro; placas y venas en Neon cian y rosa.
- **Partículas (8):** pulsos de luz (ritmo 2), polvo brillante (ritmo 80), destellos (ritmo 60), orbes (ritmo 30), burbujas (ritmo 30), rayos de las placas, chispas y luz pulsante.

**127. Nucleocodrilo** — 💰 500M $/s · *cocodrilo radiactivo (inventado)*
- **Altura:** 16 studs
- **Modelo:** cocodrilo gigantesco con barriles radiactivos y tuberías pegadas al lomo, y vapor saliendo de los ojos.
- **Colores:** verde radiactivo; barriles amarillos; tuberías oxidadas; vapor en Neon verde.
- **Partículas (9):** vapor tóxico (ritmo 100), burbujas (ritmo 60), chispas (ritmo 40), gotas (ritmo 40), humo verde (ritmo 60), rayos (ritmo 5), destellos, ondas radiactivas y luz verde pulsante.

**128. Raya Espíritu Luminosa** — 💰 500M $/s · *raya prehistórica fantasma (inventado)*
- **Altura:** 15,4 studs
- **Modelo:** mantarraya gigantesca semitransparente con dibujos luminosos que forman patrones en la espalda.
- **Colores:** azul oscuro transparente; dibujos en Neon turquesa.
- **Partículas (8):** estela de luz (ritmo 80), orbes (ritmo 40), destellos (ritmo 60), polvo marino (ritmo 40), burbujas (ritmo 30), pulsos, corriente y luz.

**129. Gliptodonte Esqueleto** — 💰 550M $/s · *Glyptodon fósil viviente (inventado)*
- **Altura:** 16,4 studs
- **Modelo:** esqueleto de armadillo gigante con el caparazón intacto y agrietado, huesos a la vista y fuego fantasma dentro.
- **Colores:** huesos blancos; caparazón gris piedra; fuego interior en Neon verde.
- **Partículas (8):** polvo de huesos (ritmo 60), fuego verde (ritmo 60), niebla (ritmo 40), destellos (ritmo 30), piedrecitas (ritmo 20), calaveritas (ritmo 3), luz y ondas.

**130. Mosa Abisal Luminoso** — 💰 600M $/s · *Mosasaurus del abismo (inventado)*
- **Altura:** 17,6 studs
- **Modelo:** mosasaurio colosal de las profundidades con una antena de pez abisal con una luz colgando y dientes que brillan.
- **Colores:** negro azulado; luz de la antena en Neon amarillo; dientes blancos; puntos bioluminiscentes.
- **Partículas (9):** burbujas (ritmo 80), puntos de luz (ritmo 60), destellos (ritmo 50), polvo abisal (ritmo 60), corriente (ritmo 30), orbes (ritmo 20), luz oscilante, ondas y peces pequeños.

**131. Mecha-Mordedor** — 💰 600M $/s · *T-Rex robot (inventado)*
- **Altura:** 18,2 studs
- **Modelo:** cabeza de T-Rex robot gigantesca sobre patas mecánicas, mandíbula de acero, pistones, cables y una chimenea humeante.
- **Colores:** metal plateado y rojo; ojos en Neon rojo; tornillos dorados.
- **Partículas (9):** chispas (ritmo 100), humo de la chimenea (ritmo 60), vapor de los pistones (ritmo 40), aceite (ritmo 20), destellos (ritmo 40), rayos (ritmo 5), luz parpadeante, piezas que saltan (ritmo 10) y ondas.

**132. Terrorave Esqueleto** — 💰 750M $/s · *ave del terror fósil (inventado)*
- **Altura:** 18 studs
- **Modelo:** esqueleto de ave del terror gigantesca con un pico de hueso enorme y plumas fantasma translúcidas.
- **Colores:** huesos blancos; plumas en Neon morado translúcido.
- **Partículas (8):** plumas fantasma (ritmo 60), polvo de hueso (ritmo 50), niebla (ritmo 40), fuego fantasma (ritmo 40), destellos (ritmo 40), calaveritas (ritmo 3), ondas y luz.

**133. Euriptérido Ojo** — 💰 825M $/s · *escorpión marino gigante (inventado)*
- **Altura:** 16,6 studs
- **Modelo:** escorpión marino colosal con un único ojo gigantesco en el centro del caparazón, pinzas enormes y cola de pinchos.
- **Colores:** rojo coral; ojo blanco con iris verde en Neon.
- **Partículas (8):** burbujas (ritmo 60), destellos del ojo (ritmo 30), rayo del ojo (Beam corto), corriente (ritmo 40), polvo marino (ritmo 40), chispas (ritmo 30), luz y ondas.

**134. Señor de los Anillos** — 💰 825M $/s · *saurópodo de Saturno (inventado)*
- **Altura:** 19,4 studs
- **Modelo:** saurópodo colosal con tres anillos planetarios cruzados girando alrededor y una corona de lunas.
- **Colores:** cuerpo dorado; anillos morado y plateado; lunas grises.
- **Partículas (9):** polvo de los anillos (ritmo 100), estrellas (ritmo 60), asteroides en órbita (ritmo 20), destellos (ritmo 60), nebulosa (ritmo 30), cometas (ritmo 5), rayos, luz y ondas.

**135. Megaterio Esqueleto** — 💰 900M $/s · *Megatherium fósil (inventado)*
- **Altura:** 18,4 studs
- **Modelo:** esqueleto de perezoso gigante de pie con garras enormes, una lámpara antigua colgando de una garra y cadenas.
- **Colores:** huesos blancos; lámpara con luz en Neon amarillo; cadenas grises.
- **Partículas (8):** luz oscilante, polvo de hueso (ritmo 60), polillas (ritmo 20), niebla (ritmo 40), destellos (ritmo 30), ceniza (ritmo 30), llama de la lámpara (ritmo 40) y ondas.

**136. Erizosaurio Tóxico** — 💰 1,75B $/s · *anquilosaurio-erizo mutante (inventado)*
- **Altura:** 19 studs
- **Modelo:** anquilosaurio gigantesco cubierto de cientos de púas largas como un erizo, todas goteando veneno brillante, con una maza de púas en la cola.
- **Colores:** púas negras con puntas en Neon verde; cara marrón; ojos negros brillantes.
- **Partículas (10):** gotas tóxicas (ritmo 100), burbujas (ritmo 60), vapor verde (ritmo 80), chispas (ritmo 40), púas que salen disparadas (ritmo 5), destellos (ritmo 40), esporas (ritmo 40), charcos brillantes, ondas y luz verde pulsante.

## Eterno (24) · leyendas vivas, 20-24 studs, 10-14 emisores, anillos de energía, rayos de luz y pulsos

> Todos los Eternos llevan además: **2-3 anillos de energía** de su color girando a distintas velocidades e inclinaciones (cilindros finos en Neon semitransparente), **polvo de luz** que sube del suelo (ritmo 100), **pulso de onda** cada 4 s (anillo que se expande por el suelo), un `Beam` de luz vertical desde su pecho al cielo y **2 luces** (`PointLight` de radio 16 y `SpotLight` hacia arriba). Su pose ocupa todo el pedestal y lo sobrepasa.

**137. Rex de Hielo Eterno** — 💰 65M $/s · *T-Rex glacial (inventado)*
- **Altura:** 21 studs
- **Modelo:** T-Rex colosal tallado en HIELO glacial, con armadura de escarcha en capas sobre lomo, hombros y cola, carámbanos como cuchillas colgando de la mandíbula, una corona de estalactitas de hielo y las patas sobre un glaciar agrietado. Musculatura marcada en el hielo.
- **Colores:** hielo azul claro semitransparente (Transparency 0,2) con núcleo en Neon blanco azulado; vetas azul marino; ojos en Neon cian.
- **Partículas (12):** ventisca envolvente (ritmo 150), copos grandes (ritmo 100), aliento helado (ritmo 80), cristales de hielo que caen (ritmo 60), escarcha en el suelo (ritmo 60), carámbanos que se forman y caen (ritmo 10), destellos de diamante (ritmo 80), niebla fría (ritmo 60), estrellas de nieve en órbita (ritmo 30), grietas de hielo brillando en el suelo, auroras pequeñas (ritmo 10) y pulsos de frío.

**138. Fénix-Quetzal** — 💰 85M $/s · *Quetzalcoatlus de fuego (inventado)*
- **Altura:** 22 studs
- **Modelo:** pterosaurio gigantesco con las alas abiertas por completo, hechas de LLAMAS en capas de plumas de fuego; cola de fuego larguísima que se enrosca alrededor del pedestal; cresta en forma de corona de llamas; garras de oro fundido.
- **Colores:** cuerpo naranja ardiente; llamas en Neon amarillo, naranja y rojo en degradado; garras doradas; ojos blancos incandescentes.
- **Partículas (13):** fuego en las alas (ritmo 150), brasas (ritmo 120), chispas (ritmo 100), humo (ritmo 60), ceniza que renace en chispas (ritmo 40), plumas de fuego que caen (ritmo 30), calor ondulante, explosiones de fuego pequeñas (ritmo 3), destellos dorados (ritmo 60), anillos de fuego, estela de la cola (ritmo 80), rayos de sol y pulso ígneo.

**139. Espino de Lava** — 💰 100M $/s · *Spinosaurus volcánico (inventado)*
- **Altura:** 23 studs
- **Modelo:** espinosaurio colosal con la vela del lomo convertida en una cordillera de volcanes en erupción de la que cae lava por los lados, cuerpo de roca negra agrietada con placas de obsidiana, mandíbula de cocodrilo con dientes de magma y garras de basalto.
- **Colores:** roca negra; grietas y lava en Neon naranja y amarillo; obsidiana morada brillante; humo gris.
- **Partículas (13):** erupción de lava desde la vela (ritmo 120), gotas de lava (ritmo 80), humo volcánico (ritmo 100), ceniza (ritmo 80), brasas (ritmo 100), rocas incandescentes (ritmo 10), chispas (ritmo 80), calor ondulante, ríos de lava brillando, explosiones (ritmo 3), relámpagos volcánicos (ritmo 2), anillos de fuego y pulsos de lava.

**140. Pliosaurio Rey de las Mareas** — 💰 130M $/s · *Pliosaurus coronado (inventado)*
- **Altura:** 21,4 studs
- **Modelo:** pliosaurio colosal saliendo de un remolino gigante, con una corona de coral y perlas, un tridente enorme en una aleta, una capa de algas y armadura de conchas en el lomo.
- **Colores:** azul profundo con escamas doradas; corona de coral rosa con perlas blancas; tridente dorado; remolino turquesa.
- **Partículas (12):** remolino (ritmo 150), burbujas (ritmo 120), burbujas doradas (ritmo 60), espuma (ritmo 80), peces pequeños en órbita (ritmo 20), gotas (ritmo 80), rayos del tridente (ritmo 3), destellos (ritmo 60), corriente (ritmo 60), olas (ritmo 5), anillos azules y pulsos de marea.

**141. Mosasaurio Eterno** — 💰 180M $/s · *Mosasaurus gigante*
- **Altura:** 21,6 studs
- **Modelo:** el mosasaurio más grande jamás visto, enroscado en espiral con la boca abierta y dobles hileras de dientes, cicatrices de batalla, aletas enormes y una cola de tiburón gigantesca. Olas congeladas en el aire a su alrededor.
- **Colores:** azul oscuro, barriga blanca, líneas laterales en Neon azul, ojos dorados.
- **Partículas (12):** olas (ritmo 120), gotas (ritmo 100), espuma (ritmo 80), burbujas (ritmo 80), salpicaduras (ritmo 60), corriente (ritmo 60), destellos (ritmo 60), rayos de luz bajo el agua, peces huyendo (ritmo 10), anillos azules, pulsos y niebla marina.

**142. Ptero Lunar Eterno** — 💰 250M $/s · *pterosaurio de la luna (inventado)*
- **Altura:** 22,4 studs
- **Modelo:** pterosaurio gigante plateado con una luna creciente enorme sobre la cabeza en lugar de cresta, alas inmensas con las fases lunares grabadas y una armadura de plata con estrellas.
- **Colores:** plateado y blanco; luna en Neon blanco; alas azul noche con lunas en Neon.
- **Partículas (12):** polvo de estrellas plateado (ritmo 150), brillo de luna (ritmo 60), estrellas (ritmo 100), cometas (ritmo 5), destellos (ritmo 80), plumas plateadas (ritmo 40), nebulosa azul (ritmo 40), rayos de luna, lunas pequeñas en órbita, anillos plateados, pulsos y niebla nocturna.

**143. Devoramundos** — 💰 500M $/s · *bestia cósmica (inventado)*
- **Altura:** 23,4 studs
- **Modelo:** criatura colosal con forma de T-Rex, armadura de asteroides, cuernos de cristal oscuro y la boca abierta con un AGUJERO NEGRO dentro que absorbe partículas. Planetas orbitando su cabeza.
- **Colores:** negro con bordes morados; agujero negro con disco de acreción en Neon naranja; planetas de colores.
- **Partículas (14):** partículas absorbidas hacia la boca (velocidad negativa, ritmo 150), disco de acreción girando (ritmo 100), estrellas (ritmo 100), polvo cósmico (ritmo 80), planetas en órbita, asteroides (ritmo 20), cometas (ritmo 5), destellos (ritmo 80), nebulosa (ritmo 40), relámpagos morados (ritmo 3), distorsión, anillos morados, pulsos gravitatorios y rugido.

**144. Oni-Rex** — 💰 600M $/s · *T-Rex demonio japonés (inventado)*
- **Altura:** 23 studs
- **Modelo:** T-Rex colosal con máscara oni gigante (cuernos, ceño, colmillos dorados), armadura samurái en capas, cuerda sagrada en el cuello, faroles de papel colgando de la cola y una katana gigante clavada en el pedestal.
- **Colores:** rojo oni; máscara roja y dorada; armadura negra y roja; cuerda blanca; faroles en Neon naranja.
- **Partículas (13):** pétalos de cerezo (ritmo 120), fuego fatuo azul (ritmo 60), brasas (ritmo 80), humo (ritmo 60), destellos dorados (ritmo 80), hojas (ritmo 40), farolillos que suben (ritmo 5), cortes de katana (ritmo 2), relámpagos rojos (ritmo 2), niebla, anillos rojos, pulsos y kanjis flotantes.

**145. Archelon Terra** — 💰 750M $/s · *Archelon con una isla en el caparazón (inventado)*
- **Altura:** 22 studs
- **Modelo:** tortuga marina colosal que lleva en el caparazón una ISLA entera: montañas, árboles de bloques, una cascada, un templo pequeño y nubes alrededor de la cima.
- **Colores:** piel verde agua; caparazón de roca; isla verde con arena; cascada azul; templo blanco y dorado.
- **Partículas (12):** cascada (ritmo 120), niebla de la cascada (ritmo 60), pájaros (ritmo 10), hojas (ritmo 60), mariposas (ritmo 20), nubes (ritmo 20), burbujas (ritmo 60), destellos (ritmo 60), arcoíris de la cascada, luz del templo, anillos verdes y pulsos.

**146. Dragón Fracturado** — 💰 800M $/s · *dragón-raptor roto (inventado)*
- **Altura:** 23 studs
- **Modelo:** raptor-dragón colosal con el cuerpo partido en decenas de trozos que flotan separados, unidos por energía, como un puzle roto que se mueve.
- **Colores:** piedra negra; energía en Neon rosa y morado.
- **Partículas (12):** trozos girando, rayos entre fragmentos (Beams), chispas (ritmo 120), polvo de cristal (ritmo 100), destellos (ritmo 80), humo (ritmo 60), estrellas (ritmo 60), relámpagos (ritmo 3), distorsión, anillos rosa, pulsos y rugido.

**147. Gigantopithecus Rey** — 💰 880M $/s · *Gigantopithecus (simio gigante prehistórico)*
- **Altura:** 22,6 studs
- **Modelo:** simio colosal sentado en un trono de piedra con runas, corona de huesos de dinosaurio, capa de piel y un T-Rex diminuto en la mano. Brazos enormes y pecho ancho.
- **Colores:** pelo marrón oscuro; cara gris; trono con runas en Neon dorado; corona blanca; capa roja.
- **Partículas (12):** ondas al golpearse el pecho (ritmo 1), runas (ritmo 30), polvo (ritmo 100), hojas de selva (ritmo 80), destellos dorados (ritmo 80), piedras (ritmo 20), rayos de luz, niebla de selva (ritmo 60), lianas que se mueven, anillos dorados, pulsos y rugido.

**148. Titanoboa del Vacío** — 💰 900M $/s · *serpiente cósmica (inventado)*
- **Altura:** 22 studs
- **Modelo:** titanoboa colosal que sale y entra de varios portales en el aire, con el cuerpo apareciendo y desapareciendo, y una corona de estrellas en la cabeza.
- **Colores:** escamas negras con constelaciones; portales en Neon morado.
- **Partículas (12):** portales girando (ritmo 80), estrellas (ritmo 120), polvo cósmico (ritmo 100), nebulosa (ritmo 40), destellos (ritmo 80), cometas (ritmo 5), escamas brillantes (ritmo 40), distorsión, siseo, anillos morados, pulsos y niebla del vacío.

**149. Rinoceronte Lanudo Oso** — 💰 1B $/s · *Coelodonta mutante (inventado)*
- **Altura:** 23,4 studs
- **Modelo:** rinoceronte lanudo colosal con cuerpo de oso, de pie y rugiendo, dos cuernos gigantes, garras de oso enormes y armadura de hielo en los hombros.
- **Colores:** pelo marrón rojizo; cuernos hueso; garras negras; hielo azul.
- **Partículas (12):** nieve (ritmo 120), aliento helado (ritmo 80), escarcha (ritmo 60), ventisca (ritmo 100), piedras de hielo (ritmo 20), rugido, destellos (ritmo 60), temblor al pisar (ritmo 60), carámbanos (ritmo 10), anillos blancos, pulsos y niebla.

**150. Gigantosaurio Titán** — 💰 1B $/s · *Giganotosaurus titánico (inventado)*
- **Altura:** 24,4 studs
- **Modelo:** giganotosaurio colosal con armadura de montañas en el lomo (picos de roca con lava), cicatrices brillantes, cadenas rotas y garras de piedra.
- **Colores:** gris piedra con vetas de lava en Neon naranja; cicatrices blancas; cadenas oxidadas.
- **Partículas (13):** temblor (ritmo 100), rocas que caen (ritmo 30), lava (ritmo 80), humo (ritmo 80), ceniza (ritmo 60), brasas (ritmo 80), chispas (ritmo 60), polvo (ritmo 100), rugido, grietas brillantes en el suelo, anillos naranjas, pulsos y relámpagos (ritmo 2).

**151. Pegasaurio** — 💰 1,3B $/s · *saurópodo alado (inventado)*
- **Altura:** 24,6 studs
- **Modelo:** saurópodo esbelto y colosal con alas de pegaso inmensas abiertas, crin larga ondeando en el cuello, armadura celestial dorada y pezuñas de oro.
- **Colores:** blanco perla; alas blancas con borde dorado; crin blanca y azul cielo; armadura dorada.
- **Partículas (12):** nubes (ritmo 80), plumas (ritmo 100), arcoíris (ritmo 30), destellos dorados (ritmo 100), estrellas (ritmo 60), rayos celestiales, viento (ritmo 60), purpurina (ritmo 80), notas de arpa (ritmo 5), anillos dorados, pulsos y halo de luz.

**152. Diplodocus Esqueleto Jinete** — 💰 1,3B $/s · *esqueleto de saurópodo con jinete (inventado)*
- **Altura:** 24 studs
- **Modelo:** esqueleto colosal de diplodocus con armadura negra y estandartes, montado por un esqueleto de raptor caballero con una lanza gigante.
- **Colores:** huesos blancos; armadura negra; estandartes verdes; punta de la lanza y ojos en Neon verde.
- **Partículas (12):** fuego verde fantasma (ritmo 120), niebla (ritmo 100), polvo de hueso (ritmo 80), almas que suben (ritmo 20), destellos verdes (ritmo 60), cuervos (ritmo 5), ceniza (ritmo 60), estandartes ondeando, relámpagos verdes (ritmo 2), anillos verdes, pulsos y susurros.

**153. Mantis Jurásica Nuclear** — 💰 1,5B $/s · *mantis prehistórica radiactiva (inventado)*
- **Altura:** 22 studs
- **Modelo:** mantis religiosa colosal con guadañas gigantes de acero, el abdomen brillando como un reactor y placas de blindaje en el tórax.
- **Colores:** verde lima; guadañas plateadas; abdomen en Neon verde; ojos rojos.
- **Partículas (13):** radiación (ritmo 150), rayos (ritmo 5), chispas (ritmo 100), vapor (ritmo 80), burbujas (ritmo 60), destellos (ritmo 80), cortes de guadaña (ritmo 2), esporas (ritmo 60), humo verde (ritmo 60), luz pulsante, anillos verdes, pulsos y distorsión.

**154. Plesio Eléctrico Luminoso** — 💰 1,75B $/s · *Plesio Eléctrico supremo (inventado)*
- **Altura:** 23 studs
- **Modelo:** plesiosaurio colosal hecho de pura electricidad, con el contorno del cuerpo formado por rayos y un núcleo de energía en el pecho.
- **Colores:** cuerpo semitransparente en Neon amarillo eléctrico; núcleo blanco.
- **Partículas (13):** rayos constantes (Beams), chispas (ritmo 150), arcos eléctricos (ritmo 10), destellos (ritmo 100), plasma (ritmo 80), burbujas (ritmo 60), humo (ritmo 40), luz parpadeante, tormenta pequeña encima (ritmo 3), estrellas (ritmo 60), anillos amarillos, pulsos y zumbido.

**155. Equinoccio** — 💰 1,8B $/s · *Brachiosaurus día y noche (inventado)*
- **Altura:** 25 studs
- **Modelo:** braquiosaurio colosal partido por la mitad a lo largo: una mitad es de DÍA (sol gigante en el lomo, nubes y pájaros) y la otra de NOCHE (luna, estrellas y constelaciones).
- **Colores:** mitad dorada con sol en Neon amarillo; mitad azul noche con luna en Neon blanco y estrellas.
- **Partículas (13):** rayos de sol (ritmo 100), estrellas (ritmo 100), nubes (ritmo 40), pájaros (ritmo 5), polvo dorado (ritmo 80), polvo plateado (ritmo 80), cometas (ritmo 5), destellos (ritmo 80), auroras (ritmo 20), eclipse pulsante, anillos dorado y azul, pulsos y niebla.

**156. Aguijón Terrible** — 💰 2B $/s · *escorpión marino gigante (inventado)*
- **Altura:** 22,6 studs
- **Modelo:** euriptérido colosal con la cola levantada y un aguijón gigantesco que gotea energía, pinzas enormes con pinchos y blindaje en capas.
- **Colores:** caparazón negro y morado; aguijón en Neon magenta.
- **Partículas (12):** gotas de energía (ritmo 100), chispas (ritmo 100), rayos del aguijón (ritmo 5), destellos (ritmo 80), burbujas (ritmo 60), vapor (ritmo 60), polvo (ritmo 60), zarpazos de pinza (ritmo 2), luz pulsante, anillos magenta, pulsos y niebla.

**157. Archelon Terra Luminoso** — 💰 2,5B $/s · *Archelon Terra de cristal (inventado)*
- **Altura:** 23 studs
- **Modelo:** como el Archelon Terra, pero la isla es de cristal brillante: árboles, montañas y templo de cristal, y una cascada de luz.
- **Colores:** piel turquesa; isla en Neon cian, rosa y blanco.
- **Partículas (13):** cascada de luz (ritmo 120), destellos de cristal (ritmo 150), luz pulsante, mariposas de luz (ritmo 30), polvo brillante (ritmo 100), orbes (ritmo 40), pájaros de cristal (ritmo 5), arcoíris, burbujas (ritmo 60), rayos, anillos cian, pulsos y niebla brillante.

**158. Dunkleosteus Esqueleto** — 💰 2,5B $/s · *Dunkleosteus fósil (inventado)*
- **Altura:** 21 studs
- **Modelo:** pez acorazado colosal de solo huesos y placas, con fuego fantasma azul ardiendo dentro de la armadura y cadenas de ancla.
- **Colores:** huesos blancos; placas gris oscuro; fuego interior en Neon azul; cadenas oxidadas.
- **Partículas (12):** fuego azul (ritmo 150), burbujas (ritmo 100), polvo de hueso (ritmo 80), almas (ritmo 20), niebla (ritmo 60), chispas al cerrar la mandíbula (ritmo 40), destellos (ritmo 60), corriente (ritmo 60), relámpagos (ritmo 2), anillos azules, pulsos y rugido.

**159. Experimento #010 Dragón Rosa** — 💰 2,5B $/s · *dragón de laboratorio (inventado)*
- **Altura:** 24 studs
- **Modelo:** dragón-raptor colosal con tubos de laboratorio conectados al lomo, armadura biomecánica, collar con «#010» y alas de membrana gigantes.
- **Colores:** rosa chicle; tubos transparentes con líquido en Neon rosa; armadura blanca y plateada.
- **Partículas (13):** burbujas rosa (ritmo 120), chispas (ritmo 100), vapor (ritmo 80), corazones (ritmo 20), destellos (ritmo 100), rayos (ritmo 5), líquido que gotea (ritmo 40), humo (ritmo 40), alarmas pulsantes, estrellas (ritmo 60), anillos rosa, pulsos y rugido.

**160. Gigantosaurio Esqueleto** — 💰 4B $/s · *Giganotosaurus fósil supremo (inventado)*
- **Altura:** 26 studs
- **Modelo:** esqueleto gigantesco de giganotosaurio, el mayor de los Eternos, en pose de rugido, con fuego dentro del cráneo y de la caja torácica, una corona de huesos y cadenas rotas.
- **Colores:** huesos blancos con grietas; fuego en Neon naranja; ojos en Neon rojo; corona de hueso negro.
- **Partículas (14):** fuego del cráneo (ritmo 150), fuego del pecho (ritmo 120), ceniza (ritmo 100), brasas (ritmo 100), humo (ritmo 80), polvo de hueso (ritmo 60), almas (ritmo 20), rugido, rocas (ritmo 20), relámpagos (ritmo 3), grietas de lava en el suelo, anillos naranjas, pulsos y temblor.

## Divino (14) · dioses colosales, 26-32 studs, 300-450 piezas, 15-25 emisores

> Todos los Divinos llevan además: **halo** gigante (o varios) sobre la cabeza, **columna de luz** desde el cielo (`Beam` ancho), **partículas arcoíris** (ritmo 150), **onda de choque** cada 3 s, 3-4 anillos de energía, 3 luces potentes (`PointLight` radio 24+, `SpotLight` hacia arriba y hacia el bicho), **temblor de cámara** si un jugador se acerca a menos de 15 studs, y una **aparición épica** al salir del fósil (columna de luz, explosión de partículas, onda de choque y temblor). Son **lo más imponente del juego**: cada pieza recargada, varias capas de armadura y adornos, y una pose de poder absoluto que domina el pedestal.

**161. Unicornio-Ceratops** — 💰 1B $/s · *Triceratops divino (inventado)*
- **Altura:** 26,4 studs
- **Modelo:** ceratopsio colosal y majestuoso con un único cuerno gigantesco en espiral de cristal y oro, gola de vidriera de catedral con rosetones de colores, crin arcoíris en llamas, armadura de placas de oro con gemas y alas de luz plegadas. Se alza sobre las patas traseras.
- **Colores:** blanco perla; cuerno dorado con cristal; gola de vidriera (Neon de colores); crin arcoíris; armadura dorada.
- **Partículas (17):** estela arcoíris (ritmo 200), estrellas (ritmo 150), purpurina dorada (ritmo 150), destellos de la vidriera (ritmo 100), rayos del cuerno, nubes (ritmo 40), plumas de luz (ritmo 60), corazones (ritmo 20), mariposas de luz (ritmo 30), polvo de diamante (ritmo 100), cometas (ritmo 5), arcoíris, notas celestiales (ritmo 10), orbes (ritmo 40), halo doble, anillos y onda de choque.

**162. Archidemonio Rex** — 💰 1,25B $/s · *T-Rex demonio supremo (inventado)*
- **Altura:** 28 studs
- **Modelo:** T-Rex colosal infernal con cuatro cuernos de demonio retorcidos, alas de murciélago gigantes con desgarros, armadura de obsidiana con calaveras, corona de fuego, cadenas rotas en las patas y un trono de lava detrás.
- **Colores:** negro y rojo; alas con membrana roja; fuego en Neon rojo y naranja; obsidiana con vetas de lava; cadenas plateadas.
- **Partículas (18):** fuego infernal (ritmo 250), humo negro (ritmo 150), brasas (ritmo 200), ceniza (ritmo 120), chispas (ritmo 150), calaveras de fuego (ritmo 10), lava (ritmo 80), relámpagos rojos (ritmo 5), almas (ritmo 20), grietas de lava en el suelo, llamas del trono (ritmo 100), cadenas que tintinean, calor ondulante, runas infernales, halo de fuego, anillos rojos, columna de fuego y onda de choque.

**163. Kitsune-Raptor** — 💰 1,8B $/s · *raptor zorro de nueve colas (inventado)*
- **Altura:** 27 studs
- **Modelo:** raptor colosal y elegante con cara de zorro, nueve colas de fuego gigantes abiertas en abanico, un torii (puerta japonesa) flotando detrás, adornos de oro en el cuerpo y máscara kitsune en la frente.
- **Colores:** blanco con marcas rojas; colas en Neon azul y blanco; torii rojo; adornos dorados.
- **Partículas (17):** fuego fatuo azul en cada cola (9 emisores, ritmo 80 cada uno), pétalos (ritmo 150), destellos (ritmo 100), farolillos (ritmo 10), hojas de arce (ritmo 60), estrellas (ritmo 80), niebla espiritual (ritmo 60) y columna de luz.

**164. Llama Nocturna** — 💰 3B $/s · *Spinosaurus de fuego negro (inventado)*
- **Altura:** 29 studs
- **Modelo:** espinosaurio colosal con una vela gigantesca de fuego negro y morado, ojos ardientes, garras en llamas, armadura de hueso oscuro con runas y una luna negra detrás.
- **Colores:** negro carbón; fuego en Neon morado oscuro; ojos en Neon blanco; runas moradas.
- **Partículas (18):** fuego oscuro (ritmo 250), sombras (ritmo 150), brasas moradas (ritmo 150), humo (ritmo 120), estrellas negras (ritmo 80), runas (ritmo 20), rayos morados (ritmo 5), ceniza (ritmo 100), almas (ritmo 20), eclipse, niebla oscura, distorsión, chispas, destellos, halo negro, anillos, columna oscura y onda.

**165. Cthulhu-Plesiosaurio** — 💰 3B $/s · *plesiosaurio primigenio (inventado)*
- **Altura:** 27,6 studs
- **Modelo:** plesiosaurio colosal con la cabeza de Cthulhu (decenas de tentáculos en la cara), alas de murciélago gigantes, escamas antiguas, runas grabadas y ruinas sumergidas a su alrededor.
- **Colores:** verde oscuro; ojos en Neon amarillo; ventosas moradas; runas en Neon verde; ruinas gris.
- **Partículas (17):** niebla verde (ritmo 200), gotas (ritmo 150), runas en órbita (ritmo 30), burbujas (ritmo 150), tinta (ritmo 80), relámpagos verdes (ritmo 5), ojos que se abren en el aire (ritmo 5), polvo abisal (ritmo 100), destellos, distorsión, susurros, tentáculos de humo (ritmo 40), halo, anillos, columna y onda.

**166. Coloso Fracturado** — 💰 3,5B $/s · *Argentinosaurus de cristal (inventado)*
- **Altura:** 30 studs
- **Modelo:** argentinosaurio gigantesco, el más grande de los Divinos en volumen, con el cuerpo partido en enormes bloques de cristal que flotan separados, unidos por columnas de luz.
- **Colores:** cristal blanco y azul; luz en Neon cian.
- **Partículas (16):** fragmentos girando, rayos entre bloques (Beams), polvo de diamante (ritmo 200), destellos (ritmo 150), chispas (ritmo 100), estrellas (ritmo 100), orbes (ritmo 40), polvo al pisar (ritmo 100), relámpagos cian (ritmo 5), distorsión, halo, anillos y columna.

**167. Octo-Mamut** — 💰 4B $/s · *mamut con tentáculos (inventado)*
- **Altura:** 28,6 studs
- **Modelo:** mamut colosal con ocho trompas como tentáculos de pulpo gigantes, colmillos enormes en espiral de oro, armadura de coral y una corona de perlas.
- **Colores:** pelo morado; tentáculos rosa con ventosas blancas; colmillos dorados; coral rojo.
- **Partículas (16):** tinta morada (ritmo 150), burbujas (ritmo 200), destellos (ritmo 120), perlas (ritmo 20), agua (ritmo 100), estrellas (ritmo 80), polvo dorado (ritmo 100), barritos (ondas), halo, anillos y columna.

**168. Arcángel-Ptero** — 💰 5B $/s · *pterosaurio arcángel (inventado)*
- **Altura:** 30,4 studs
- **Modelo:** pterosaurio colosal con SEIS alas de ángel inmensas en tres pares, armadura dorada completa con gemas, espada de luz gigante y escudo, y tres halos.
- **Colores:** blanco y dorado; alas blancas con plumas doradas; espada en Neon blanco; gemas azules.
- **Partículas (20):** plumas doradas (ritmo 200), rayos celestiales, destellos (ritmo 200), coros de luz (ritmo 20), purpurina (ritmo 150), nubes (ritmo 60), estrellas (ritmo 100), orbes (ritmo 40), estela de la espada (ritmo 80), triple halo, anillos, columna y onda.

**169. Quemamundos Rex** — 💰 5B $/s · *T-Rex de magma (inventado)*
- **Altura:** 30 studs
- **Modelo:** T-Rex colosal hecho de MAGMA, con meteoritos orbitando, un planeta pequeño ardiendo en la boca y armadura de roca volcánica.
- **Colores:** roca negra; lava en Neon naranja y amarillo; planeta rojo.
- **Partículas (19):** lluvia de meteoritos (ritmo 20), fuego (ritmo 250), ceniza (ritmo 150), lava (ritmo 100), humo (ritmo 150), brasas (ritmo 200), rocas (ritmo 30), explosiones (ritmo 5), calor, grietas de lava, halo de fuego, anillos, columna y onda.

**170. Dientes de Sable Divino** — 💰 5B $/s · *Smilodon dios (inventado)*
- **Altura:** 27,4 studs
- **Modelo:** smilodon colosal y majestuoso con colmillos de cristal larguísimos, melena de luz, armadura de guerrero celestial y garras de diamante.
- **Colores:** pelaje dorado con rayas blancas; colmillos en Neon cian; melena en Neon blanco; armadura dorada.
- **Partículas (16):** brillos (ritmo 200), destellos de cristal (ritmo 150), polvo dorado (ritmo 150), zarpazos de luz (ritmo 5), rugido, estrellas (ritmo 80), orbes (ritmo 40), halo, anillos y columna.

**171. Cthulhu Luminoso** — 💰 6,5B $/s · *Cthulhu-Plesiosaurio supremo (inventado)*
- **Altura:** 30,4 studs
- **Modelo:** como el Cthulhu-Plesiosaurio pero más grande y entero bioluminiscente, con dibujos brillantes en todo el cuerpo y una corona de luz.
- **Colores:** azul abisal; dibujos en Neon turquesa y rosa.
- **Partículas (18):** pulsos de luz (ritmo 5), burbujas brillantes (ritmo 250), orbes (ritmo 60), polvo bioluminiscente (ritmo 200), destellos (ritmo 150), runas (ritmo 30), tinta luminosa (ritmo 80), ojos en el aire, halo, anillos, columna y onda.

**172. Aetheron, Braquio del Éter** — 💰 6,9B $/s · *Brachiosaurus celestial (inventado)*
- **Altura:** 31,4 studs
- **Modelo:** braquiosaurio colosal hecho de nubes y luz, con alas de luz en los hombros, tres halos, armadura celestial y escaleras de luz que suben por su cuello.
- **Colores:** blanco y dorado; nubes blancas; luz en Neon dorado.
- **Partículas (20):** nubes (ritmo 150), rayos de sol, estrellas (ritmo 200), plumas de luz (ritmo 150), polvo dorado (ritmo 200), arcoíris, orbes (ritmo 60), notas celestiales (ritmo 10), halo triple, anillos, columna y onda.

**173. Mecha-Rex Omega** — 💰 7,5B $/s · *T-Rex robot supremo (inventado)*
- **Altura:** 31 studs
- **Modelo:** T-Rex robot colosal de guerra con cañones láser en los hombros, propulsores en la espalda, pecho abierto con un núcleo de energía, mandíbula hidráulica y blindaje en capas con luces.
- **Colores:** metal plateado y azul; núcleo en Neon azul; detalles en Neon rojo; fuego azul de los propulsores.
- **Partículas (22):** fuego de los propulsores (ritmo 250), chispas (ritmo 200), humo (ritmo 150), láseres (Beams que parpadean), vapor hidráulico (ritmo 100), destellos (ritmo 150), luces de alarma, casquillos (ritmo 20), rayos (ritmo 5), halo, anillos y columna.

**174. T-Rex Galáctico** — 💰 9B $/s · *Tyrannosaurus rex cósmico supremo (inventado) · el bicho más valioso del juego*
- **Altura:** 32 studs
- **Modelo:** el T-Rex definitivo y el más grande del juego (32 studs): cuerpo hecho de una GALAXIA en movimiento con nebulosas y estrellas dentro, armadura cósmica en varias capas con cristales de estrella, una corona de planetas que orbita su cabeza, anillos de Saturno alrededor del torso, una capa de estrellas que cae por la espalda, ojos como dos soles y una mano levantada sosteniendo un agujero negro. Pose de rugido triunfal.
- **Colores:** cuerpo con textura de galaxia (morado, azul, rosa y negro, con estrellas en Neon blanco); armadura dorada con cristales; corona y planetas de colores; ojos en Neon amarillo; dientes en Neon blanco.
- **Partículas (25):** estrellas sin parar (ritmo 300), nebulosas (ritmo 150), planetas en órbita, cometas (ritmo 10), polvo cósmico arcoíris (ritmo 300), agujero negro absorbiendo partículas (ritmo 200), supernovas pequeñas (ritmo 3), rayos de luz desde el cielo, destellos (ritmo 200), auroras, constelaciones que se dibujan, meteoritos (ritmo 10), halo galáctico, cuatro anillos de energía arcoíris, columna de luz, onda de choque y temblor. **Al aparecer:** explosión de estrellas, lluvia de cometas y onda de choque enorme.

## Brainrot — especial (6) · memes, crecen con su valor

> Estilo meme «brainrot italiano»: nombres en italiano inventado, mezclas absurdas y colores chillones. Salen de un huevo especial. Cuanto más valen, más grandes, más recargados y con más partículas.

**175. Raptorino Tralalerino** — 💰 100 $/s
- **Altura:** 5 studs
- **Modelo:** raptor normal (5 studs) con tres patas con zapatillas de deporte, bailando sobre una pata.
- **Colores:** azul celeste; zapatillas blancas con rayas rojas.
- **Partículas (1):** notas musicales (ritmo 4).

**176. Triceratopsina Pizzerina** — 💰 400 $/s
- **Altura:** 6 studs
- **Modelo:** triceratops (6 studs) con la gola convertida en una pizza entera con queso fundido goteando y gorro de chef.
- **Colores:** verde; pizza naranja, amarilla y roja; gorro blanco.
- **Partículas (2):** queso que gotea (ritmo 6) y vapor (ritmo 6).

**177. Pterodattilo Spaghettini** — 💰 40K $/s
- **Altura:** 8 studs
- **Modelo:** pterodáctilo grande (8 studs) con alas de espaguetis, albóndiga gigante en la cabeza y tenedor enorme; un plato de pasta flotando debajo.
- **Colores:** pasta amarilla; salsa roja; albóndiga marrón; tenedor plateado; plato blanco.
- **Partículas (4):** gotas de tomate (ritmo 20), parmesano que cae (ritmo 20), vapor (ritmo 15) y destellos (ritmo 10). Luz cálida.

**178. Stegoccino Cappuccino** — 💰 800K $/s
- **Altura:** 10 studs
- **Modelo:** estegosaurio grande (10 studs) con el cuerpo de taza gigante, placas de galleta, espuma con un corazón dibujado, cucharilla clavada y granos de café en órbita.
- **Colores:** taza blanca; café marrón; espuma crema; galletas doradas.
- **Partículas (6):** vapor de café (ritmo 40), granos en órbita (ritmo 15), corazones (ritmo 10), azúcar (ritmo 30), destellos (ritmo 20) y aroma en espiral (ritmo 20). Aura marrón.

**179. Bombardino Rexodilo** — 💰 20M $/s
- **Altura:** 12 studs
- **Modelo:** T-Rex cocodrilo enorme (12 studs) convertido en avión bombardero: alas con motores de hélice, tren de aterrizaje en las patas, cabina en la cabeza y estrellas pintadas.
- **Colores:** verde militar; alas grises con estrellas blancas; hélices negras; cabina transparente.
- **Partículas (7):** hélices girando, humo de los motores (ritmo 60), estelas (ritmo 40), chispas (ritmo 30), nubes (ritmo 20), destellos (ritmo 30) y casquillos que caen (ritmo 10). Highlight verde.

**180. Brachio Fragolini** — 💰 110M $/s
- **Altura:** 14 studs
- **Modelo:** braquiosaurio gigante (14 studs) con el cuerpo de fresa colosal llena de semillas, hojas como corona, nata montada en el lomo y fresas pequeñas en órbita.
- **Colores:** rojo fresa; semillas amarillas; hojas verde lima; nata blanca.
- **Partículas (8):** fresas pequeñas que caen (ritmo 30), corazones (ritmo 40), brillos rosa (ritmo 80), azúcar glas (ritmo 60), nata (ritmo 20), mariposas (ritmo 10), destellos (ritmo 40) y arcoíris pastel. Anillo de energía rosa.

## Mutante — especial (12) · orgánicos y Mecha, crecen con su valor

> Bichos de laboratorio. Los 6 primeros son **mutantes orgánicos** (carne, bultos, baba y burbujas tóxicas); los 6 últimos, su versión **Mecha** (robots de guerra con chispas, humo y luces). Tamaño y efectos crecen con su valor.

**181. Larva-saurio** — 💰 10K $/s
- **Altura:** 8 studs
- **Modelo:** gusano gordo y segmentado (8 studs) con cabeza de dinosaurio y bracitos, bultos y venas.
- **Colores:** verde pálido con manchas moradas; ojos negros.
- **Partículas (3):** babas (ritmo 20), burbujas (ritmo 20) y moscas (ritmo 5).

**182. Sapo-saurio** — 💰 50K $/s
- **Altura:** 9 studs
- **Modelo:** sapo enorme (9 studs) con cabeza de ceratopsio, verrugas y lengua larguísima.
- **Colores:** verde con verrugas naranjas; lengua rosa.
- **Partículas (3):** burbujas tóxicas (ritmo 30), gotas (ritmo 20) y vapor (ritmo 15).

**183. Reptador Mutante** — 💰 1,5M $/s
- **Altura:** 11 studs
- **Modelo:** criatura de seis patas (11 studs) con cuerpo de cocodrilo, cresta de huesos y venas brillantes.
- **Colores:** gris verdoso con venas en Neon verde.
- **Partículas (5):** baba (ritmo 40), vapor verde (ritmo 40), burbujas (ritmo 30), esporas (ritmo 20) y aura verde.

**184. Cocodonte** — 💰 30M $/s
- **Altura:** 14 studs
- **Modelo:** cocodrilo colosal (14 studs) con dientes sobresaliendo por todas partes, incluso del lomo, y bultos palpitantes.
- **Colores:** verde oscuro; dientes blancos; ojos amarillos; bultos rojizos.
- **Partículas (7):** baba (ritmo 60), burbujas (ritmo 50), vapor (ritmo 40), gotas (ritmo 40), moscas (ritmo 10), palpitaciones y aura verde. Highlight verde.

**185. Krakenoide** — 💰 500M $/s
- **Altura:** 18 studs
- **Modelo:** masa colosal de tentáculos (18 studs) con una cabeza de mosasaurio en el centro y ojos repartidos por los tentáculos.
- **Colores:** morado oscuro; ojos amarillos; ventosas rosas.
- **Partículas (10):** tinta (ritmo 80), baba (ritmo 80), burbujas (ritmo 80), ojos que parpadean, niebla (ritmo 60), gotas (ritmo 60), esporas (ritmo 40), relámpagos verdes (ritmo 3), anillos y pulsos.

**186. Escamaterror** — 💰 2B $/s
- **Altura:** 22 studs
- **Modelo:** dragón-dinosaurio colosal (22 studs) cubierto de escamas afiladas como cuchillos, cuatro ojos, boca partida en tres y alas de carne con pinchos.
- **Colores:** negro con bordes en Neon verde; ojos en Neon rojo; carne roja.
- **Partículas (13):** vapor tóxico (ritmo 150), chispas verdes (ritmo 100), baba (ritmo 100), burbujas (ritmo 80), temblor, rugido, esporas (ritmo 60), relámpagos verdes (ritmo 5), niebla (ritmo 80), gotas, anillos verdes, pulsos y columna verde.

**187. Mecha Larva-saurio** — 💰 45M $/s
- **Altura:** 12 studs
- **Modelo:** la Larva-saurio robot (12 studs): segmentos metálicos, orugas de tanque en lugar de patas, antena y mandíbula de pinza.
- **Colores:** plateado y verde; luces en Neon verde.
- **Partículas (7):** chispas (ritmo 60), humo de escape (ritmo 50), vapor (ritmo 30), luces parpadeantes, aceite (ritmo 10), destellos (ritmo 30) y polvo de las orugas (ritmo 30).

**188. Mecha Sapo-saurio** — 💰 155M $/s
- **Altura:** 14 studs
- **Modelo:** sapo-saurio robot (14 studs) con patas de resorte hidráulico, lengua mecánica extensible y cañón en el lomo.
- **Colores:** plateado y naranja; ojos en Neon azul.
- **Partículas (8):** chispas (ritmo 80), vapor de los resortes (ritmo 50), humo (ritmo 40), destellos (ritmo 40), rayos (ritmo 3), luces, polvo al saltar (ritmo 40) y ondas.

**189. Mecha Reptador** — 💰 320M $/s
- **Altura:** 16 studs
- **Modelo:** reptador robot (16 studs) con seis patas mecánicas de araña, cañón gatling en el lomo y blindaje.
- **Colores:** gris metal y negro; luces en Neon rojo.
- **Partículas (9):** chispas (ritmo 100), humo (ritmo 60), casquillos (ritmo 20), fogonazos del cañón (ritmo 5), vapor (ritmo 40), luces de alarma, destellos (ritmo 50), polvo (ritmo 40) y ondas.

**190. Mecha Cocodonte** — 💰 680M $/s
- **Altura:** 18 studs
- **Modelo:** cocodrilo robot colosal (18 studs) con mandíbulas de sierra, tanque de combustible en la espalda y blindaje con remaches.
- **Colores:** verde militar y plateado; dientes de sierra plateados; luces en Neon amarillo.
- **Partículas (10):** chispas de la sierra (ritmo 150), humo (ritmo 80), vapor (ritmo 60), aceite (ritmo 20), destellos (ritmo 60), luces, polvo (ritmo 60), virutas (ritmo 40), anillos y pulsos.

**191. Mecha Krakenoide** — 💰 1B $/s
- **Altura:** 20 studs
- **Modelo:** krakenoide robot colosal (20 studs) con tentáculos de cables, garras mecánicas y cabeza de mosasaurio de acero con antenas.
- **Colores:** plateado y morado; cables negros; ojos en Neon morado.
- **Partículas (12):** rayos entre tentáculos (Beams), chispas (ritmo 150), humo (ritmo 80), vapor (ritmo 60), destellos (ritmo 80), luces, aceite (ritmo 20), relámpagos (ritmo 5), burbujas (ritmo 60), anillos, pulsos y zumbido.

**192. Mecha Escamaterror** — 💰 4B $/s
- **Altura:** 24 studs
- **Modelo:** el Escamaterror como robot de guerra colosal (24 studs): escamas de acero, alas de reactor, láser en la boca, misiles en los hombros y núcleo de reactor en el pecho.
- **Colores:** negro y plateado; detalles en Neon verde; reactores con fuego azul.
- **Partículas (16):** fuego de los reactores (ritmo 250), chispas (ritmo 200), humo (ritmo 150), láser que se carga (Beam), misiles de humo (ritmo 5), vapor (ritmo 100), destellos (ritmo 150), relámpagos (ritmo 5), luces de alarma, temblor, anillos verdes, pulsos y columna de luz.

## Evento — especial (6) · dragosaurios, crecen con su valor

> Solo se consiguen en eventos especiales. Todos son **dragosaurios** (dragón + dinosaurio).

**193. Dragosaurio Aurora Bebé** — 💰 5M $/s · *(bebé)*
- **Altura:** 12 studs
- **Modelo:** chibi (es un bebé), pero de evento. Dragón-dinosaurio bebé (12 studs contando la aurora) con alas pequeñas y cola esponjosa, con una aurora boreal enorme ondulando detrás.
- **Colores:** blanco y azul hielo; aurora verde, rosa y morada en Neon semitransparente.
- **Partículas (7):** cortinas de aurora (ritmo 40), copos (ritmo 60), destellos (ritmo 50), estrellas (ritmo 40), vaho (ritmo 20), corazones (ritmo 10) y luz pulsante.

**194. Dragosaurio Sombra** — 💰 25M $/s
- **Altura:** 14 studs
- **Modelo:** dragón-raptor enorme (14 studs) hecho de sombra, con los bordes deshaciéndose en humo, ojos brillantes y alas de sombra.
- **Colores:** negro humo; ojos en Neon morado.
- **Partículas (8):** humo negro (ritmo 100), sombras (ritmo 60), destellos morados (ritmo 50), ojos en la niebla, niebla (ritmo 60), estrellas negras (ritmo 30), distorsión y Highlight morado.

**195. Dragosaurio Chamuscado** — 💰 35M $/s
- **Altura:** 15 studs
- **Modelo:** dragón-dinosaurio enorme (15 studs) con escamas quemadas, grietas de brasas, alas rotas y humeantes.
- **Colores:** negro y gris carbón; brasas en Neon naranja.
- **Partículas (9):** humo (ritmo 100), brasas (ritmo 80), ceniza (ritmo 80), chispas (ritmo 60), fuego pequeño (ritmo 40), calor, grietas brillantes, rocas (ritmo 10) y aura naranja.

**196. Dragosaurio Taladro** — 💰 100M $/s
- **Altura:** 17 studs
- **Modelo:** dragón-dinosaurio colosal (17 studs) con un taladro gigante en el hocico, garras de pico de minero, casco con linterna, blindaje de minero y saliendo de un agujero en el suelo con rocas alrededor.
- **Colores:** amarillo minero y negro; taladro plateado; casco con luz.
- **Partículas (10):** taladro girando con chispas (ritmo 150), rocas que saltan (ritmo 30), polvo (ritmo 100), gemas que salen (ritmo 10), humo (ritmo 50), destellos (ritmo 50), luz de la linterna, temblor, grietas y anillos.

**197. Dragosaurio del Vacío** — 💰 120M $/s
- **Altura:** 19 studs
- **Modelo:** dragón-dinosaurio colosal (19 studs) con agujeros en el cuerpo por los que se ve el espacio, alas de vacío y cuernos de cristal oscuro.
- **Colores:** negro espacial con estrellas; bordes en Neon morado.
- **Partículas (12):** estrellas (ritmo 150), portales pequeños (ritmo 20), destellos (ritmo 100), polvo cósmico (ritmo 100), nebulosa (ritmo 40), cometas (ritmo 5), distorsión, relámpagos morados (ritmo 3), absorción, anillos morados, pulsos y columna.

**198. Dragosaurio Ascua** — 💰 600M $/s
- **Altura:** 22 studs
- **Modelo:** dragón-dinosaurio colosal (22 studs) de fuego, con las alas abiertas por completo hechas de llamas, cola de lava, corona de llamas y armadura de roca fundida.
- **Colores:** rojo y naranja; fuego en Neon amarillo; lava naranja.
- **Partículas (14):** fuego enorme (ritmo 250), brasas (ritmo 200), explosiones (ritmo 5), humo (ritmo 120), ceniza (ritmo 100), lava (ritmo 80), chispas (ritmo 150), calor, rocas incandescentes (ritmo 10), relámpagos rojos (ritmo 3), anillos de fuego, pulsos, columna de fuego y temblor.

---

*Lista creada el 2026-10-18 a partir de los datos de «Roba un huevo» (rblxguide.com) y de información de dinosaurios reales (Safari Ltd, A-Z Animals y otras fuentes). Los bichos marcados como «inventado» no existieron de verdad.*

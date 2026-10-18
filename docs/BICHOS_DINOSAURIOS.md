# Bichos de La Caza del Diamante: los 198 dinosaurios

> Lista equivalente a la de «Roba un huevo» (ver [`REFERENCIA_ROBA_UN_HUEVO.md`](REFERENCIA_ROBA_UN_HUEVO.md)): **mismo número de bichos (198), mismas 13 rarezas y mismos ingresos por rareza**, pero todos de temática dinosaurio o animal prehistórico (algunos inventados). Va de un **Dodo Corriente** (1 $/s) a un **T-Rex Galáctico** (9.000 millones $/s).
>
> Cada bicho trae lo necesario para pedir su modelo 3D a Claude: tipo de animal, forma, colores y dónde van, partículas y efectos. **Antes de modelar cualquiera, aplica la guía de estilo común de abajo** y luego la ficha del bicho.

## Guía de estilo común (vale para TODOS)

**Estilo:** cartoon de Roblox / «Roba un huevo», exagerado y simpático. Se construye con piezas sencillas (bloques, cuñas, cilindros, esferas) unidas entre sí. Nada realista: formas redondeadas y gordotas.

- **Proporciones chibi:** cabeza grande (un 35-40 % de la altura), cuerpo rechoncho, patas cortas y gruesas, cola gorda que se afina. Los depredadores tienen bocaza con dientes blancos en bloquecitos; los herbívoros, cara redonda y amable.
- **Ojos:** grandes y expresivos. Esfera blanca, pupila negra grande y un puntito blanco de brillo. Los bichos malvados llevan ceño (una cuña encima del ojo); los monos, pestañas.
- **Textura:** todas las piezas de cuerpo en `SmoothPlastic` con la textura de studs `rbxassetid://6348166067` (2 studs por casilla) y el color de la pieza. Sin studs: ojos, dientes, garras pequeñas y piezas `Neon` que brillan.
- **Material Neon:** solo en lo que brilla (ojos mágicos, cristales, lava, runas, venas de energía).
- **Piezas:** de unas 15 (Común) a unas 80 (Divino). Todo el modelo anclado, con una pieza raíz invisible (`Root`) en la base para colocarlo en el pedestal.
- **Animación en reposo (para todos):** respira (escala 1 → 1,03 en bucle de 2 s), parpadea cada 3-5 s, balancea la cola. Cada ficha puede añadir algo propio.

**Tamaño en el pedestal (altura en studs) y efectos mínimos por rareza:**

| Rareza | Altura | Efectos base (además de los de la ficha) |
|---|---|---|
| Común | 3-4 | Ninguno |
| Poco común | 4 | Destello pequeño al aparecer |
| Raro | 5 | Unas pocas chispitas blancas lentas |
| Épico | 6 | 1 emisor de partículas del color del bicho y luz `PointLight` suave |
| Legendario | 7-8 | 2 emisores, luz y un brillo dorado en el suelo |
| Mítico | 9 | Aura de humo de color a ras de suelo y luz fuerte |
| Cósmico | 10 | Estrellitas que orbitan y destellos azul y morado |
| Secreto | 12 | Aura oscura, contorno `Highlight` negro y morado, susurro de humo negro |
| Eterno | 14 | Anillos de energía girando alrededor y polvo de luz que sube |
| Divino | 16 | Halo, rayos de luz verticales, partículas arcoíris y brillo enorme |
| Brainrot | 5-10 | Estilo meme: colores chillones y objetos absurdos encima |
| Mutante | 6-14 | Babas verdes, burbujas tóxicas; las versiones Mecha, chispas y humo |
| Evento | 8-12 | Efectos del evento (fuego, sombra, aurora…) |

**Nota sobre los ingresos:** son los mismos números que «Roba un huevo» (1 $/s … 9B $/s). Habrá que ajustarlos a la economía de nuestro juego. K = mil, M = millón, B = mil millones.

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

## Común (5)

**1. Dodo Corriente** — 💰 1 $/s · *ave prehistórica (Raphus cucullatus)*
- **Modelo:** bola de cuerpo gordísima con patitas naranjas cortas y un pico enorme y curvo, más grande que la cabeza. Alas diminutas pegadas a los lados y un penacho de 3 plumas en la cola. Cara de despistado: un ojo un poco más grande que el otro.
- **Colores:** cuerpo gris azulado; pico amarillo pálido con la punta ganchuda marrón; patas y pies naranjas; plumas de la cola blancas.
- **Efectos:** ninguno. En reposo, de vez en cuando mira a los lados torciendo la cabeza.

**2. Compi** — 💰 2 $/s · *Compsognathus (terópodo diminuto)*
- **Modelo:** dinosaurio bípedo pequeñito, como una lagartija de pie. Cuello largo y fino, cabeza triangular con 4 dientecitos, bracitos de 2 dedos y cola muy larga, casi el doble del cuerpo. Postura inclinada hacia delante, como a punto de echar a correr.
- **Colores:** verde lima por encima, barriga amarillo crema y rayas verde oscuro en lomo y cola.
- **Efectos:** ninguno. En reposo da saltitos nerviosos cada pocos segundos.

**3. Proto Bebé** — 💰 3 $/s · *Protoceratops cría*
- **Modelo:** cuadrúpedo pequeño y rechoncho, con una gola (escudo del cuello) corta y redondeada y un pico de loro. Sin cuernos: solo un bultito en la nariz. Patas gruesas como columnitas.
- **Colores:** cuerpo arena; gola marrón claro con 3 lunares marrón oscuro; pico gris.
- **Efectos:** ninguno. Lleva un trocito de cáscara de huevo blanca en la cabeza, como un gorrito.

**4. Loro-saurio** — 💰 4 $/s · *Psittacosaurus*
- **Modelo:** bípedo pequeño con cabeza cuadrada y pico de loro muy marcado, dos pómulos puntiagudos a los lados de la cara y un abanico de púas finas (como cerdas) en la parte de arriba de la cola.
- **Colores:** cuerpo verde oliva, pico naranja, pómulos amarillos y cerdas de la cola rojizas.
- **Efectos:** ninguno. En reposo mastica algo con el pico.

**5. Hipsi Velocín** — 💰 6 $/s · *Hypsilophodon*
- **Modelo:** bípedo pequeño y atlético, con piernas largas y finas para correr, cabeza pequeña con ojos enormes y cola rígida y recta hacia atrás. Lleva una cinta en la frente, como un corredor.
- **Colores:** verde hoja con manchas verde oscuro en el lomo, barriga blanca y cinta roja.
- **Efectos:** ninguno. En reposo hace estiramientos de corredor.

## Poco común (3)

**6. Micro Raptor** — 💰 8 $/s · *Microraptor (dromeosaurio con cuatro alas)*
- **Modelo:** raptor pequeño con plumas largas en los brazos **y también en las piernas** (cuatro alas). Cola larga terminada en un abanico de plumas. Postura como planeando, con las cuatro alas abiertas.
- **Colores:** negro con reflejos azul eléctrico (los bordes de las plumas en azul brillante), ojos amarillos.
- **Efectos:** destello pequeño al aparecer. En reposo bate las alas suavemente.

**7. Ovi Ladrón** — 💰 12 $/s · *Oviraptor*
- **Modelo:** bípedo con cresta alta y redondeada en la cabeza (como una media luna), pico sin dientes y brazos largos con plumas. Abraza un huevo moteado contra el pecho con cara de pillo.
- **Colores:** cuerpo naranja; cresta rojo intenso; plumas de los brazos amarillas con puntas negras; huevo blanco con motas azules.
- **Efectos:** destello pequeño al aparecer. En reposo mira a los lados escondiendo el huevo.

**8. Leaelly Polar** — 💰 18 $/s · *Leaellynasaura (dinosaurio polar)*
- **Modelo:** bípedo pequeño con ojos ENORMES (para ver en la noche polar) y una cola larguísima, tres veces su cuerpo, enrollada alrededor del cuerpo como una bufanda. Lleva unas orejeras.
- **Colores:** blanco nieve con rayas gris claro; cola con anillos blancos y azul hielo; orejeras rosa.
- **Efectos:** destello pequeño al aparecer y vaho blanco que sale de la boca cada pocos segundos.

## Raro (10)

**9. Dimorfo Bocazas** — 💰 35 $/s · *Dimorphodon (pterosaurio)*
- **Modelo:** pterosaurio pequeño con una cabeza desproporcionadamente grande, tipo frailecillo, y la bocaza llena de dientes de dos tamaños. Alas de membrana abiertas y cola larga terminada en un rombo.
- **Colores:** cabeza y pico a franjas naranja, amarillo y negro (como un frailecillo); cuerpo gris oscuro; membrana de las alas morado claro.
- **Efectos:** chispitas blancas lentas. Abre y cierra el pico como si gritara.

**10. Cabezón Pachy** — 💰 45 $/s · *Pachycephalosaurus*
- **Modelo:** bípedo con una cúpula ENORME y lisa en la cabeza, rodeada de pinchitos y bultos. Cuerpo robusto inclinado hacia delante, listo para embestir. Lleva un vendaje en la cúpula.
- **Colores:** cuerpo marrón verdoso; cúpula marrón claro con la parte de arriba crema; pinchitos gris; vendaje blanco con una cruz roja.
- **Efectos:** chispitas blancas lentas. Cada pocos segundos da un cabezazo al aire y salen 3 estrellitas amarillas.

**11. Galli Avestruz** — 💰 60 $/s · *Gallimimus*
- **Modelo:** dinosaurio-avestruz de patas muy largas, cuello largo y flexible, cabeza pequeña con pico sin dientes y ojos grandes. Postura de correr a toda velocidad, con una pata en el aire.
- **Colores:** cuerpo beige, lomo con rayas marrones, cuello y cabeza blancos, pico negro.
- **Efectos:** chispitas blancas y líneas de velocidad (partículas blancas alargadas) que salen hacia atrás.

**12. Archie** — 💰 75 $/s · *Archaeopteryx*
- **Modelo:** el primer pájaro: mitad dinosaurio, mitad ave. Alas con plumas y 3 garras en cada ala, hocico con dientes pequeños y cola larga de reptil con plumas a ambos lados.
- **Colores:** negro azabache con reflejos verde tornasol, plumas de la cola con puntas blancas y ojos dorados.
- **Efectos:** chispitas blancas y una pluma negra que cae lentamente de vez en cuando.

**13. Dilo Abanico** — 💰 90 $/s · *Dilophosaurus*
- **Modelo:** terópodo esbelto con dos crestas finas y paralelas en la cabeza, como dos medias lunas, y una gola de piel desplegada alrededor del cuello, como un paraguas abierto.
- **Colores:** cuerpo amarillo verdoso con manchas negras; crestas rojas con borde blanco; gola amarilla con lunares rojos y negros.
- **Efectos:** chispitas blancas. Cada pocos segundos abre la gola de golpe y escupe una bolita verde.

**14. Iguano Pulgar** — 💰 110 $/s · *Iguanodon*
- **Modelo:** herbívoro grande y fuerte, que puede ir a dos o cuatro patas, con hocico alargado de caballo y un PULGAR con un pincho gigante en cada mano, levantado como diciendo «¡bien!».
- **Colores:** verde musgo, barriga gris verdosa y pinchos del pulgar blanco hueso.
- **Efectos:** chispitas blancas y un destello blanco en el pincho del pulgar cada pocos segundos.

**15. Ictio Saltarín** — 💰 140 $/s · *Ichthyosaurus (reptil marino)*
- **Modelo:** reptil marino con forma de delfín: hocico largo y fino con dientes, ojos gigantes, aletas, aleta dorsal y cola de media luna. Pose de salto, sobre una pequeña ola.
- **Colores:** lomo azul marino, barriga blanca, ojos azul claro y ola azul turquesa semitransparente.
- **Efectos:** chispitas blancas y gotas de agua (partículas azul claro) que saltan.

**16. Celo Cazador** — 💰 180 $/s · *Coelophysis*
- **Modelo:** terópodo flaco y largo, de cuello en S, cabeza estrecha con muchos dientecitos y patas muy delgadas. Pose de acecho, agachado.
- **Colores:** naranja quemado con rayas de tigre marrón oscuro y barriga amarilla.
- **Efectos:** chispitas blancas. En reposo gira la cabeza a saltitos, como un pájaro.

**17. Kentro Pincho** — 💰 220 $/s · *Kentrosaurus*
- **Modelo:** pariente pequeño del estegosaurio: placas en el cuello y el lomo que se convierten en PINCHOS largos hacia la cola, y dos pinchos enormes en los hombros que apuntan hacia atrás.
- **Colores:** cuerpo amarillo arena con rayas marrón; placas naranja; pinchos color hueso con la punta roja.
- **Efectos:** chispitas blancas y un brillo rojo en las puntas de los pinchos.

**18. Troodon Listillo** — 💰 280 $/s · *Troodon (dinosaurio «listo»)*
- **Modelo:** raptor pequeño con un cerebro enorme (cabeza grande y abombada) y ojos gigantes mirando al frente. Lleva unas gafas redondas y sostiene un libro con una garra.
- **Colores:** plumas verde azulado, cara gris claro, gafas negras con cristales azul claro y libro rojo.
- **Efectos:** chispitas blancas y un signo de interrogación amarillo que aparece encima de su cabeza de vez en cuando.

## Épico (11)

**19. Velocirraptor** — 💰 180 $/s · *Velociraptor*
- **Modelo:** raptor de tamaño medio con plumas y la GARRA en hoz levantada de cada pie, muy exagerada. Hocico largo con sonrisa malvada llena de dientes y brazos con plumas. Pose de ataque.
- **Colores:** plumas marrón dorado con rayas negras, cara gris, garras negras y ojos amarillos.
- **Efectos:** partículas naranjas pequeñas y luz naranja suave. En reposo golpea el suelo con la garra (clic, clic).

**20. Paraso Trompeta** — 💰 240 $/s · *Parasaurolophus*
- **Modelo:** hadrosaurio de pico de pato con una cresta tubular larguísima que sale hacia atrás de la cabeza, como una trompeta. Cuerpo grande y cuatro patas, con las delanteras más cortas.
- **Colores:** cuerpo verde con rayas amarillas; cresta roja con la punta naranja; pico gris.
- **Efectos:** notas musicales (♪) de colores que salen de la cresta y luz amarilla suave.

**21. Estego Placas** — 💰 260 $/s · *Stegosaurus*
- **Modelo:** el clásico: cuatro patas, cabeza diminuta, dos filas de PLACAS gigantes en forma de cometa a lo largo del lomo y una cola con 4 pinchos (thagomizer).
- **Colores:** cuerpo verde oliva con barriga crema; placas naranja con el borde rojo; pinchos de la cola blancos.
- **Efectos:** partículas naranjas que suben de las placas y luz cálida.

**22. Anqui Tanque** — 💰 320 $/s · *Ankylosaurus*
- **Modelo:** tanque viviente: cuerpo ancho y bajo, cubierto de placas de armadura con pinchitos en los lados, cabeza triangular con cuernos cortos y la cola terminada en una MAZA de hueso enorme, redonda y doble.
- **Colores:** marrón tierra; placas de la armadura gris piedra; maza de la cola gris oscuro con bandas de hierro.
- **Efectos:** polvo marrón que salta cuando golpea el suelo con la maza (cada pocos segundos) y luz suave.

**23. Cori Casco** — 💰 325 $/s · *Corythosaurus*
- **Modelo:** hadrosaurio con una cresta redonda y alta como un casco corintio (media rueda encima de la cabeza) y pico de pato.
- **Colores:** cuerpo azul verdoso con rayas blancas; cresta morado brillante con borde amarillo; pico naranja.
- **Efectos:** partículas moradas y luz morada suave. Cada pocos segundos sale de la cresta un aro de sonido (anillo transparente que crece).

**24. Deino Terrible** — 💰 420 $/s · *Deinonychus*
- **Modelo:** raptor grande y musculoso, con garras de hoz enormes en los pies, plumas en brazos y cabeza y una cola rígida. Mirada de cazador.
- **Colores:** plumas gris pizarra con el pecho blanco; cresta de plumas rojas en la cabeza; garras negras.
- **Efectos:** partículas rojas pequeñas, luz roja tenue y dos líneas de «zarpazo» rojas que aparecen en el aire de vez en cuando.

**25. Estira Corona** — 💰 600 $/s · *Styracosaurus*
- **Modelo:** ceratopsio con un cuerno largo en la nariz y una gola rodeada de 6 PINCHOS larguísimos hacia atrás, como una corona de rayos.
- **Colores:** cuerpo verde bosque; gola amarilla con el centro rojo; pinchos y cuernos blanco hueso.
- **Efectos:** partículas amarillas en forma de rayo que salen de la corona y luz amarilla.

**26. Bario Pescador** — 💰 850 $/s · *Baryonyx*
- **Modelo:** terópodo de hocico largo de cocodrilo y una garra gigante en cada pulgar. Lleva un pez atravesado en la garra y gotea agua.
- **Colores:** cuerpo verde agua con rayas azul oscuro; barriga blanca; garras negras; pez plateado con aletas naranjas.
- **Efectos:** gotas de agua azules que caen de la garra y luz azul.

**27. Ptera Cresta** — 💰 1,1K $/s · *Pteranodon*
- **Modelo:** pterosaurio grande con las alas abiertas de par en par, pico largo y puntiagudo sin dientes y una cresta larga hacia atrás que equilibra el pico.
- **Colores:** cuerpo blanco; membrana de las alas azul celeste con degradado a azul marino en los bordes; cresta roja; pico amarillo.
- **Efectos:** ráfagas de viento (partículas blancas en espiral) y luz azul. Las alas suben y bajan suavemente.

**28. Plesio Cuellilargo** — 💰 1,5K $/s · *Plesiosaurus*
- **Modelo:** reptil marino de cuerpo ancho, cuatro aletas grandes, cuello LARGUÍSIMO y curvado como una S y cabeza pequeña sonriente. Asoma sobre un charquito de agua.
- **Colores:** verde azulado con lunares turquesa, barriga crema y charco azul transparente.
- **Efectos:** burbujas que suben y luz turquesa. El cuello se balancea lentamente.

**29. Carno Toro** — 💰 4K $/s · *Carnotaurus*
- **Modelo:** terópodo con dos CUERNOS de toro encima de los ojos, cara corta y chata, bracitos ridículamente diminutos y piel con escamas en bultos. Pose de embestida.
- **Colores:** rojo intenso, barriga naranja, cuernos negros y bultos de las escamas rojo oscuro.
- **Efectos:** vapor que sale por la nariz (resoplido), partículas rojas y luz roja. Rasca el suelo con la pata como un toro.

## Legendario (21)

**30. Ptero Chispa** — 💰 225 $/s · *pterosaurio bebé de fuego (inventado)*
- **Modelo:** pterosaurio bebé redondito, con alitas cortas y una llamita encima de la cabeza en lugar de cresta. Ojos grandes y traviesos.
- **Colores:** cuerpo naranja; alas rojo con borde amarillo; llama de la cabeza en Neon amarillo y naranja.
- **Efectos:** chispas de fuego que saltan de la cabeza, 2 emisores (chispas y humo gris claro), luz naranja y brillo dorado en el suelo.

**31. Archie de Luz** — 💰 225 $/s · *Archaeopteryx angelical (inventado)*
- **Modelo:** como el Archaeopteryx pero blanco y puro, con las alas abiertas hacia arriba como una paloma y una aureolita pequeña sobre la cabeza.
- **Colores:** plumas blanco perla con puntas doradas; aureola en Neon dorado; ojos azul cielo.
- **Efectos:** plumas blancas que caen despacio, destellos dorados, luz blanca cálida y brillo dorado en el suelo.

**32. Tricera Jefe** — 💰 1,8K $/s · *Triceratops*
- **Modelo:** el rey de los cuernos: cuerpo enorme de cuatro patas, 3 cuernos (dos largos sobre los ojos y uno corto en la nariz), gola gigante y lisa con el borde ondulado y pico de loro.
- **Colores:** cuerpo gris azulado; gola azul real con un dibujo de rombos amarillos; cuernos blanco marfil; pico negro.
- **Efectos:** destellos azules en la gola, polvo cuando pisa, luz azul y brillo dorado en el suelo.

**33. Alo Feroz** — 💰 2,8K $/s · *Allosaurus*
- **Modelo:** gran terópodo con dos cuernecitos rojos delante de los ojos, cráneo largo con mandíbula enorme, brazos fuertes de 3 garras y musculatura exagerada.
- **Colores:** marrón rojizo con rayas negras en el lomo; cuernecitos rojos; barriga beige.
- **Efectos:** aliento caliente (vapor naranja), chispas rojas, luz roja y brillo dorado. Ruge cada pocos segundos (abre mucho la boca).

**34. Dimetro Vela** — 💰 3,6K $/s · *Dimetrodon (sinápsido)*
- **Modelo:** reptil de cuatro patas con las piernas abiertas a los lados y una VELA enorme en el lomo, en forma de abanico con varillas. Cabeza grande con dientes de dos tamaños.
- **Colores:** cuerpo gris verdoso; vela naranja y roja con varillas blancas (atardecer); vientre amarillo.
- **Efectos:** la vela brilla con un degradado de atardecer en Neon suave; partículas de calor que suben de la vela, luz naranja y brillo dorado.

**35. Braquio Cuellito** — 💰 4,8K $/s · *Brachiosaurus*
- **Modelo:** saurópodo con las patas delanteras más largas que las traseras, cuello altísimo casi vertical y una cabecita con una joroba en la nariz. Masticando una rama con hojas.
- **Colores:** verde agua con manchas verde oscuro; barriga gris; rama marrón con hojas verde lima.
- **Efectos:** hojas que caen girando, destellos verdes, luz verde y brillo dorado.

**36. Terizino Tijeras** — 💰 5,5K $/s · *Therizinosaurus*
- **Modelo:** dinosaurio rarísimo: cuerpo de pavo gigante, barriga grande, cuello largo, cabeza pequeña con pico y unos brazos larguísimos terminados en 3 GARRAS como cuchillas (más largas que su cabeza).
- **Colores:** plumas blanco y negro como una urraca; garras negras con el filo plateado; pico amarillo.
- **Efectos:** destellos plateados en las garras, plumas que caen, luz blanca y brillo dorado.

**37. Elvisaurio** — 💰 7K $/s · *Cryolophosaurus*
- **Modelo:** terópodo con una cresta ondulada que va de oreja a oreja, igual que el tupé de Elvis. Pose de rockero, con una pata adelantada.
- **Colores:** cuerpo blanco hielo con rayas azul claro; cresta amarilla brillante tipo tupé; gafas de sol negras.
- **Efectos:** notas musicales y estrellitas brillantes, copos de nieve, luz blanca y brillo dorado.

**38. Sauro Pinchos** — 💰 9,5K $/s · *Sauropelta (anquilosaurio)*
- **Modelo:** anquilosaurio sin maza, pero con PINCHOS enormes en el cuello y los hombros que apuntan hacia fuera y hacia arriba, y una cola larga y gorda. Armadura de bultos.
- **Colores:** marrón oscuro; armadura de bultos marrón claro; pinchos gris con las puntas doradas.
- **Efectos:** destellos dorados en las puntas, luz dorada y brillo dorado en el suelo.

**39. Pachirino** — 💰 11K $/s · *Pachyrhinosaurus*
- **Modelo:** ceratopsio con un gran bulto plano y rugoso sobre la nariz en vez de cuerno y una gola corta con dos cuernos curvos hacia arriba, como los de un ciervo.
- **Colores:** cuerpo gris pardo; bulto de la nariz marrón oscuro; gola naranja con el borde negro; cuernos blanco hueso.
- **Efectos:** vaho frío por la nariz, nieve que cae, luz blanca y brillo dorado.

**40. Quetzal Gigante** — 💰 11K $/s · *Quetzalcoatlus (pterosaurio gigante)*
- **Modelo:** pterosaurio GIGANTESCO, apoyado en el suelo sobre sus cuatro extremidades (alas plegadas), con cuello largo como una jirafa y pico larguísimo y puntiagudo.
- **Colores:** cuerpo blanco; cabeza y pico amarillo y rojo (degradado); membrana de las alas plegadas naranja; ojos verdes.
- **Efectos:** ráfagas de viento, plumitas de colores, luz cálida y brillo dorado.

**41. Lio Pleuro** — 💰 15K $/s · *Liopleurodon (pliosaurio)*
- **Modelo:** reptil marino musculoso con una cabeza ENORME tipo cocodrilo, 4 aletas potentes y cuello corto. Saliendo de un remolino de agua con la boca abierta.
- **Colores:** azul oscuro por encima y gris claro por debajo; dientes blancos; remolino turquesa.
- **Efectos:** remolino de agua en espiral (partículas azules), burbujas, luz azul y brillo dorado.

**42. Uta Raptor** — 💰 15K $/s · *Utahraptor*
- **Modelo:** el raptor más grande: musculoso, con plumas, garras de hoz ENORMES en los pies, brazos con plumas largas y una cresta de plumas en la cabeza.
- **Colores:** plumas verde oscuro con las puntas naranjas; cara gris; garras negras con el filo rojo.
- **Efectos:** zarpazos rojos en el aire, plumas que caen, luz verde y brillo dorado.

**43. Megalo Abuelo** — 💰 22K $/s · *Megalosaurus (el primer dinosaurio descubierto)*
- **Modelo:** terópodo grande y clásico, con un monóculo en el ojo y un sombrero de copa: es «el abuelo» de todos los dinosaurios. Postura erguida y elegante.
- **Colores:** marrón verdoso con rayas oscuras; sombrero negro con cinta roja; monóculo dorado.
- **Efectos:** destellos dorados en el monóculo, polvo de libro antiguo (partículas beige), luz cálida y brillo dorado.

**44. Guanlong Cresta** — 💰 22,5K $/s · *Guanlong (tiranosaurio primitivo)*
- **Modelo:** tiranosaurio pequeño y esbelto con una cresta fina y alta que recorre todo el hocico, como la de un casco, y plumas en el cuello.
- **Colores:** plumas naranja y blanco; cresta en degradado rojo, naranja y amarillo (como fuego); cuerpo naranja.
- **Efectos:** la cresta brilla en Neon suave, chispas naranjas, luz naranja y brillo dorado.

**45. Diplo Látigo** — 💰 30K $/s · *Diplodocus*
- **Modelo:** saurópodo larguísimo: cuello largo en horizontal y una cola todavía más larga terminada en látigo fino. Cabeza pequeña con dientes como lápices. Pose con la cola haciendo un latigazo.
- **Colores:** gris verdoso con rayas blancas en el cuello y la cola; barriga crema.
- **Efectos:** onda de choque (anillo blanco) en la punta de la cola cada pocos segundos, polvo, luz blanca y brillo dorado.

**46. Majunga Calvo** — 💰 30K $/s · *Majungasaurus*
- **Modelo:** terópodo de cara corta y gorda, con UN cuernecito redondo en la frente, brazos diminutos y patas robustas. Cara de mal humor.
- **Colores:** rojo ladrillo con manchas negras; cuerno amarillo; barriga gris.
- **Efectos:** humo de enfado sobre la cabeza (nubecita negra), chispas rojas, luz roja y brillo dorado.

**47. Krono Mandíbula** — 💰 74K $/s · *Kronosaurus (pliosaurio gigante)*
- **Modelo:** reptil marino colosal, con una cabeza que ocupa un tercio del cuerpo, mandíbula llena de dientes cónicos y 4 aletas enormes. Saltando en vertical sobre una ola.
- **Colores:** azul petróleo; manchas blancas en la barriga; dientes blancos; ola azul transparente con espuma blanca.
- **Efectos:** espuma y salpicaduras, burbujas, luz azul y brillo dorado.

**48. Argentino Titán** — 💰 95K $/s · *Argentinosaurus (uno de los animales más grandes de la historia)*
- **Modelo:** saurópodo ENORME y gordo, con cuello largo, patas como columnas y una bandera de Argentina pequeñita clavada en el lomo. Es el más grande del pedestal: ocupa todo el espacio.
- **Colores:** marrón grisáceo con rayas celeste y blanco en el lomo; bandera celeste, blanca y celeste con el sol amarillo.
- **Efectos:** temblor (ondas de polvo) al pisar, destellos celestes, luz blanca y brillo dorado.

**49. Tarbo Mongol** — 💰 115K $/s · *Tarbosaurus*
- **Modelo:** primo asiático del T-Rex, algo más estilizado, con un casco de guerrero mongol con pelo en la punta y brazos diminutos.
- **Colores:** marrón arena con rayas marrón oscuro; casco dorado con pelo rojo; barriga beige.
- **Efectos:** arena que vuela, destellos dorados del casco, luz cálida y brillo dorado.

**50. Giganoto Rey** — 💰 130K $/s · *Giganotosaurus*
- **Modelo:** terópodo GIGANTE, más largo que un T-Rex, con cráneo estrecho y largo, dientes de sierra, brazos de 3 dedos y una cresta baja de bultos sobre los ojos. Pose de rugido con la cabeza alzada.
- **Colores:** gris oscuro con rayas rojas en el lomo; barriga gris claro; ojos naranja brillante.
- **Efectos:** rugido (anillo de sonido que crece), polvo y piedras pequeñas que saltan, luz roja y brillo dorado.

## Mítico (23)

**51. Raptor Duna** — 💰 16K $/s · *Velociraptor del desierto (inventado)*
- **Modelo:** raptor con plumas cortas, un pañuelo de beduino en la cabeza y gafas de sol para la arena.
- **Colores:** plumas color arena dorada con rayas marrón; pañuelo blanco y azul; gafas negras.
- **Efectos:** aura de arena a ras de suelo (remolino de partículas beige) y luz amarilla fuerte.

**52. Escorpi Raptor** — 💰 18,5K $/s · *raptor con cola de escorpión (inventado)*
- **Modelo:** raptor con pinzas de escorpión en lugar de manos y la cola curvada sobre la espalda con un AGUIJÓN venenoso brillante en la punta.
- **Colores:** negro brillante con franjas rojas; pinzas rojas; aguijón en Neon verde veneno.
- **Efectos:** gotas verdes que caen del aguijón, aura de humo verde a ras de suelo y luz verde.

**53. Dilo Venenoso** — 💰 22K $/s · *Dilophosaurus tóxico (inventado)*
- **Modelo:** dilofosaurio con la gola desplegada al máximo y escupiendo una bola de veneno brillante.
- **Colores:** verde selva; gola en Neon morado con lunares amarillos; crestas rojas; bola de veneno en Neon verde.
- **Efectos:** burbujas tóxicas verdes, aura morada a ras de suelo y luz verde.

**54. Raptigre** — 💰 28K $/s · *raptor tigre (inventado)*
- **Modelo:** raptor musculoso con rayas de tigre, cara gatuna con bigotes y colmillos de sable que asoman por fuera de la boca.
- **Colores:** naranja con rayas negras, barriga y bigotes blancos, ojos verde esmeralda.
- **Efectos:** zarpazos naranjas, aura naranja a ras de suelo y luz naranja.

**55. Estego Cristal** — 💰 35K $/s · *Stegosaurus de cristal (inventado)*
- **Modelo:** estegosaurio cuyas placas son CRISTALES gigantes facetados que sobresalen del lomo, y con la cola de pinchos de cuarzo.
- **Colores:** cuerpo morado oscuro; placas y pinchos en Neon rosa y lila semitransparente (Transparency 0,3).
- **Efectos:** brillos y destellos tipo diamante, aura rosa a ras de suelo y luz rosa.

**56. Tricera Lanudo** — 💰 42K $/s · *Triceratops de la edad de hielo (inventado)*
- **Modelo:** triceratops cubierto de PELO largo como un mamut, con cuernos curvados como colmillos de mamut y la gola con escarcha.
- **Colores:** pelo marrón rojizo; cuernos marfil; gola azul hielo con carámbanos blancos.
- **Efectos:** nieve que cae, vaho, aura azul helada a ras de suelo y luz blanca azulada.

**57. Ptero del Vacío** — 💰 50K $/s · *pterosaurio de una grieta dimensional (inventado)*
- **Modelo:** pterodáctilo con las alas rotas en fragmentos flotantes, como trozos de cristal negro separados del cuerpo, y un ojo único en la frente.
- **Colores:** cuerpo negro; bordes de los fragmentos en Neon morado; ojo en Neon magenta.
- **Efectos:** fragmentos que flotan y giran, aura de humo morado y luz morada.

**58. Anqui Guindilla** — 💰 55K $/s · *Ankylosaurus picante (inventado)*
- **Modelo:** anquilosaurio con la maza de la cola en forma de guindilla gigante y la armadura de pinchos como semillas.
- **Colores:** cuerpo rojo picante; maza de guindilla roja con rabito verde; pinchos amarillos.
- **Efectos:** fuego que sale de la boca cada pocos segundos, aura naranja y luz roja.

**59. Plesio Fantasma** — 💰 75K $/s · *Plesiosaurus espectral (inventado)*
- **Modelo:** plesiosaurio semitransparente (Transparency 0,4) que flota en el aire en vez de nadar, con la cola deshaciéndose en humo.
- **Colores:** azul fantasma pálido en Neon suave; ojos blancos brillantes.
- **Efectos:** humo azul que sale de la cola, aura azul pálido y luz azul fría. Flota subiendo y bajando.

**60. Mosa Orca** — 💰 80K $/s · *Mosasaurus orca (inventado)*
- **Modelo:** mosasaurio con el dibujo de una orca, una aleta dorsal alta de orca y la boca llena de dientes. Saltando sobre una ola.
- **Colores:** negro y blanco como una orca; ola azul con espuma.
- **Efectos:** salpicaduras, aura de agua azul y luz azul.

**61. Terrorave** — 💰 110K $/s · *Phorusrhacos (ave del terror)*
- **Modelo:** ave gigante que no vuela, con patas larguísimas, alas diminutas y un pico ENORME y ganchudo como un hacha. Cara de mala.
- **Colores:** plumas gris oscuro; pico amarillo con la punta negra; ojos rojos; patas naranja.
- **Efectos:** plumas negras que caen, aura gris oscuro y luz roja.

**62. Anqui Dorado** — 💰 120K $/s · *Ankylosaurus de oro (inventado)*
- **Modelo:** anquilosaurio entero de ORO, con la armadura llena de gemas incrustadas y una maza de la cola en forma de lingote.
- **Colores:** dorado brillante (material SmoothPlastic dorado + Reflectance 0,2); gemas rojas, azules y verdes.
- **Efectos:** monedas doradas que saltan, destellos, aura dorada y luz dorada.

**63. Rata Raptor Tóxica** — 💰 180K $/s · *raptor-rata mutante (inventado)*
- **Modelo:** raptor flacucho con orejas de rata, cola pelada de rata y dientes de roedor, y un barril tóxico pequeño en la espalda.
- **Colores:** gris verdoso con manchas verde neón; barril amarillo con el símbolo de radiactividad negro.
- **Efectos:** burbujas verdes, aura de humo tóxico verde y luz verde.

**64. Gorilasaurio Cósmico** — 💰 180K $/s · *gorila-dinosaurio del espacio (inventado)*
- **Modelo:** dinosaurio que anda sobre los nudillos como un gorila, con brazos enormes, una cresta de huesos y un casco de astronauta en la cabeza.
- **Colores:** morado oscuro con constelaciones (puntos blancos) en el cuerpo; casco transparente con borde plateado.
- **Efectos:** estrellas que salen del cuerpo, aura morada y luz azul.

**65. Ptero Grieta** — 💰 220K $/s · *pterosaurio dimensional (inventado)*
- **Modelo:** pterosaurio con una grieta brillante que le parte el cuerpo en dos y por la que se ve el espacio; alas con agujeros por los que sale luz.
- **Colores:** cuerpo gris piedra; grieta y agujeros en Neon cian; ojos cian.
- **Efectos:** chispas cian que salen de la grieta, aura cian y luz cian.

**66. Hámster-saurio** — 💰 450K $/s · *experimento de laboratorio (inventado)*
- **Modelo:** dinosaurio pequeño y gordito, como un hámster, corriendo dentro de una rueda de hámster gigante. Mejillas hinchadas.
- **Colores:** naranja y blanco; rueda plateada metálica con luces verdes.
- **Efectos:** la rueda gira sin parar, chispas eléctricas, aura verde y luz verde.

**67. Panda-saurio Sakura** — 💰 450K $/s · *dinosaurio panda rojo (inventado)*
- **Modelo:** pequeño ornitópodo con la cara y la cola de panda rojo (antifaz y anillos en la cola), sentado comiendo una rama de cerezo en flor.
- **Colores:** pelo rojo anaranjado; antifaz y orejas blancas; rama marrón con flores rosa.
- **Efectos:** pétalos de cerezo rosa que caen, aura rosa y luz rosa.

**68. Cristalito** — 💰 450K $/s · *dinosaurio de cristal (inventado)*
- **Modelo:** dinosaurio pequeño y regordete hecho entero de CRISTALES, con pinchos de cristal saliendo de todo el cuerpo.
- **Colores:** cristal azul hielo y blanco en Neon semitransparente.
- **Efectos:** destellos tipo diamante, fragmentos de cristal que flotan, aura azul y luz blanca.

**69. Filo Cuchilla** — 💰 750K $/s · *anquilosaurio de cuchillas (inventado)*
- **Modelo:** anquilosaurio cuyas placas son CUCHILLAS metálicas afiladas y cuya cola acaba en una sierra circular.
- **Colores:** cuerpo gris acero; cuchillas plateadas con el filo blanco brillante; ojos rojos.
- **Efectos:** chispas metálicas cuando gira la sierra, aura gris y luz blanca.

**70. Toroceratops Infernal** — 💰 1,25M $/s · *ceratopsio demoníaco (inventado)*
- **Modelo:** ceratopsio con cuernos de toro curvados hacia arriba, un aro en la nariz y pezuñas en llamas.
- **Colores:** rojo oscuro con grietas de lava en Neon naranja; cuernos negros; aro dorado.
- **Efectos:** llamas en las pezuñas, humo negro que sale por la nariz, aura roja y luz naranja.

**71. Cordero-saurio Alado** — 💰 1,25M $/s · *dinosaurio angelical (inventado)*
- **Modelo:** pequeño saurópodo cubierto de lana como un cordero, con dos alas de ángel grandes en la espalda y una aureola.
- **Colores:** lana blanca esponjosa; cara rosa claro; alas blancas con puntas doradas; aureola en Neon dorado.
- **Efectos:** plumas blancas, destellos dorados, aura blanca y luz dorada.

**72. Meganeura Gigante** — 💰 1,25M $/s · *Meganeura (libélula prehistórica gigante)*
- **Modelo:** libélula ENORME con cuatro alas transparentes muy largas, ojos compuestos gigantes y cuerpo largo y segmentado.
- **Colores:** cuerpo verde metálico tornasolado; alas transparentes con nervios negros y reflejos arcoíris; ojos azul brillante.
- **Efectos:** las alas vibran muy rápido, polvo brillante, aura verde y luz verde azulada.

**73. Amonites Ciudadela #007** — 💰 12,5M $/s · *amonites gigante con un castillo encima (inventado, de evento)*
- **Modelo:** amonites (caracol prehistórico con concha en espiral) ENORME, con una ciudadela medieval construida encima de la concha: torres, murallas y banderitas.
- **Colores:** concha en espiral con franjas crema y marrón; tentáculos naranjas; castillo gris piedra con tejados azules; banderas rojas.
- **Efectos:** ventanas iluminadas en Neon amarillo, humo de chimeneas, aura dorada y luz cálida. Un número «#007» flotante encima.

## Cósmico (28)

**74. Mordisquitos #013** — 💰 185K $/s · *T-Rex bebé de laboratorio (inventado)*
- **Modelo:** T-Rex bebé con un pañal, un collar con una plaquita «#013» y una cabeza enorme para su cuerpo. Mordisquea un hueso.
- **Colores:** verde menta; pañal blanco; collar rojo; plaquita dorada; hueso blanco.
- **Efectos:** estrellitas que orbitan, destellos azul y morado, burbujas de baba.

**75. Elasmo Leviatán** — 💰 220K $/s · *Elasmosaurus (plesiosaurio de cuello larguísimo)*
- **Modelo:** plesiosaurio con un cuello DESCOMUNAL (más largo que todo su cuerpo) enrollado en espiral hacia el cielo, y la cabeza arriba del todo mirando las estrellas.
- **Colores:** azul profundo con lunares de estrellas blancas; barriga lila; aletas con el borde turquesa en Neon.
- **Efectos:** estrellas que suben por el cuello en espiral, aura de agua y destellos azul y morado.

**76. Esfinge-saurio Real** — 💰 280K $/s · *ceratopsio faraón (inventado)*
- **Modelo:** protoceratops tumbado en la pose de la Esfinge de Egipto, con un tocado de faraón (nemes) a rayas y un collar egipcio en el cuello.
- **Colores:** cuerpo arena dorada; tocado a rayas azul lapislázuli y oro; collar dorado con gemas rojas.
- **Efectos:** arena dorada que flota, jeroglíficos brillantes que orbitan y destellos.

**77. Paraceratherium Rey** — 💰 400K $/s · *Paraceratherium (el mamífero terrestre más grande)*
- **Modelo:** rinoceronte sin cuerno GIGANTE, alto como una jirafa, con cuello largo, labio colgante y una corona en la cabeza.
- **Colores:** gris piedra con rayas lila cósmicas; corona dorada con gemas azules.
- **Efectos:** estrellitas, polvo cósmico y destellos.

**78. Ventisaurio** — 💰 585K $/s · *dinosaurio del viento (inventado)*
- **Modelo:** ornitópodo ligero con orejas como aletas y el cuerpo envuelto en remolinos de viento. Flota a pocos centímetros del suelo.
- **Colores:** blanco y azul cielo; remolinos en Neon blanco semitransparente.
- **Efectos:** tornado pequeño de partículas blancas alrededor y hojas girando.

**79. Glipto Rodante** — 💰 625K $/s · *Glyptodon (armadillo gigante)*
- **Modelo:** armadillo gigante con un caparazón en cúpula hecho de placas hexagonales y la cola acabada en maza de pinchos. Medio enrollado como una bola.
- **Colores:** caparazón marrón con hexágonos de borde dorado; cara gris; maza de la cola negra.
- **Efectos:** rueda sobre sí mismo cada pocos segundos dejando polvo de estrellas.

**80. Megalodón Bebé** — 💰 700K $/s · *Otodus megalodon cría*
- **Modelo:** tiburón prehistórico bebé pero con la boca ENORME y llena de dientes triangulares, nadando en el aire sobre una burbuja de agua.
- **Colores:** gris azulado por encima, blanco por debajo; dientes blancos; burbuja azul transparente.
- **Efectos:** burbujas, estrellitas y destellos azules.

**81. Basilosaurio** — 💰 850K $/s · *Basilosaurus (ballena prehistórica serpentina)*
- **Modelo:** ballena larguísima con forma de serpiente marina, cabeza con dientes y aletas pequeñitas, haciendo ondas en el aire.
- **Colores:** azul pizarra con la barriga blanca y rayas cian en Neon a lo largo del cuerpo.
- **Efectos:** chorro de agua de su espiráculo cada pocos segundos, estrellas y destellos.

**82. Tricera Cósmico** — 💰 1,2M $/s · *Triceratops espacial (inventado)*
- **Modelo:** triceratops cuya gola es un PORTAL al espacio: dentro se ven estrellas y una galaxia en espiral. Cuernos de cristal.
- **Colores:** cuerpo azul noche; gola con una textura de galaxia (morado, rosa y azul); cuernos en Neon cian.
- **Efectos:** estrellas que salen de la gola, polvo cósmico y destellos azul y morado.

**83. Bronto Nebuloso** — 💰 1,5M $/s · *Brontosaurus de nebulosa (inventado)*
- **Modelo:** brontosaurio con el cuerpo semitransparente lleno de nebulosas de colores y planetas pequeñitos flotando dentro.
- **Colores:** degradado de morado, rosa y azul (Transparency 0,2); planetas de colores dentro.
- **Efectos:** nubes de nebulosa, estrellas que orbitan y destellos.

**84. Saturnosaurio** — 💰 2,2M $/s · *dinosaurio con anillos de Saturno (inventado)*
- **Modelo:** saurópodo regordete con un ANILLO de Saturno girando alrededor de la barriga, como un flotador, y la cabeza redonda como un planeta.
- **Colores:** cuerpo amarillo y naranja a franjas (como Saturno); anillo beige y marrón semitransparente.
- **Efectos:** el anillo gira despacio, asteroides pequeños que orbitan y destellos.

**85. Mapache-saurio Radiactivo** — 💰 2,2M $/s · *raptor mapache mutante (inventado)*
- **Modelo:** raptor con antifaz y cola anillada de mapache, rebuscando en un cubo de basura tóxica que brilla.
- **Colores:** gris con antifaz negro; cola a anillos gris y negro; cubo verde; basura en Neon verde.
- **Efectos:** burbujas y vapor verde radiactivo, estrellas verdes y destellos.

**86. Garra del Terror** — 💰 2,2M $/s · *Therizinosaurus oscuro (inventado)*
- **Modelo:** therizinosaurio con plumas negras erizadas y garras larguísimas que brillan, en pose amenazante con los brazos abiertos.
- **Colores:** plumas negras con puntas moradas; garras en Neon morado.
- **Efectos:** estelas moradas al mover las garras, sombras y destellos.

**87. Helicoprion Sierra** — 💰 2,5M $/s · *Helicoprion (tiburón con espiral de dientes)*
- **Modelo:** tiburón prehistórico con una ESPIRAL de dientes en la mandíbula inferior, como una sierra circular que gira.
- **Colores:** gris azulado; espiral de dientes blanco con el filo en Neon cian.
- **Efectos:** la espiral gira sin parar, chispas, burbujas y estrellas.

**88. Megaterio** — 💰 4M $/s · *Megatherium (perezoso gigante)*
- **Modelo:** perezoso gigante de pie sobre las patas traseras, con garras enormes, abrazado a un tronco y con cara de sueño.
- **Colores:** pelo marrón claro; cara crema; garras negras; tronco marrón con hojas verdes.
- **Efectos:** «Zzz» flotando, hojas y estrellitas.

**89. Yuty Nevado** — 💰 7,5M $/s · *Yutyrannus (tiranosaurio con plumas)*
- **Modelo:** tiranosaurio grande cubierto de plumas largas y esponjosas, como un abrigo de piel, con una cresta en el hocico.
- **Colores:** plumas blanco nieve con puntas azul hielo; cresta en Neon azul claro; ojos dorados.
- **Efectos:** ventisca de copos, estrellas heladas y destellos azules.

**90. Pachy Fracturado** — 💰 8M $/s · *Pachycephalosaurus de cristal roto (inventado)*
- **Modelo:** paquicefalosaurio con la cúpula de la cabeza hecha de cristal ROTO, con grietas brillantes y fragmentos flotando alrededor.
- **Colores:** cuerpo gris carbón; cúpula de cristal morado con grietas en Neon rosa.
- **Efectos:** fragmentos que orbitan la cabeza, chispas rosas y destellos.

**91. Manta Ptero Titán** — 💰 11M $/s · *pterosaurio-manta (inventado)*
- **Modelo:** pterosaurio con las alas anchas y planas de una mantarraya gigante y una cola larga y fina. Planea en el aire.
- **Colores:** negro por arriba con dibujos de circuitos en Neon azul; blanco por debajo.
- **Efectos:** estela de luz azul, estrellas y destellos.

**92. Ptero Koi** — 💰 12M $/s · *pterosaurio pez koi (inventado)*
- **Modelo:** pterosaurio con escamas y bigotes de pez koi, aletas por alas y una cola de velo larga y ondulante.
- **Colores:** blanco con manchas naranja y negras de koi; aletas semitransparentes.
- **Efectos:** pétalos de cerezo, burbujas y destellos dorados.

**93. Archelon Apilado** — 💰 12M $/s · *Archelon (tortuga marina gigante) ×3 (inventado)*
- **Modelo:** tres tortugas marinas prehistóricas apiladas una encima de otra, de la más grande abajo a la más pequeña arriba, con cara de concentradas manteniendo el equilibrio.
- **Colores:** caparazones verde, azul y turquesa; pieles gris verdoso.
- **Efectos:** se tambalean cada pocos segundos; estrellas y destellos.

**94. Diablillo Compsognato** — 💰 16M $/s · *Compsognathus demonio (inventado)*
- **Modelo:** compsognathus pequeño con cuernecitos de diablo, alitas de murciélago, cola acabada en punta de flecha y un tridente diminuto.
- **Colores:** rojo brillante; cuernos y alas negros; tridente dorado.
- **Efectos:** llamitas, humo negro y destellos rojos.

**95. Polilla Jurásica Sagrada** — 💰 16M $/s · *polilla prehistórica gigante (inventado)*
- **Modelo:** polilla enorme y peluda con antenas de pluma y cuatro alas grandes con dibujos de ojos dorados.
- **Colores:** cuerpo blanco crema; alas blancas con dibujos dorados y lila en Neon suave.
- **Efectos:** polvo dorado de las alas, destellos y luz suave pulsante.

**96. Rinoceratops Titán** — 💰 17,5M $/s · *ceratopsio-rinoceronte gigante (inventado)*
- **Modelo:** ceratopsio enorme con un cuerno gigantesco en la nariz como un rinoceronte, armadura de piedra con runas grabadas y gola de templo antiguo.
- **Colores:** piedra gris verdosa con musgo; runas en Neon dorado; cuerno de piedra blanca.
- **Efectos:** runas que orbitan, polvo de piedra y destellos dorados.

**97. Raptor Infernal** — 💰 25M $/s · *raptor demoníaco (inventado)*
- **Modelo:** raptor con el cuerpo de roca volcánica agrietada, ojos de fuego y una melena de llamas en el cuello.
- **Colores:** negro carbón con grietas en Neon naranja; llamas naranjas y amarillas.
- **Efectos:** fuego en el cuello y la cola, brasas que suben y destellos rojos.

**98. Pavosaurio Celestial** — 💰 25M $/s · *dinosaurio pavo real (inventado)*
- **Modelo:** ornitópodo elegante con una cola de pavo real ENORME desplegada en abanico detrás de él, llena de «ojos» brillantes.
- **Colores:** cuerpo azul eléctrico; cola verde esmeralda con ojos dorados y azul en Neon; cresta de plumas doradas.
- **Efectos:** destellos que brillan uno a uno en la cola, plumas doradas y estrellas.

**99. Araña-saurio** — 💰 25M $/s · *dinosaurio araña (inventado)*
- **Modelo:** raptor con 8 patas de araña en lugar de dos piernas y 6 ojos en la cara, colgado de un hilo de telaraña.
- **Colores:** negro con un reloj de arena rojo en el lomo; ojos en Neon rojo; telaraña blanca.
- **Efectos:** telarañas brillantes alrededor, estrellas y destellos.

**100. Tucán-Raptor Tóxico** — 💰 30M $/s · *raptor tucán mutante (inventado)*
- **Modelo:** raptor con un pico de tucán GIGANTE y de colores, y el plumaje erizado. Gotea un líquido brillante del pico.
- **Colores:** plumas negras; pico naranja, amarillo y verde neón; gotas en Neon verde.
- **Efectos:** gotas tóxicas, burbujas verdes y destellos.

**101. Dodo de Tres Cabezas** — 💰 165M $/s · *Dodo mutante (inventado)*
- **Modelo:** el Dodo Corriente, pero GIGANTE y con tres cabezas, cada una con una expresión distinta (feliz, enfadada y dormida), y una corona en la cabeza del centro.
- **Colores:** gris azulado; tres picos amarillos; corona dorada con gemas rojas.
- **Efectos:** plumas doradas, estrellas que orbitan, destellos azul y morado y un brillo arcoíris tenue.

## Secreto (35)

**102. Ojo del Pantano** — 💰 1,25M $/s · *criatura del pantano (inventado)*
- **Modelo:** cocodrilo prehistórico sumergido en un charco de lodo del que solo asoman un OJO gigante y el hocico. Algas colgando.
- **Colores:** verde musgo; lodo marrón; ojo amarillo con pupila de serpiente; algas verde oscuro.
- **Efectos:** burbujas de lodo, aura oscura, contorno negro y morado y humo negro.

**103. Raptor 67** — 💰 1,55M $/s · *raptor meme (inventado)*
- **Modelo:** raptor con una camiseta de baloncesto con el número «67», haciendo el gesto de las manos arriba y abajo.
- **Colores:** plumas moradas; camiseta amarilla con números negros.
- **Efectos:** números «67» flotando, aura oscura y contorno negro y morado.

**104. Titanoboa Rey** — 💰 3,5M $/s · *Titanoboa (serpiente gigante prehistórica)*
- **Modelo:** serpiente GIGANTESCA enrollada en espiral con la cabeza levantada en el centro, una corona y la lengua bífida fuera.
- **Colores:** escamas verde oliva con rombos marrones; barriga amarilla; corona dorada; lengua roja.
- **Efectos:** aura oscura, contorno negro y morado y siseo (ondas verdes).

**105. Yetisaurio** — 💰 5M $/s · *dinosaurio yeti (inventado)*
- **Modelo:** terópodo enorme cubierto de pelo blanco desgreñado, con brazos de gorila y pies gigantes, y cara azul de yeti.
- **Colores:** pelo blanco; cara y manos azul claro; colmillos blancos; ojos rojos.
- **Efectos:** ventisca, aura oscura helada y contorno negro y morado.

**106. Cerberosaurio** — 💰 8M $/s · *raptor de tres cabezas (inventado)*
- **Modelo:** raptor gigante con TRES cabezas de raptor, cada una con un collar de pinchos, y la cola en llamas.
- **Colores:** negro con vetas rojas en Neon; collares de pinchos plateados; ojos en Neon rojo.
- **Efectos:** fuego de las tres bocas, aura oscura roja y contorno negro y morado.

**107. Krakensaurio** — 💰 15M $/s · *plesiosaurio-kraken (inventado)*
- **Modelo:** plesiosaurio con tentáculos de kraken saliendo de la boca y del lomo, abrazando un barco pirata diminuto.
- **Colores:** rojo oscuro con ventosas rosas; barco marrón con velas blancas.
- **Efectos:** agua oscura, aura oscura y contorno negro y morado.

**108. Wendigosaurio** — 💰 15M $/s · *dinosaurio esqueleto con cuernos de ciervo (inventado)*
- **Modelo:** terópodo flaquísimo con el cráneo descarnado de la cabeza al aire y cuernos de ciervo enormes. Muy terrorífico.
- **Colores:** cuerpo gris ceniza; cráneo blanco hueso; cuernos marrón oscuro; ojos en Neon blanco.
- **Efectos:** niebla blanca, aura oscura y contorno negro y morado.

**109. Guardián del Anillo** — 💰 15M $/s · *ceratopsio guardián (inventado)*
- **Modelo:** ceratopsio con armadura de caballero y un ANILLO de piedra gigante con runas flotando detrás de él, como un portal.
- **Colores:** armadura plateada; cuerpo gris; anillo de piedra con runas en Neon azul.
- **Efectos:** el anillo gira, aura oscura y contorno negro y morado.

**110. Tiranosaurio Rex** — 💰 25M $/s · *Tyrannosaurus rex*
- **Modelo:** EL rey: cabeza gigante con dientes enormes, bracitos ridículos, patas potentes y cola gruesa. Pose de rugido con una corona ladeada.
- **Colores:** verde oscuro con rayas negras; barriga crema; corona dorada; ojos amarillos.
- **Efectos:** rugido (anillo de sonido), temblor, aura oscura y contorno negro y morado.

**111. Tralalerodonte** — 💰 32M $/s · *dinosaurio meme con zapatillas (inventado)*
- **Modelo:** tiburón-dinosaurio de pie sobre tres patas con zapatillas deportivas azules (estilo brainrot italiano).
- **Colores:** azul tiburón; barriga blanca; zapatillas azul eléctrico con suela blanca.
- **Efectos:** notas musicales, aura oscura y contorno negro y morado.

**112. Jefe Esqueleto Cósmico** — 💰 45M $/s · *esqueleto de T-Rex del espacio (inventado)*
- **Modelo:** esqueleto completo de T-Rex de pie, con las costillas abiertas y una galaxia brillando dentro del pecho.
- **Colores:** huesos blanco hueso; galaxia morada y azul en Neon; ojos en Neon cian.
- **Efectos:** estrellas saliendo del pecho, aura oscura y contorno negro y morado.

**113. Espino Cósmico** — 💰 60M $/s · *Spinosaurus del espacio (inventado)*
- **Modelo:** espinosaurio con una VELA gigante en el lomo que es una ventana al espacio (estrellas y nebulosas dentro), hocico de cocodrilo y patas cortas.
- **Colores:** cuerpo azul noche; vela con textura de galaxia; dientes blancos.
- **Efectos:** la vela emite estrellas, aura oscura y contorno negro y morado.

**114. Rompefauces** — 💰 60M $/s · *bestia de la grieta (inventado)*
- **Modelo:** monstruo con una boca que ocupa todo el cuerpo y que se abre en cuatro mandíbulas, como una flor de dientes.
- **Colores:** negro; interior de la boca en Neon morado; dientes blancos.
- **Efectos:** la boca se abre y se cierra, aura oscura y contorno negro y morado.

**115. Megaloceros Espíritu** — 💰 145M $/s · *Megaloceros (ciervo gigante prehistórico)*
- **Modelo:** ciervo gigante con astas ENORMES y anchas como alas, con flores de cerezo creciendo en ellas.
- **Colores:** cuerpo blanco espiritual semitransparente; astas doradas; flores rosa.
- **Efectos:** pétalos, luz espiritual, aura oscura y contorno negro y morado.

**116. Ala de Cristal** — 💰 145M $/s · *pterosaurio de cristal oscuro (inventado)*
- **Modelo:** pterosaurio con las alas hechas de fragmentos de cristal negro unidos por energía.
- **Colores:** cristal negro; uniones en Neon rosa.
- **Efectos:** fragmentos que flotan, aura oscura y contorno negro y morado.

**117. Plesio Eléctrico** — 💰 200M $/s · *plesiosaurio-anguila (inventado)*
- **Modelo:** plesiosaurio con el cuerpo de anguila eléctrica, rayos saliéndole del lomo.
- **Colores:** amarillo y negro; rayos en Neon azul eléctrico.
- **Efectos:** rayos que saltan, aura oscura y contorno negro y morado.

**118. Megalodón Mutante** — 💰 215M $/s · *Megalodon mutante (inventado)*
- **Modelo:** megalodón con patas de dinosaurio, caminando sobre el suelo, con cicatrices y un ojo mecánico.
- **Colores:** gris con cicatrices rojas; ojo mecánico plateado con luz roja.
- **Efectos:** gotas de agua, aura oscura y contorno negro y morado.

**119. Gargolasaurio** — 💰 225M $/s · *gárgola dinosaurio (inventado)*
- **Modelo:** raptor de PIEDRA agazapado sobre un pedestal de iglesia, con alas de murciélago de piedra.
- **Colores:** piedra gris; ojos en Neon rojo; musgo verde en los bordes.
- **Efectos:** polvo de piedra, aura oscura y contorno negro y morado.

**120. Medusaurio Puro** — 💰 225M $/s · *medusa-dinosaurio (inventado)*
- **Modelo:** dinosaurio con la cabeza en forma de campana de medusa transparente y tentáculos largos colgando.
- **Colores:** campana blanca brillante; tentáculos rosa y azul pastel en Neon.
- **Efectos:** flota y pulsa, aura oscura y contorno negro y morado.

**121. Experimento #001** — 💰 285M $/s · *primer experimento del laboratorio (inventado)*
- **Modelo:** dinosaurio cosido de partes distintas (cabeza de raptor, cuerpo de triceratops, cola de anquilosaurio) con puntos de sutura y tornillos.
- **Colores:** cada parte de un color distinto (verde, gris y marrón); puntos negros; tornillos plateados.
- **Efectos:** chispas eléctricas, aura oscura y contorno negro y morado.

**122. Dunkleosteus** — 💰 300M $/s · *Dunkleosteus (pez acorazado prehistórico)*
- **Modelo:** pez gigante con la cabeza cubierta de una ARMADURA de placas y una mandíbula de cuchillas de hueso en lugar de dientes.
- **Colores:** armadura gris oscuro; cuerpo azul acero; mandíbula blanca.
- **Efectos:** burbujas, aura oscura y contorno negro y morado.

**123. Centaurosaurio** — 💰 350M $/s · *centauro-raptor (inventado)*
- **Modelo:** cuerpo de saurópodo de cuatro patas con el torso de un raptor en lugar de cuello, sujetando un arco.
- **Colores:** marrón caramelo; arco dorado; flecha en Neon azul.
- **Efectos:** flechas de luz, aura oscura y contorno negro y morado.

**124. Colmillo Navaja** — 💰 350M $/s · *raptor de colmillos de acero (inventado)*
- **Modelo:** raptor con colmillos de acero que salen de la boca como navajas y garras de metal.
- **Colores:** negro; colmillos y garras plateados con el filo en Neon blanco.
- **Efectos:** destellos metálicos, aura oscura y contorno negro y morado.

**125. Sarcosuchus Tiburón** — 💰 350M $/s · *Sarcosuchus (supercocodrilo) con aleta de tiburón (inventado)*
- **Modelo:** cocodrilo gigante con una aleta dorsal de tiburón y la mandíbula enorme abierta.
- **Colores:** verde grisáceo; aleta azul tiburón; dientes blancos.
- **Efectos:** agua, aura oscura y contorno negro y morado.

**126. Estego Luminoso** — 💰 350M $/s · *Stegosaurus bioluminiscente (inventado)*
- **Modelo:** estegosaurio con placas translúcidas que brillan desde dentro, como un pez abisal.
- **Colores:** cuerpo azul oscuro; placas en Neon cian y rosa.
- **Efectos:** pulsos de luz en las placas, aura oscura y contorno negro y morado.

**127. Nucleocodrilo** — 💰 500M $/s · *cocodrilo radiactivo (inventado)*
- **Modelo:** cocodrilo prehistórico con barriles radiactivos pegados al lomo y vapor saliendo por los ojos.
- **Colores:** verde radiactivo; barriles amarillos con el símbolo negro; vapor en Neon verde.
- **Efectos:** vapor tóxico, aura oscura verde y contorno negro y morado.

**128. Raya Espíritu Luminosa** — 💰 500M $/s · *raya prehistórica fantasma (inventado)*
- **Modelo:** mantarraya gigante semitransparente con dibujos luminosos en la espalda.
- **Colores:** azul oscuro transparente; dibujos en Neon turquesa.
- **Efectos:** estela de luz, aura oscura y contorno negro y morado.

**129. Gliptodonte Esqueleto** — 💰 550M $/s · *Glyptodon fósil viviente (inventado)*
- **Modelo:** esqueleto de armadillo gigante con el caparazón intacto y huesos a la vista en patas y cabeza.
- **Colores:** huesos blanco hueso; caparazón gris piedra; ojos en Neon verde.
- **Efectos:** polvo de huesos, aura oscura y contorno negro y morado.

**130. Mosa Abisal Luminoso** — 💰 600M $/s · *Mosasaurus del abismo (inventado)*
- **Modelo:** mosasaurio de las profundidades con una antena de pez abisal con una luz colgando delante de la boca.
- **Colores:** negro azulado; luz de la antena en Neon amarillo; dientes blancos.
- **Efectos:** la luz se balancea, aura oscura y contorno negro y morado.

**131. Mecha-Mordedor** — 💰 600M $/s · *T-Rex robot (inventado)*
- **Modelo:** cabeza de T-Rex robot gigante sobre patas mecánicas cortas, con la mandíbula de acero.
- **Colores:** metal plateado y rojo; ojos en Neon rojo; tornillos dorados.
- **Efectos:** chispas y humo, aura oscura y contorno negro y morado.

**132. Terrorave Esqueleto** — 💰 750M $/s · *ave del terror fósil (inventado)*
- **Modelo:** esqueleto de ave del terror con el pico de hueso enorme y plumas fantasma.
- **Colores:** huesos blancos; plumas en Neon morado translúcido.
- **Efectos:** plumas fantasma, aura oscura y contorno negro y morado.

**133. Euriptérido Ojo** — 💰 825M $/s · *Eurypterid (escorpión marino gigante) con ojo (inventado)*
- **Modelo:** escorpión marino gigante con un único ojo gigante en el centro del caparazón.
- **Colores:** rojo coral; ojo blanco con iris verde.
- **Efectos:** el ojo te sigue, aura oscura y contorno negro y morado.

**134. Señor de los Anillos** — 💰 825M $/s · *saurópodo de Saturno (inventado)*
- **Modelo:** saurópodo con varios anillos planetarios cruzados girando a su alrededor.
- **Colores:** cuerpo dorado; anillos morado y plateado.
- **Efectos:** anillos girando, aura oscura y contorno negro y morado.

**135. Megaterio Esqueleto** — 💰 900M $/s · *Megatherium fósil (inventado)*
- **Modelo:** esqueleto de perezoso gigante de pie con garras enormes y una lámpara colgando de una garra.
- **Colores:** huesos blancos; lámpara con luz en Neon amarillo.
- **Efectos:** luz oscilante, aura oscura y contorno negro y morado.

**136. Erizosaurio Tóxico** — 💰 1,75B $/s · *anquilosaurio-erizo mutante (inventado)*
- **Modelo:** anquilosaurio con CIENTOS de púas largas como un erizo, todas goteando veneno brillante. Cara simpática.
- **Colores:** púas negras con las puntas en Neon verde; cara marrón; ojos negros brillantes.
- **Efectos:** gotas tóxicas, aura oscura verde y contorno negro y morado.

## Eterno (24)

> Todos los Eternos llevan además 2-3 **anillos de energía** del color del bicho girando alrededor (cilindros muy finos en Neon semitransparente) y **polvo de luz** que sube desde el suelo.

**137. Rex de Hielo Eterno** — 💰 65M $/s · *T-Rex congelado (inventado)*
- **Modelo:** T-Rex hecho de HIELO macizo, con carámbanos colgando de la mandíbula, una armadura de escarcha en el lomo y los pies sobre un bloque de hielo.
- **Colores:** hielo azul claro semitransparente (Transparency 0,2) con el interior en Neon blanco azulado; ojos en Neon cian.
- **Efectos:** ventisca alrededor, aliento helado, cristales de nieve que caen y anillos de hielo.

**138. Fénix-Quetzal** — 💰 85M $/s · *Quetzalcoatlus de fuego (inventado)*
- **Modelo:** pterosaurio gigante con las alas abiertas hechas de LLAMAS, una cola de fuego larguísima y una cresta en forma de llama.
- **Colores:** cuerpo naranja; llamas en Neon amarillo, naranja y rojo en degradado; ojos blancos.
- **Efectos:** fuego en las alas, brasas, ceniza que renace en chispas y anillos de fuego.

**139. Espino de Lava** — 💰 100M $/s · *Spinosaurus volcánico (inventado)*
- **Modelo:** espinosaurio con la vela del lomo convertida en un volcán en erupción: la lava cae por los lados. Cuerpo de roca negra agrietada.
- **Colores:** roca negra; grietas y lava en Neon naranja y amarillo; humo gris.
- **Efectos:** erupción de partículas de lava desde la vela, humo, gotas de lava y anillos de fuego.

**140. Pliosaurio Rey de las Mareas** — 💰 130M $/s · *Pliosaurus coronado (inventado)*
- **Modelo:** pliosaurio colosal con una corona de coral, un tridente sujeto en una aleta y una capa de algas. Sale de un remolino.
- **Colores:** azul profundo con escamas doradas; corona de coral rosa; tridente dorado; remolino turquesa.
- **Efectos:** remolino de agua, burbujas doradas, peces pequeños que orbitan y anillos azules.

**141. Mosasaurio Eterno** — 💰 180M $/s · *Mosasaurus gigante*
- **Modelo:** el mosasaurio más grande, con la boca abierta llena de hileras dobles de dientes y la cola de tiburón, enroscado sobre sí mismo.
- **Colores:** azul oscuro por encima, blanco por debajo; líneas laterales en Neon azul; ojos dorados.
- **Efectos:** olas de agua alrededor, gotas, espuma y anillos azules.

**142. Ptero Lunar Eterno** — 💰 250M $/s · *pterosaurio de la luna (inventado)*
- **Modelo:** pterosaurio plateado con una LUNA creciente sobre la cabeza en lugar de cresta y alas con fases lunares dibujadas.
- **Colores:** plateado y blanco; luna en Neon blanco; alas azul noche con las lunas en Neon.
- **Efectos:** polvo de estrellas plateado, brillo de luna y anillos plateados.

**143. Devoramundos** — 💰 500M $/s · *bestia cósmica (inventado)*
- **Modelo:** criatura con forma de T-Rex cuya boca abierta contiene un AGUJERO NEGRO que absorbe partículas. Pequeños planetas orbitando su cabeza.
- **Colores:** negro con bordes morados; agujero negro con anillo de acreción en Neon naranja; planetas de colores.
- **Efectos:** partículas absorbidas hacia la boca (velocidad negativa), planetas girando y anillos morados.

**144. Oni-Rex** — 💰 600M $/s · *T-Rex demonio japonés (inventado)*
- **Modelo:** T-Rex con máscara oni (cuernos, ceño, colmillos dorados), cuerda sagrada atada al cuello y faroles de papel colgando de la cola.
- **Colores:** rojo oni; máscara roja con dorado; cuerda blanca; faroles en Neon naranja.
- **Efectos:** pétalos de cerezo, fuego fatuo azul y anillos rojos.

**145. Archelon Terra** — 💰 750M $/s · *Archelon con una isla en el caparazón (inventado)*
- **Modelo:** tortuga marina gigante que lleva en el caparazón una ISLA entera: árboles de bloques, una cascada y una cabañita.
- **Colores:** piel verde agua; caparazón de roca; isla verde con arena; cascada azul; cabaña marrón.
- **Efectos:** cascada de partículas azules, pájaros diminutos que vuelan y anillos verdes.

**146. Dragón Fracturado** — 💰 800M $/s · *dragón-raptor de cristal roto (inventado)*
- **Modelo:** raptor-dragón con el cuerpo partido en trozos que flotan separados unidos por energía, como un puzle roto.
- **Colores:** trozos de piedra negra; energía en Neon rosa y morado.
- **Efectos:** trozos que giran, rayos entre los fragmentos y anillos rosa.

**147. Gigantopithecus Rey** — 💰 880M $/s · *Gigantopithecus (simio gigante prehistórico)*
- **Modelo:** simio gigantesco sentado en un trono de piedra, con una corona de huesos de dinosaurio y un T-Rex pequeñito en la mano.
- **Colores:** pelo marrón oscuro; cara gris; trono de piedra con runas en Neon dorado; corona blanca.
- **Efectos:** golpes en el pecho que sueltan ondas, runas y anillos dorados.

**148. Titanoboa del Vacío** — 💰 900M $/s · *serpiente cósmica (inventado)*
- **Modelo:** titanoboa enorme que sale y entra de portales en el aire, con su cuerpo apareciendo y desapareciendo.
- **Colores:** escamas negras con constelaciones; portales en Neon morado.
- **Efectos:** portales que giran, estrellas y anillos morados.

**149. Rinoceronte Lanudo Oso** — 💰 1B $/s · *Coelodonta mutante (inventado)*
- **Modelo:** rinoceronte lanudo prehistórico con cuerpo de oso, dos cuernos enormes y garras de oso, de pie y rugiendo.
- **Colores:** pelo marrón rojizo; cuernos blanco hueso; garras negras.
- **Efectos:** nieve, aliento helado y anillos blancos.

**150. Gigantosaurio Titán** — 💰 1B $/s · *Giganotosaurus titánico (inventado)*
- **Modelo:** giganotosaurio colosal con armadura de piedra en el lomo, cicatrices de batalla y montañas pequeñas en los hombros.
- **Colores:** gris piedra con vetas de lava en Neon naranja; cicatrices blancas.
- **Efectos:** temblor, rocas que caen y anillos naranjas.

**151. Pegasaurio** — 💰 1,3B $/s · *saurópodo alado (inventado)*
- **Modelo:** saurópodo esbelto con alas de pegaso gigantes, crin blanca ondeando en el cuello y pezuñas doradas.
- **Colores:** blanco perla; alas blancas con borde dorado; crin blanca y azul cielo; pezuñas doradas.
- **Efectos:** nubes, plumas, arcoíris pequeño y anillos dorados.

**152. Diplodocus Esqueleto Jinete** — 💰 1,3B $/s · *esqueleto de saurópodo con jinete (inventado)*
- **Modelo:** esqueleto de diplodocus montado por un esqueleto de raptor con armadura y lanza.
- **Colores:** huesos blancos; armadura negra; lanza con punta en Neon verde; ojos en Neon verde.
- **Efectos:** fuego verde fantasma, niebla y anillos verdes.

**153. Mantis Jurásica Nuclear** — 💰 1,5B $/s · *mantis prehistórica radiactiva (inventado)*
- **Modelo:** mantis religiosa gigante con brazos de guadaña enormes y el abdomen brillando como un reactor.
- **Colores:** verde lima; guadañas plateadas; abdomen en Neon verde; ojos rojos.
- **Efectos:** radiación (partículas verdes), rayos y anillos verdes.

**154. Plesio Eléctrico Luminoso** — 💰 1,75B $/s · *versión suprema del Plesio Eléctrico (inventado)*
- **Modelo:** plesiosaurio enorme hecho de PURA ELECTRICIDAD, con el contorno del cuerpo dibujado por rayos.
- **Colores:** cuerpo semitransparente en Neon amarillo eléctrico; núcleo blanco.
- **Efectos:** rayos constantes, chispas y anillos amarillos.

**155. Equinoccio** — 💰 1,8B $/s · *Brachiosaurus día y noche (inventado)*
- **Modelo:** braquiosaurio partido por la mitad a lo largo: una mitad es de DÍA (sol en el lomo) y la otra de NOCHE (luna y estrellas).
- **Colores:** mitad dorada con un sol en Neon amarillo; mitad azul noche con una luna en Neon blanco y estrellas.
- **Efectos:** rayos de sol por un lado y estrellas por el otro; anillos dorado y azul.

**156. Aguijón Terrible** — 💰 2B $/s · *escorpión marino gigante (inventado)*
- **Modelo:** euriptérido colosal con la cola levantada y un AGUIJÓN gigante que gotea energía, y pinzas enormes.
- **Colores:** caparazón negro y morado; aguijón en Neon magenta.
- **Efectos:** gotas de energía, chispas y anillos magenta.

**157. Archelon Terra Luminoso** — 💰 2,5B $/s · *versión brillante del Archelon Terra (inventado)*
- **Modelo:** como el Archelon Terra pero la isla del caparazón es de cristal brillante, con árboles de cristal.
- **Colores:** piel turquesa; isla en Neon cian, rosa y blanco.
- **Efectos:** destellos de cristal, luz pulsante y anillos cian.

**158. Dunkleosteus Esqueleto** — 💰 2,5B $/s · *Dunkleosteus fósil (inventado)*
- **Modelo:** pez acorazado gigante de solo HUESOS y placas, con fuego fantasma dentro de la armadura.
- **Colores:** huesos blancos; placas gris oscuro; fuego interior en Neon azul.
- **Efectos:** fuego azul, burbujas y anillos azules.

**159. Experimento #010 Dragón Rosa** — 💰 2,5B $/s · *dragón de laboratorio (inventado)*
- **Modelo:** dragón-raptor rosa con tubos de laboratorio conectados al lomo, un collar con «#010» y alas pequeñas.
- **Colores:** rosa chicle; tubos transparentes con líquido en Neon rosa; collar plateado.
- **Efectos:** burbujas rosa, chispas y anillos rosa.

**160. Gigantosaurio Esqueleto** — 💰 4B $/s · *Giganotosaurus fósil supremo (inventado)*
- **Modelo:** esqueleto GIGANTE de giganotosaurio en pose de rugido, con fuego dentro del cráneo y de la caja torácica.
- **Colores:** huesos blancos con grietas; fuego en Neon naranja; ojos en Neon rojo.
- **Efectos:** fuego en el cráneo, ceniza, rugido y anillos naranjas.

## Divino (14)

> Todos los Divinos llevan además un **halo** sobre la cabeza, **rayos de luz** verticales que bajan del cielo sobre el pedestal, **partículas arcoíris** y un brillo enorme (luz `PointLight` de radio 20+).

**161. Unicornio-Ceratops** — 💰 1B $/s · *Triceratops unicornio (inventado)*
- **Modelo:** ceratopsio elegante con UN cuerno largo en espiral en la frente, crin de unicornio arcoíris y pezuñas doradas.
- **Colores:** blanco perla; crin arcoíris; cuerno dorado en espiral; ojos azules.
- **Efectos:** estela arcoíris, estrellas y purpurina dorada.

**162. Archidemonio Rex** — 💰 1,25B $/s · *T-Rex demonio (inventado)*
- **Modelo:** T-Rex con cuernos de demonio enormes, alas de murciélago, una corona de fuego y cadenas rotas en los tobillos.
- **Colores:** negro y rojo; alas negras con membrana roja; fuego en Neon rojo y naranja; cadenas plateadas.
- **Efectos:** fuego infernal, humo negro y brasas rojas que suben.

**163. Kitsune-Raptor** — 💰 1,8B $/s · *raptor zorro de nueve colas (inventado)*
- **Modelo:** raptor elegante con cara de zorro y NUEVE colas de fuego que se abren en abanico detrás de él.
- **Colores:** blanco con marcas rojas en la cara; puntas de las colas en Neon azul (fuego de zorro).
- **Efectos:** fuego fatuo azul en cada cola, pétalos de cerezo y destellos.

**164. Llama Nocturna** — 💰 3B $/s · *Spinosaurus de fuego negro (inventado)*
- **Modelo:** espinosaurio con la vela hecha de FUEGO NEGRO y morado, ojos ardientes y garras en llamas.
- **Colores:** negro carbón; fuego en Neon morado oscuro y negro; ojos en Neon blanco.
- **Efectos:** fuego oscuro, sombras y brasas moradas.

**165. Cthulhu-Plesiosaurio** — 💰 3B $/s · *plesiosaurio con cara de pulpo (inventado)*
- **Modelo:** plesiosaurio colosal con la cabeza de Cthulhu: tentáculos en la cara y alas de murciélago pequeñas en el lomo.
- **Colores:** verde oscuro; ojos en Neon amarillo; ventosas moradas.
- **Efectos:** niebla verde, gotas de agua y runas extrañas que orbitan.

**166. Coloso Fracturado** — 💰 3,5B $/s · *Argentinosaurus de cristal roto (inventado)*
- **Modelo:** argentinosaurio GIGANTE con el cuerpo partido en enormes fragmentos de cristal que flotan, unidos por luz.
- **Colores:** cristal blanco y azul; luz en Neon cian.
- **Efectos:** fragmentos que giran lentamente y rayos de luz entre ellos.

**167. Octo-Mamut** — 💰 4B $/s · *mamut con tentáculos (inventado)*
- **Modelo:** mamut gigante con OCHO trompas como tentáculos de pulpo y colmillos enormes en espiral.
- **Colores:** pelo morado; tentáculos rosa con ventosas blancas; colmillos dorados.
- **Efectos:** tinta morada que flota, burbujas y destellos.

**168. Arcángel-Ptero** — 💰 5B $/s · *pterosaurio arcángel (inventado)*
- **Modelo:** pterosaurio con CUATRO alas de ángel enormes, armadura dorada y una espada de luz en las garras.
- **Colores:** blanco y dorado; alas blancas con plumas doradas; espada en Neon blanco.
- **Efectos:** plumas doradas, rayos celestiales y coros de luz (destellos en círculo).

**169. Quemamundos Rex** — 💰 5B $/s · *T-Rex de magma (inventado)*
- **Modelo:** T-Rex hecho de MAGMA: roca agrietada por la que se ve lava, un planeta pequeño ardiendo en la boca y meteoritos orbitando.
- **Colores:** roca negra; lava en Neon naranja y amarillo; planeta rojo.
- **Efectos:** lluvia de meteoritos, fuego y ceniza.

**170. Dientes de Sable Divino** — 💰 5B $/s · *Smilodon dios (inventado)*
- **Modelo:** smilodon (tigre dientes de sable) gigante y majestuoso, con colmillos de cristal larguísimos y una melena de luz.
- **Colores:** pelaje dorado con rayas blancas; colmillos en Neon cian; melena en Neon blanco.
- **Efectos:** brillos y destellos de cristal.

**171. Cthulhu Luminoso** — 💰 6,5B $/s · *versión brillante del Cthulhu-Plesiosaurio (inventado)*
- **Modelo:** como el Cthulhu-Plesiosaurio pero con el cuerpo bioluminiscente: dibujos brillantes por todo el cuerpo.
- **Colores:** azul abisal; dibujos en Neon turquesa y rosa.
- **Efectos:** pulsos de luz y burbujas brillantes.

**172. Aetheron, Braquio del Éter** — 💰 6,9B $/s · *Brachiosaurus celestial (inventado)*
- **Modelo:** braquiosaurio ENORME con el cuerpo hecho de nubes y luz, alas de luz en los hombros y la cabeza rodeada de tres halos.
- **Colores:** blanco y dorado; nubes blancas; luz en Neon dorado.
- **Efectos:** nubes que se mueven, rayos de sol y estrellas.

**173. Mecha-Rex Omega** — 💰 7,5B $/s · *T-Rex robot supremo (inventado)*
- **Modelo:** T-Rex robot gigantesco con cañones láser en los hombros, propulsores en la espalda y el pecho abierto con un núcleo de energía.
- **Colores:** metal plateado y azul; núcleo en Neon azul; detalles en Neon rojo; propulsores con fuego azul.
- **Efectos:** propulsores encendidos, chispas, láseres que parpadean y humo.

**174. T-Rex Galáctico** — 💰 9B $/s · *Tyrannosaurus rex cósmico supremo (inventado) · el bicho más valioso del juego*
- **Modelo:** el T-Rex definitivo: enorme, con el cuerpo hecho de una GALAXIA en movimiento (nebulosas y estrellas dentro), una corona de planetas orbitando la cabeza, anillos de Saturno alrededor del cuerpo, una capa de estrellas y los ojos como dos soles. Pose de rugido con los bracitos levantados en señal de victoria.
- **Colores:** cuerpo con textura de galaxia (morado, azul, rosa y negro, con estrellas en Neon blanco); corona dorada; planetas de colores; ojos en Neon amarillo; dientes en Neon blanco.
- **Efectos (TODO a la vez):** estrellas que salen sin parar, nebulosas de colores que flotan, planetas en órbita, cometas que cruzan, polvo cósmico arcoíris, agujero negro pequeño en la palma de una mano, rayos de luz desde el cielo, halo, brillo enorme y un anillo de energía arcoíris a ras de suelo. Al aparecer: explosión de estrellas.

## Brainrot — especial (6)

> Estilo meme «brainrot italiano»: nombres en italiano inventado, mezclas absurdas, colores chillones. Salen de un huevo especial.

**175. Raptorino Tralalerino** — 💰 100 $/s
- **Modelo:** raptor con tres patas con zapatillas de deporte, que baila sobre una pata.
- **Colores:** azul celeste; zapatillas blancas con rayas rojas.
- **Efectos:** notas musicales y destellos de colores chillones.

**176. Triceratopsina Pizzerina** — 💰 400 $/s
- **Modelo:** triceratops cuya gola es una PIZZA entera (con pepperoni y queso derretido goteando) y que lleva un gorro de chef.
- **Colores:** cuerpo verde; gola de pizza naranja, amarilla y roja; gorro blanco.
- **Efectos:** gotas de queso y vapor de pizza recién hecha.

**177. Pterodattilo Spaghettini** — 💰 40K $/s
- **Modelo:** pterodáctilo con las alas hechas de ESPAGUETIS y una albóndiga en la cabeza; lleva un tenedor gigante.
- **Colores:** espaguetis amarillo pasta; salsa roja; albóndiga marrón; tenedor plateado.
- **Efectos:** gotas de tomate y parmesano que cae.

**178. Stegoccino Cappuccino** — 💰 800K $/s
- **Modelo:** estegosaurio con el cuerpo de taza de café; las placas del lomo son galletas y del lomo sale espuma de leche con un dibujo de corazón.
- **Colores:** taza blanca; café marrón; espuma crema; galletas doradas.
- **Efectos:** vapor de café, granos de café que flotan y corazones.

**179. Bombardino Rexodilo** — 💰 20M $/s
- **Modelo:** mezcla de T-Rex y cocodrilo con alas de avión bombardero y hélices en los brazos.
- **Colores:** verde militar; alas grises con estrellas blancas; hélices negras.
- **Efectos:** hélices girando, humo y estelas.

**180. Brachio Fragolini** — 💰 110M $/s
- **Modelo:** braquiosaurio con el cuerpo de una FRESA gigante (semillas incluidas) y hojas verdes como gorro.
- **Colores:** rojo fresa; semillas amarillas; hojas verde lima.
- **Efectos:** brillos rosa, fresas pequeñas que caen y corazones.

## Mutante — especial (12)

> Bichos de laboratorio. Los 6 primeros son mutantes orgánicos (babas verdes, burbujas tóxicas); los 6 últimos son su versión **Mecha** (robot), con chispas, humo y luces.

**181. Larva-saurio** — 💰 10K $/s
- **Modelo:** gusano gordo y segmentado con cabeza de dinosaurio pequeño y bracitos.
- **Colores:** verde pálido con manchas moradas; ojos negros.
- **Efectos:** babas verdes y burbujas.

**182. Sapo-saurio** — 💰 50K $/s
- **Modelo:** sapo gigante con la cabeza de un ceratopsio y una lengua larguísima fuera.
- **Colores:** verde con verrugas naranjas; lengua rosa.
- **Efectos:** burbujas tóxicas y gotas.

**183. Reptador Mutante** — 💰 1,5M $/s
- **Modelo:** criatura de 6 patas con cuerpo de cocodrilo y una cresta de huesos, arrastrándose pegada al suelo.
- **Colores:** gris verdoso con venas en Neon verde.
- **Efectos:** baba, vapor verde y luz verde.

**184. Cocodonte** — 💰 30M $/s
- **Modelo:** cocodrilo enorme con dientes sobresalientes por todas partes, incluso en el lomo.
- **Colores:** verde oscuro; dientes blancos; ojos amarillos.
- **Efectos:** baba verde y burbujas.

**185. Krakenoide** — 💰 500M $/s
- **Modelo:** masa de tentáculos con una cabeza de mosasaurio en el centro y ojos por los tentáculos.
- **Colores:** morado oscuro; ojos amarillos; ventosas rosa.
- **Efectos:** tinta morada, baba y burbujas.

**186. Escamaterror** — 💰 2B $/s
- **Modelo:** dragón-dinosaurio enorme cubierto de escamas afiladas como cuchillos, con 4 ojos y la boca partida en tres.
- **Colores:** negro con escamas de borde en Neon verde; ojos en Neon rojo.
- **Efectos:** vapor tóxico, chispas verdes y temblor.

**187. Mecha Larva-saurio** — 💰 45M $/s
- **Modelo:** la Larva-saurio en versión robot: segmentos metálicos, ruedas en lugar de patas y una antena.
- **Colores:** plateado y verde; luces en Neon verde.
- **Efectos:** chispas y humo de tubo de escape.

**188. Mecha Sapo-saurio** — 💰 155M $/s
- **Modelo:** sapo-saurio robot con patas de resorte y lengua extensible mecánica.
- **Colores:** plateado y naranja; ojos en Neon azul.
- **Efectos:** chispas y saltos con muelles.

**189. Mecha Reptador** — 💰 320M $/s
- **Modelo:** reptador mutante en versión robot con 6 patas mecánicas de araña y un cañón en el lomo.
- **Colores:** gris metal y negro; luces en Neon rojo.
- **Efectos:** chispas, humo y el cañón que parpadea.

**190. Mecha Cocodonte** — 💰 680M $/s
- **Modelo:** cocodrilo robot con mandíbulas de sierra que se abren y se cierran y un tanque en la espalda.
- **Colores:** verde militar y plateado; dientes de sierra plateados.
- **Efectos:** chispas de la sierra y humo.

**191. Mecha Krakenoide** — 💰 1B $/s
- **Modelo:** krakenoide robot con tentáculos de cables y garras mecánicas, y cabeza de mosasaurio de acero.
- **Colores:** plateado y morado; cables negros; ojos en Neon morado.
- **Efectos:** rayos eléctricos entre los tentáculos y chispas.

**192. Mecha Escamaterror** — 💰 4B $/s
- **Modelo:** el Escamaterror en versión robot de guerra: escamas de acero, alas de reactor y un láser en la boca.
- **Colores:** negro y plateado; detalles en Neon verde; reactores con fuego azul.
- **Efectos:** reactores encendidos, láser que se carga, chispas y humo.

## Evento — especial (6)

> Solo se consiguen en eventos especiales. Todos son **dragosaurios** (dragón + dinosaurio).

**193. Dragosaurio Aurora Bebé** — 💰 5M $/s
- **Modelo:** dragón-dinosaurio bebé con alas pequeñas y cola esponjosa; a su alrededor ondula una aurora boreal.
- **Colores:** blanco y azul hielo; aurora verde, rosa y morada en Neon semitransparente.
- **Efectos:** cortinas de aurora boreal, copos de nieve y destellos.

**194. Dragosaurio Sombra** — 💰 25M $/s
- **Modelo:** dragón-raptor hecho de sombra, con los bordes deshaciéndose en humo negro y ojos brillantes.
- **Colores:** negro humo; ojos en Neon morado.
- **Efectos:** humo negro, sombras que se mueven y destellos morados.

**195. Dragosaurio Chamuscado** — 💰 35M $/s
- **Modelo:** dragón-dinosaurio con las escamas quemadas, humeando y con brasas en las grietas.
- **Colores:** negro y gris carbón; brasas en Neon naranja.
- **Efectos:** humo, brasas y ceniza.

**196. Dragosaurio Taladro** — 💰 100M $/s
- **Modelo:** dragón-dinosaurio con un TALADRO gigante en el hocico y garras de pico de minero, saliendo de un agujero en el suelo.
- **Colores:** amarillo minero y negro; taladro plateado; casco de minero con luz.
- **Efectos:** el taladro gira, rocas que saltan y polvo.

**197. Dragosaurio del Vacío** — 💰 120M $/s
- **Modelo:** dragón-dinosaurio con agujeros en el cuerpo por los que se ve el espacio y alas de vacío.
- **Colores:** negro espacial con estrellas; bordes en Neon morado.
- **Efectos:** estrellas, portales pequeños y destellos.

**198. Dragosaurio Ascua** — 💰 600M $/s
- **Modelo:** dragón-dinosaurio GIGANTE de fuego con las alas abiertas, la cola de lava y una corona de llamas.
- **Colores:** rojo y naranja; fuego en Neon amarillo; cola de lava.
- **Efectos:** fuego enorme, brasas, explosiones pequeñas y luz roja.

---

*Lista creada el 2026-10-18 a partir de los datos de «Roba un huevo» (rblxguide.com) y de información de dinosaurios reales (Safari Ltd, A-Z Animals y otras fuentes). Los bichos marcados como «inventado» no existieron de verdad.*

# Las 30 palas

> Diseño de las 30 palas para el gran cambio (carril de 15 parcelas, fósiles y bichos dinosaurio). Va junto a [`PARCELAS_Y_FOSILES.md`](PARCELAS_Y_FOSILES.md) y [`BICHOS_DINOSAURIOS.md`](BICHOS_DINOSAURIOS.md), con el mismo estilo: bloques con textura de studs, cartoon y cada vez más épicas.

## Reglas

- **Palas impares (1, 3, 5… 29): abren parcela.** La pala 2N−1 es la que hace falta para cavar en la parcela N. Su diseño es el de esa parcela.
- **Palas pares (2, 4… 30): mejora dentro de la parcela.** No abren parcela nueva, pero cavan más rápido, más ancho y pegan más fuerte. La pala 30 es la mejor del juego.
- **Rarezas:** las mismas que los bichos, 3 palas por rareza: Común (1-3), Poco común (4-6), Raro (7-9), Épico (10-12), Legendario (13-15), Mítico (16-18), Cósmico (19-21), Secreto (22-24), Eterno (25-27) y Divino (28-30). Sustituyen a las 5 rarezas que tienen ahora las palas (Común, Raro, Épico, Legendario y Mítico).
- **Daño:** es el golpe a otros jugadores. Pegar a quien lleva un fósil hace que lo suelte, así que una pala mejor también sirve para robar y defenderse.
- **Números:** precio, radio de cavado, tiempo entre paladas y daño son **los actuales del juego** (`Config.SHOVELS` y `Config.shovelDamage`). Habrá que revisar los precios cuando cambie la economía con los fósiles y los bichos.

### Estilo de las palas (para modelarlas)

- Se construyen con piezas sencillas y textura de studs (`rbxassetid://6348166067`) en mango y hoja. `Neon` solo en lo que brilla.
- **Todas tienen el mismo largo** (escala `ShovelLook.SCALE` = 0,72) para que no atraviesen el suelo al cavar. La epicidad sube con los **adornos, las piezas, el brillo y las partículas**, no con el tamaño.
- Partes: **mango** (largo), **empuñadura** (arriba), **cuello** (une mango y hoja), **hoja** (la parte que cava) y **adornos** (piezas que flotan u orbitan; las anima `ShovelFx` con la etiqueta `ShovelSpin`).

| Rareza | Piezas | Partículas y efectos |
|---|---|---|
| Común | 6-10 | Ninguno |
| Poco común | 10-15 | 1 emisor suave |
| Raro | 15-20 | 1-2 emisores |
| Épico | 20-30 | 2-3 emisores + luz |
| Legendario | 30-40 | 3-4 emisores + luz + estela al dar una palada |
| Mítico | 40-55 | 4-5 emisores + 1 pieza flotante + estela |
| Cósmico | 55-70 | 5-6 emisores + 2-3 piezas en órbita + estela de estrellas |
| Secreto | 65-80 | 6-7 emisores + piezas en órbita + contorno oscuro |
| Eterno | 75-95 | 7-9 emisores + anillos de energía + onda al cavar |
| Divino | 90-120 | 9-12 emisores + halo + anillos + columna de luz al cavar + destello arcoíris |

## Resumen

| # | Pala | Rareza | Parcela | Papel | Precio | Radio | Ritmo (s) | Daño |
|---|---|---|---|---|---|---|---|---|
| 1 | Pala de Rama de Helecho | Común | 1 | abre la 1 | 0 | 4,50 | 0,900 | 10 |
| 2 | Pala de Hueso de Dodo | Común | 1 | mejora | 2.200 | 4,65 | 0,883 | 11 |
| 3 | Pala de Junco del Pantano | Común | 2 | abre la 2 | 3.600 | 4,80 | 0,867 | 12 |
| 4 | Pala de Caparazón | Poco común | 2 | mejora | 5.500 | 4,95 | 0,850 | 14 |
| 5 | Pala de Amonites | Poco común | 3 | abre la 3 | 10K | 5,10 | 0,834 | 15 |
| 6 | Pala de Ámbar | Poco común | 3 | mejora | 18K | 5,25 | 0,817 | 17 |
| 7 | Pala de Arenisca Roja | Raro | 4 | abre la 4 | 31K | 5,40 | 0,801 | 19 |
| 8 | Pala de Cuerno de Triceratops | Raro | 4 | mejora | 52K | 5,55 | 0,784 | 21 |
| 9 | Pala de Liana y Colmillo | Raro | 5 | abre la 5 | 87K | 5,70 | 0,768 | 23 |
| 10 | Pala de Garra de Raptor | Épico | 5 | mejora | 140K | 5,85 | 0,751 | 26 |
| 11 | Pala de Colmillo de Mamut | Épico | 6 | abre la 6 | 240K | 6,00 | 0,734 | 28 |
| 12 | Pala de Hielo Glacial | Épico | 6 | mejora | 400K | 6,15 | 0,718 | 32 |
| 13 | Pala de Obsidiana | Legendario | 7 | abre la 7 | 650K | 6,30 | 0,701 | 35 |
| 14 | Pala de Magma | Legendario | 7 | mejora | 1M | 6,45 | 0,685 | 39 |
| 15 | Pala de Coral Abisal | Legendario | 8 | abre la 8 | 1,7M | 6,60 | 0,668 | 43 |
| 16 | Pala de Diente de Megalodón | Mítico | 8 | mejora | 2,8M | 6,75 | 0,652 | 48 |
| 17 | Pala de Costilla de Gigante | Mítico | 9 | abre la 9 | 4,6M | 6,90 | 0,635 | 53 |
| 18 | Pala del Sepulturero | Mítico | 9 | mejora | 7,5M | 7,05 | 0,619 | 59 |
| 19 | Pala de Cuarzo | Cósmico | 10 | abre la 10 | 12M | 7,20 | 0,602 | 65 |
| 20 | Pala de Geoda Arcoíris | Cósmico | 10 | mejora | 19M | 7,35 | 0,586 | 73 |
| 21 | Pala Rúnica del Templo | Cósmico | 11 | abre la 11 | 31M | 7,50 | 0,569 | 81 |
| 22 | Pala del Guardián Rex | Secreto | 11 | mejora | 50M | 7,65 | 0,552 | 89 |
| 23 | Pala de Pluma de Quetzal | Secreto | 12 | abre la 12 | 81M | 7,80 | 0,536 | 99 |
| 24 | Pala de la Tormenta | Secreto | 12 | mejora | 120M | 7,95 | 0,519 | 110 |
| 25 | Pala Fracturada | Eterno | 13 | abre la 13 | 200M | 8,10 | 0,503 | 122 |
| 26 | Pala del Vacío | Eterno | 13 | mejora | 330M | 8,25 | 0,486 | 136 |
| 27 | Pala de Meteorito | Eterno | 14 | abre la 14 | 520M | 8,40 | 0,470 | 151 |
| 28 | Pala Galáctica | Divino | 14 | mejora | 850M | 8,55 | 0,453 | 167 |
| 29 | Pala del Rey Galáctico | Divino | 15 | abre la 15 | 1,3B | 8,70 | 0,437 | 186 |
| 30 | Pala Divina del Diamante | Divino | 15 | la mejor | 2,1B | 8,85 | 0,420 | 206 |

---

## Fichas

### Común

**1. Pala de Rama de Helecho** · parcela 1 (abre)
- **Modelo:** la pala de principiante: un palo de madera torcido como mango, atado con una cuerda a una hoja de piedra plana. Un helecho pequeño enrollado en el mango.
- **Colores:** mango marrón claro; cuerda beige; hoja gris piedra; helecho verde.
- **Efectos:** ninguno.

**2. Pala de Hueso de Dodo** · parcela 1 (mejora)
- **Modelo:** mango de hueso largo con la empuñadura en forma de cráneo de Dodo (con su pico ganchudo) y hoja de piedra mejor tallada.
- **Colores:** hueso blanco crema; pico amarillo; hoja gris.
- **Efectos:** ninguno.

**3. Pala de Junco del Pantano** · parcela 2 (abre)
- **Modelo:** mango de juncos trenzados, hoja con forma de hoja de nenúfar endurecida y una ranita de barro en el cuello.
- **Colores:** juncos verde oliva; hoja verde agua; rana verde lima.
- **Efectos:** ninguno.

### Poco común

**4. Pala de Caparazón** · parcela 2 (mejora)
- **Modelo:** hoja hecha con el caparazón de una tortuga prehistórica (placas en relieve) y mango de madera de pantano.
- **Colores:** caparazón verde y marrón; mango marrón oscuro.
- **Efectos:** 1 emisor de gotitas de barro (ritmo 3).

**5. Pala de Amonites** · parcela 3 (abre)
- **Modelo:** la hoja es media concha de amonites en espiral y el mango es de madera de deriva con conchitas pegadas.
- **Colores:** concha crema y marrón; mango beige claro; conchitas rosa.
- **Efectos:** 1 emisor de brillos dorados de arena (ritmo 3).

**6. Pala de Ámbar** · parcela 3 (mejora)
- **Modelo:** hoja de ámbar translúcido con un mosquito atrapado dentro y mango de madera pulida con anillos de oro.
- **Colores:** ámbar Neon naranja translúcido; mosquito negro; mango marrón; anillos dorados.
- **Efectos:** 1 emisor de destellos naranjas (ritmo 4).

### Raro

**7. Pala de Arenisca Roja** · parcela 4 (abre)
- **Modelo:** hoja de arenisca en capas rojas y naranjas, como la pared del cañón, con una huella de dinosaurio grabada, y mango de cactus seco.
- **Colores:** rojo, naranja y arena; mango verde grisáceo.
- **Efectos:** 1 emisor de arena (ritmo 6).

**8. Pala de Cuerno de Triceratops** · parcela 4 (mejora)
- **Modelo:** la hoja es la gola de un triceratops con sus dos cuernos largos como puntas de la pala. Mango de hueso con vendas de cuero.
- **Colores:** gola azul real con rombos amarillos; cuernos marfil; mango hueso; vendas marrón.
- **Efectos:** 2 emisores: polvo (ritmo 6) y destellos azules (ritmo 4).

**9. Pala de Liana y Colmillo** · parcela 5 (abre)
- **Modelo:** mango de rama de selva envuelto en lianas con flores y hoja hecha de un colmillo gigante de dinosaurio.
- **Colores:** mango marrón; lianas verde intenso; flores rosa y naranja; colmillo blanco.
- **Efectos:** 2 emisores: hojas (ritmo 6) y pétalos (ritmo 4).

### Épico

**10. Pala de Garra de Raptor** · parcela 5 (mejora)
- **Modelo:** la hoja es una garra de hoz de raptor enorme y curva, el mango tiene plumas atadas y la empuñadura es una garra cerrada.
- **Colores:** garra negra con filo rojo; plumas marrón dorado con rayas negras; mango gris.
- **Efectos:** 2 emisores (plumas y zarpazos rojos al cavar) y luz roja suave.

**11. Pala de Colmillo de Mamut** · parcela 6 (abre)
- **Modelo:** mango de colmillo de mamut curvado y hoja de hueso ancho con pelo lanudo en el cuello.
- **Colores:** colmillo marfil; pelo marrón rojizo; hoja blanco hueso con escarcha azul.
- **Efectos:** 3 emisores (copos de nieve, vaho y escarcha) y luz azul.

**12. Pala de Hielo Glacial** · parcela 6 (mejora)
- **Modelo:** pala entera de hielo glacial, con carámbanos colgando de la hoja y un mamut diminuto congelado dentro del mango.
- **Colores:** hielo azul claro semitransparente con interior en Neon blanco.
- **Efectos:** 3 emisores (ventisca pequeña, escarcha y destellos) y luz blanca azulada.

### Legendario

**13. Pala de Obsidiana** · parcela 7 (abre)
- **Modelo:** hoja de obsidiana negra afilada con grietas de lava, mango de basalto y una garra de espinosaurio de obsidiana en el cuello.
- **Colores:** negro brillante; grietas en Neon naranja; mango gris oscuro.
- **Efectos:** 3 emisores (brasas, humo y chispas), luz naranja y estela de fuego al cavar.

**14. Pala de Magma** · parcela 7 (mejora)
- **Modelo:** hoja de magma líquido contenida en un marco de roca, con lava goteando, y mango de roca volcánica con anillos de oro fundido.
- **Colores:** lava en Neon naranja y amarillo; roca negra; anillos dorados.
- **Efectos:** 4 emisores (gotas de lava, brasas, humo y calor), luz roja y estela de lava.

**15. Pala de Coral Abisal** · parcela 8 (abre)
- **Modelo:** hoja de coral ramificado, mango de hueso de mosasaurio y una perla gigante en la empuñadura.
- **Colores:** coral rosa y rojo; hueso blanco; perla blanca con brillo azul.
- **Efectos:** 3 emisores (burbujas, destellos y gotas), luz azul y estela de burbujas.

### Mítico

**16. Pala de Diente de Megalodón** · parcela 8 (mejora)
- **Modelo:** la hoja es un diente de megalodón gigante y aserrado, el mango es una espina de tiburón con aletas y alrededor nada un pez pequeño.
- **Colores:** diente blanco con raíz gris; mango gris azulado; pez naranja.
- **Efectos:** 4 emisores (burbujas, agua, destellos y espuma), el pez en órbita y estela de agua.

**17. Pala de Costilla de Gigante** · parcela 9 (abre)
- **Modelo:** mango de costilla colosal, hoja de omóplato de saurópodo y una calavera pequeña de raptor en la empuñadura con ojos verdes.
- **Colores:** huesos blancos; ojos en Neon verde.
- **Efectos:** 4 emisores (polvo de hueso, niebla, fuego verde y cuervitos), una calavera pequeña flotando y estela verde.

**18. Pala del Sepulturero** · parcela 9 (mejora)
- **Modelo:** pala de sepulturero con hoja de hierro negro, farol colgando del cuello con fuego verde y cadenas en el mango.
- **Colores:** hierro negro; fuego en Neon verde; cadenas gris; mango de madera oscura.
- **Efectos:** 5 emisores (fuego verde, almas, niebla, ceniza y chispas), el farol balanceándose y estela fantasma.

### Cósmico

**19. Pala de Cuarzo** · parcela 10 (abre)
- **Modelo:** hoja de un racimo de cristales de cuarzo rosa y cian, mango de piedra de cueva con setas luminosas.
- **Colores:** cristales en Neon rosa y cian; mango morado oscuro; setas azul brillante.
- **Efectos:** 5 emisores (destellos, polvo brillante, esporas, luz pulsante y fragmentos), 2 cristales en órbita y estela brillante.

**20. Pala de Geoda Arcoíris** · parcela 10 (mejora)
- **Modelo:** hoja hecha de una geoda partida con cristales arcoíris dentro y mango de cristal con un dinosaurio fosilizado dentro.
- **Colores:** cristales de todos los colores en Neon; geoda gris por fuera.
- **Efectos:** 6 emisores (destellos arcoíris, polvo, rayos de luz, fragmentos, estrellas y brillo), 3 cristales en órbita y estela arcoíris.

**21. Pala Rúnica del Templo** · parcela 11 (abre)
- **Modelo:** pala ceremonial de piedra beige con runas doradas grabadas, una cabeza de Rex esculpida en la empuñadura y un disco solar detrás de la hoja.
- **Colores:** piedra beige; runas en Neon dorado; disco dorado.
- **Efectos:** 5 emisores (polvo dorado, runas flotantes, destellos, fuego de brasero y hojas), 3 runas en órbita y estela dorada.

### Secreto

**22. Pala del Guardián Rex** · parcela 11 (mejora)
- **Modelo:** arma del guardián del templo: la hoja es la cabeza de un T-Rex de oro con la boca abierta, el mango es de oro con gemas y en el cuello lleva una melena de plumas rojas.
- **Colores:** oro; gemas rojas; ojos en Neon rojo; plumas rojas.
- **Efectos:** 6 emisores (destellos, rugido al cavar, polvo dorado, chispas, fuego y monedas), gemas en órbita y contorno oscuro.

**23. Pala de Pluma de Quetzal** · parcela 12 (abre)
- **Modelo:** hoja con forma de ala de quetzalcoatlus con plumas de colores en capas, mango de nube condensada y una pluma gigante en la empuñadura.
- **Colores:** plumas blanco, rojo y amarillo; mango blanco nube; pluma dorada.
- **Efectos:** 6 emisores (plumas, nubecitas, viento, destellos, rayos de sol y arcoíris), plumas en órbita, contorno y estela de viento.

**24. Pala de la Tormenta** · parcela 12 (mejora)
- **Modelo:** hoja de nube de tormenta oscura con rayos saliendo de ella, mango de pararrayos plateado y un pterosaurio de rayo en miniatura dando vueltas.
- **Colores:** nube gris oscuro; rayos en Neon amarillo y azul; mango plateado.
- **Efectos:** 7 emisores (rayos, lluvia, chispas, nube, destellos, viento y truenos), pterosaurio en órbita, contorno y rayo al cavar.

### Eterno

**25. Pala Fracturada** · parcela 13 (abre)
- **Modelo:** pala rota en fragmentos que flotan separados (mango, cuello y hoja), unidos por energía morada. Parece que se recompone en cada palada.
- **Colores:** fragmentos de piedra negra; energía en Neon morado y rosa.
- **Efectos:** 7 emisores (chispas, fragmentos, distorsión, rayos entre trozos, destellos, humo y estrellas), 2 anillos de energía y onda al cavar.

**26. Pala del Vacío** · parcela 13 (mejora)
- **Modelo:** la hoja es un portal al vacío (un agujero con estrellas dentro) rodeado de un marco de obsidiana, y el mango tiene ojos que se abren.
- **Colores:** marco negro con bordes en Neon morado; portal con textura de espacio; ojos amarillos.
- **Efectos:** 8 emisores (partículas absorbidas por el portal, estrellas, niebla, chispas moradas, relámpagos, destellos, ojos y polvo cósmico), 2 anillos y onda.

**27. Pala de Meteorito** · parcela 14 (abre)
- **Modelo:** hoja de meteorito incandescente con cráteres, mango de metal estelar y tres asteroides pequeños en órbita.
- **Colores:** roca marrón oscuro con grietas en Neon naranja; metal plateado azulado.
- **Efectos:** 8 emisores (fuego de entrada en la atmósfera, humo, chispas, estrellas, polvo cósmico, cometas, brasas y destellos), asteroides en órbita, 2 anillos y onda.

### Divino

**28. Pala Galáctica** · parcela 14 (mejora)
- **Modelo:** pala con la hoja hecha de una galaxia en espiral girando, mango de cristal con nebulosas dentro, planetas en órbita y un halo de estrellas.
- **Colores:** galaxia morada, azul y rosa; mango cristal; planetas de colores.
- **Efectos:** 10 emisores (estrellas, nebulosa, cometas, polvo arcoíris, destellos, planetas, rayos, auroras, chispas y supernovas), halo, 3 anillos y columna de luz al cavar.

**29. Pala del Rey Galáctico** · parcela 15 (abre)
- **Modelo:** la pala del T-Rex Galáctico: hoja con forma de cráneo de T-Rex de oro y cristal con la boca abierta, mango de oro con constelaciones, corona de planetas en la empuñadura y capa de estrellas colgando del cuello.
- **Colores:** oro y cristal; constelaciones en Neon blanco; ojos en Neon amarillo.
- **Efectos:** 11 emisores (estrellas, polvo dorado, arcoíris, rayos, nebulosa, cometas, rugido al cavar, planetas, destellos, chispas y ondas), halo, 3 anillos, columna de luz y destello arcoíris al cavar.

**30. Pala Divina del Diamante** · parcela 15 (la mejor del juego)
- **Modelo:** la pala definitiva: hoja de diamante puro facetado y gigante (con el diamante del evento en miniatura brillando dentro), mango de oro y cristal con alas de luz en el cuello, empuñadura con forma de corona y un T-Rex Galáctico diminuto orbitando.
- **Colores:** diamante blanco azulado en Neon; oro; alas de luz blancas; arcoíris en los reflejos.
- **Efectos:** 12 emisores (polvo de diamante, arcoíris, estrellas, plumas de luz, rayos, destellos, nebulosa, cometas, chispas doradas, ondas, supernovas y brillo), halo doble, 4 anillos, columna de luz, destello arcoíris y onda de choque en cada palada.

*Documento creado el 2026-10-18.*

# Registro de cambios

> El más nuevo arriba. Formato en [`CLAUDE.md`](CLAUDE.md).

## 2026-10-20 · bbogatell (Claude) · Bicho 8 · Leaelly Polar hecho a mano

- **Qué:** modelo hecho a mano del bicho 8 (Leaelly Polar, Poco común, 4,3 studs, 96 piezas), fiel a su hoja de ChatGPT. Es un bípedo erguido blanco nieve con manchas y rayas grises en el lomo, ojos azules enormes, orejeras rosa con diadema, una bufanda de anillos blancos y azul hielo enrollada al cuello y una cola larguísima de anillos que se enrosca hacia arriba al final. Las garras son grises y lleva puños azules en los tobillos. Le caen copos de nieve encima (ritmo 4, textura de copo `rbxassetid://1190797289`). Tirita de frío y echa vaho por la boca, mueve la cola y pasea por la base. Sin sonidos.
- **Dónde:** `ServerStorage.CreatureBuilders.LeaellyPolar` → `ServerStorage.Models.Bichos["8"]`. `ReplicatedStorage.CreatureRigs` (Generic): nuevo atributo `Shiver` y emisor `Breath` para tiritar y echar vaho. Docs: `GUIA_BICHOS.md` (también la nota de medir la altura antes de añadir piezas invisibles de efectos), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play, con `/bicho 8 base` + `/abrir`: tirita, pasea 2 studs y salen la nieve y el vaho. Sin errores en la consola.
- **Notas:** el siguiente es el 9 (Dimorfo Bocazas, Raro, 4,8 studs).

## 2026-10-20 · bbogatell (Claude) · Bicho 7 · Ovi Ladrón hecho a mano

- **Qué:** modelo hecho a mano del bicho 7 (Ovi Ladrón, Poco común, 4,6 studs, 117 piezas), fiel a su hoja de ChatGPT. Es un oviraptor naranja de bloques inclinado hacia delante, con cuello largo, ojos enfadados, pico amarillo curvo y una cresta roja alta en media luna. Abraza con los brazos un huevo blanco con motas azules y cara de pillo. Los brazos llevan alas de plumas amarillas con la punta negra, la cola acaba en un abanico de plumas y las patas tienen garras gris oscuro. Destellos blancos alrededor del huevo (ritmo 2). Mira a los lados escondiendo el huevo, mueve la cola y pasea por la base. Sin sonidos.
- **Dónde:** `ServerStorage.CreatureBuilders.OviLadron` → `ServerStorage.Models.Bichos["7"]`. `ReplicatedStorage.CreatureRigs` (Generic): nuevo atributo `Sneak` y rol `Hug` para la mirada pilla. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play, con `/bicho 7 base` + `/abrir`: la cabeza gira 0,62 rad y el huevo 0,29 rad hacia el otro lado, pasea 1,5 studs y hay destellos. Sin errores en la consola.
- **Notas:** el siguiente es el 8 (Leaelly Polar, 4,3 studs).

## 2026-10-20 · bbogatell (Claude) · Altura propia para cada bicho

- **Qué:** las 198 fichas tienen ahora una línea `- **Altura:** N studs` con su altura exacta, elegida según la especie, la forma (bebés y bichos bajos y anchos más bajos; cuellos largos, crestas y alas más altos) y el valor dentro de su rareza. Casi todas caen en el rango de la tabla «Escalada por rareza» y como mucho se salen un poco. Los bichos ya hechos (1-6 y 191) mantienen la altura con la que se construyeron, y los especiales (175-198) la que ya ponía su ficha.
- **Dónde:** `docs/BICHOS_DINOSAURIOS.md` (fichas y nota en la tabla de rarezas), `docs/GUIA_BICHOS.md` (usar la altura de la ficha al escalar y en el prompt de ChatGPT).
- **Probado:** comprobado que las 198 fichas tienen su línea de altura.
- **Notas:** el siguiente bicho por hacer es el 7 (Ovi Ladrón, 4,6 studs).

## 2026-10-20 · bbogatell (Claude) · Bicho 6 · Micro Raptor hecho a mano

- **Qué:** modelo hecho a mano del bicho 6 (Micro Raptor, Poco común), fiel a la hoja de referencia: raptor negro inclinado hacia delante, ojo amarillo enfadado, cresta de 3 plumas, 4 alas (brazos y patas emplumadas) con puntas azul eléctrico, cola larga con abanico de plumas y garras grises. Destellos azules en las puntas de las alas (rate 3 en total). Bate las alas suavemente, mueve cabeza y cola y pasea por la base. Sin sonidos.
- **Dónde:** `ServerStorage.CreatureBuilders.MicroRaptor` → `ServerStorage.Models.Bichos["6"]` (98 piezas, 4,5 studs). `ReplicatedStorage.CreatureRigs` (Generic): nuevos atributos `WingFlap` y `WingSpeed` para controlar el aleteo. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play, con `/bicho 6 base` + `/abrir`: pasea (1,7 studs en 10 s), las alas se mueven y hay destellos. No sale ningún error de `CreatureAnim` en la consola.
- **Notas:** el siguiente es el 7.

## 2026-10-20 · bbogatell (Claude) · Bicho 5 · Hipsi Velocín hecho a mano
**Qué:** quinto bicho de la lista, copiado de su ficha visual de ChatGPT (comparando las vistas 3/4 y lateral).
- **Hipsi Velocín** (Común, chibi, 3,8 studs, 61 piezas, sin partículas):
  - corredor de pie, de ladrillos verde hoja;
  - cabeza grande de bloques con studs encima y hocico ancho;
  - ojos enormes en las esquinas de la cara;
  - **cinta roja** en la frente con nudo y dos tiras detrás;
  - barriga blanca y lunares verde oscuro;
  - bracitos hacia delante, piernas largas con deditos y cola recta y larga.
- **Animaciones:** respira, parpadea, balancea la cola, mira alrededor y camina. Su animación propia son los **estiramientos de corredor**: cada 7-12 s abre las piernas, se inclina hacia delante desde las caderas y aguanta la postura.
- **Rig genérico:** nuevos atributos `Stretch` + `BodyPivot`.

**Dónde:** `ServerStorage.CreatureBuilders.HipsiVelocin`, `ServerStorage.Models.Bichos["5"]` y `ReplicatedStorage.CreatureRigs` (Generic: `Stretch`).

**Probado:** en Play, con `/bicho 5 base` + `/abrir`: se pasea y se estira (la cabeza baja al inclinarse). Sin errores.

## 2026-10-20 · bbogatell (Claude) · Bicho 4 · Loro-saurio hecho a mano
**Qué:** cuarto bicho de la lista, copiado lo más fiel posible de su ficha visual de ChatGPT (comparando frente, lado y 3/4).
- **Loro-saurio** (Común, chibi, 3,6 studs, 68 piezas, sin partículas). Muy de bloques, como en la imagen:
  - cabeza cúbica verde oliva más grande que el cuerpo, con studs redondos encima;
  - ojos grandes a los lados con borde negro;
  - pico de loro naranja cuadrado con gancho hacia abajo y raja;
  - 2 pinchos amarillos en cada mejilla;
  - cuerpo de ladrillo con bultos de studs a los lados y barriga clara;
  - 4 patas cortas con pies gris oscuro;
  - abanico de 7 varillas rojizas en la cola, abierto como un pavo real.
- **Animaciones:** respira, parpadea, balancea la cola, mira alrededor y camina con 4 patas. Su animación propia es **masticar**: cada pocos segundos aparece una hojita verde en el pico y mueve la mandíbula unos 2,5 s.
- **Rig genérico:** nuevo atributo `Chew` y papel `Snack` (piezas que solo se ven mientras mastica).
- **`GUIA_BICHOS.md`:** cómo ver la imagen de ChatGPT en grande para copiarla bien, y `Chew`/`Snack`.

**Dónde:** `ServerStorage.CreatureBuilders.LoroSaurio`, `ServerStorage.Models.Bichos["4"]` y `ReplicatedStorage.CreatureRigs` (Generic: `Chew`/`Snack`).

**Probado:** en Play, con `/bicho 4 base` + `/abrir`: mastica (aparece la hoja y se mueve la mandíbula) y se pasea. Sin errores.

## 2026-10-20 · bbogatell (Claude) · Guía para hacer los bichos
**Qué:** nueva `docs/GUIA_BICHOS.md` con todo el proceso para que otro Claude siga haciendo los bichos igual: ficha visual en ChatGPT (cuenta, prompt, límite de imágenes), constructor con `CreatureBuilders.Kit` y convenciones, rig `Generic` (roles y atributos), rigs propios, caminar, partículas y texturas que funcionan, cómo probarlo con `/bicho N base` + `/abrir`, y cómo registrarlo. El siguiente bicho es el 4.

## 2026-10-20 · bbogatell (Claude) · Bicho 3 · Proto Bebé hecho a mano
**Qué:** tercer bicho de la lista, con su ficha visual de ChatGPT.
- **Proto Bebé** (Común, chibi de bebé, 3,4 studs, 41 piezas, sin partículas):
  - cuadrúpedo rechoncho color arena con studs;
  - gola corta y redonda marrón claro con 3 lunares oscuros;
  - pico de loro gris con punta ganchuda y un bultito en la nariz;
  - ojos grandes y mofletes;
  - cola corta;
  - cáscara de huevo blanca con el borde roto de gorrito.
- **Animaciones:** respira, parpadea, balancea la cola, mira alrededor y camina con sus 4 patas (en diagonal). Su animación propia es el **bostezo**: cada 6-12 s abre el pico, cierra los ojos y echa la cabeza un poco atrás.
- **Rig genérico:** papel `Jaw` (se abre alrededor de `JawPivot` con el atributo `Yawn`) y marcha de 4 patas (las patas en diagonal comparten `Side`).

**Dónde:** `ServerStorage.CreatureBuilders.ProtoBebe`, `ServerStorage.Models.Bichos["3"]` y `ReplicatedStorage.CreatureRigs` (Generic: `Jaw`/`Yawn`).

**Probado:** en Play, con `/bicho 3 base` + `/abrir`: bosteza (abre el pico y cierra los ojos) y se pasea. Sin errores.

## 2026-10-20 · bbogatell (Claude) · Bicho 2 · Compi hecho a mano
**Qué:** segundo bicho de la lista, con su ficha visual de ChatGPT.
- **Compi** (Común, chibi, 3,6 studs, 49 piezas, sin partículas):
  - bípedo pequeñito inclinado hacia delante, verde lima con studs;
  - cabeza grande y redonda con ojos grandes de cartoon, mofletes y 4 dientecitos;
  - barriga amarillo crema y rayas verde oscuro en la cabeza, el lomo y la cola;
  - bracitos de 2 dedos y cola larga de 4 segmentos.
- **Animaciones:** respira, parpadea, balancea la cola, mira alrededor y camina por la base con pasitos rápidos. Su animación propia son los **saltitos nerviosos**: cada pocos segundos, cuando está quieto, da 2-3 saltitos.
- **Rig genérico:** nuevo atributo `Hop` (altura de los saltitos) para los bichos que saltan.

**Dónde:** `ServerStorage.CreatureBuilders.Compi`, `ServerStorage.Models.Bichos["2"]` y `ReplicatedStorage.CreatureRigs` (Generic: `Hop`).

**Probado:** en Play, `/bicho 2 base` + `/abrir`: sale en la base, se pasea y salta (los pies suben 0,3 studs). Sin errores.

## 2026-10-20 · bbogatell (Claude) · Los bichos se pasean por la base (animación de caminar)
**Qué** (lo pidió bbogatell):
- Los bichos hechos a mano se pasean por la base: de vez en cuando caminan despacio a un punto cercano dentro de un círculo pequeño alrededor de donde se dejaron (2,5-7 studs según su tamaño), se giran hacia donde van y se paran unos segundos. Solo en las bases, no en las vistas previas.
- **Dodo Corriente:** animación de caminar con pasitos rápidos de sus patas cortas (las patas se balancean alternas), y el cuerpo gordo sube y baja y se bambolea de lado.
- **Mecha Krakenoide:** no tiene patas, así que se desliza y los tentáculos ondean más rápido mientras avanza.
- **Documento:** los bichos no tenían animación de caminar. Añadida a la guía común de `BICHOS_DINOSAURIOS.md` para todos, con cómo hacerlo según el tipo (con patas, voladores o sin patas) y cómo marcar las patas al modelar.

**Cómo:** lo hace cada cliente en `StarterPlayerScripts.CreatureAnim` (estado `wander`: mueve la Root del modelo y el resto la sigue). El rig `Generic` de `CreatureRigs` tiene el papel `Leg` (atributos `Side` y `LegPivot`) y la marcha (`StepRate` y `Waddle`). El letrero y el aviso de vender van con el bicho.

**Probado:** en Play, en 10 s el Krakenoide se movió 8 studs y el Dodo se desplazó moviendo las patas. Sin errores.

**Nota:** cada jugador ve el paseo calculado en su propio ordenador, así que dos jugadores pueden ver al mismo bicho en sitios algo distintos de su círculo (es decorativo).

## 2026-10-20 · bbogatell (Claude) · Bicho 1 · Dodo Corriente hecho a mano + rig genérico
**Qué:** primer bicho de la lista hecho con el proceso nuevo (ficha visual de ChatGPT → modelo → animación).
- **Dodo Corriente** (Común, chibi, 3,8 studs, 32 piezas, sin partículas):
  - cuerpo gris azulado muy gordo con studs y barriga más clara;
  - patitas naranjas cortas;
  - pico enorme y curvo amarillo pálido con la punta ganchuda marrón;
  - ojos de despistado, uno más grande que el otro;
  - alitas con la punta blanca;
  - penacho de 3 plumas blancas en la cola.
- **Animación:** respira (1 → 1,03 en 2 s), parpadea cada 3-5 s, balancea la cola, tuerce la cabeza a los lados de vez en cuando, mueve las alitas y mira un poco alrededor.
- **Rig genérico nuevo** (`ReplicatedStorage.CreatureRigs.Generic`) para los bichos sencillos. Las piezas se marcan con `Role` (Head, Eye, Tail, Wing) y el modelo lleva `HeadPivot`, `TailPivot`, `TailSway` y `HeadTilt`.
- **Kit** para los constructores (`ServerStorage.CreatureBuilders.Kit`: `Kit.new(id)` y `Kit.finish(m, rig)`), para que cada bicho nuevo sea solo su forma.

**Dónde:**
- `ServerStorage.CreatureBuilders.DodoCorriente` y `Kit`.
- `ServerStorage.Models.Bichos["1"]`.
- `ReplicatedStorage.CreatureRigs`.
- El proceso está apuntado en `BICHOS_DINOSAURIOS.md`.

**Probado:** en Play, `/bicho 1 base` + `/abrir`: el Dodo sale en la base con su letrero «COMÚN» y la cabeza animada. Sin errores.

## 2026-10-20 · bbogatell (Claude) · Nombre de bichos y fósiles en el color de su rareza
**Qué** (lo pidió bbogatell): el letrero de encima de cada bicho y cada fósil tiene ahora:
- el **nombre en el color de su rareza**;
- una **etiqueta con la rareza** (p. ej. «MUTANTE», «LEGENDARIO II», «★ ÉPICO») en una píldora de ese color;
- en los bichos, debajo, lo que generan en verde («+1.0B 💰/s»).

La cuenta atrás de los fósiles se ha subido un poco para no pisar el letrero.

**Dónde:** `DiamondServer.Looks` (`label`) y `StarterPlayerScripts.BaseFx` (altura de la cuenta atrás).

**Probado:** en Play, el Mecha Krakenoide sale en verde con «MUTANTE» y el Huevo de Oro en dorado con «LEGENDARIO II», con la cuenta atrás encima (capturas). Sin errores.

**Nota:** hay una carpeta `ServerScriptService._tmpLooks` con una copia vieja de Looks que no he tocado. ¿Es de seguo970?

## 2026-10-20 · bbogatell (Claude) · Los bichos no llevan sonido
**Qué** (lo pidió bbogatell): quitado el zumbido del Mecha Krakenoide. Su «zumbido» queda solo como la vibración de las antenas. Regla para todos los bichos a partir de ahora: ningún sonido. Está apuntada en la guía de estilo de `BICHOS_DINOSAURIOS.md`, y por si acaso `Looks.creature` borra cualquier `Sound` que traiga un modelo de bicho.

**Dónde:** `ServerStorage.CreatureBuilders.MechaKrakenoide`, `ServerStorage.Models.Bichos["191"]` y `DiamondServer.Looks`.

## 2026-10-20 · bbogatell (Claude) · Comando /bicho para sacar un bicho concreto
**Qué:** comando de prueba `/bicho <número>` (o `/bicho <número> base`). Da un fósil de la rareza de ese bicho que, al abrirse, da justo ese bicho. Con `/abrir` sale al momento. Ejemplo: `/bicho 191 base` y luego `/abrir` = Mecha Krakenoide.

**Dónde:**
- `DiamondServer.Main`: comando `GiveCreatureFossil`.
- `Fossils.rollCreature`: respeta `entry.creature`.
- `Fossils.give`: acepta un 4.º parámetro con el bicho.
- `Bases`: el hueco guarda `cr` y `hatch` lo pasa.

**Probado:** en Play, con `/bicho 191 base` + `/abrir` y con `/bicho 191` en las manos, dejándolo en la base + `/abrir`: las dos veces sale el 191. Sin errores.

## 2026-10-20 · bbogatell (Claude) · Los bichos salen a tamaño real en la base
**Qué** (lo decidió bbogatell): en la base los bichos ya no se encogen para caber en un hueco de 9×16 studs, sino que salen a su tamaño real (la altura de su rareza o la del modelo hecho a mano). Los grandes ocupan más sitio, y no pasa nada si se montan unos encima de otros. El Mecha Krakenoide sale con sus 20 studs.

**Dónde:** `DiamondServer.Bases` (`draw`: `Looks.creature(b)` sin límites).

**Probado:** en Play, un fósil Mutante abierto con `/abrir` da un Mecha Cocodonte de 13 studs, y el Krakenoide sale de 20,6 en la base (captura). Sin errores.

**Ojo:** los Divinos genéricos miden hasta 32 studs, así que una base llena de bichos grandes estará muy apretada.

## 2026-10-20 · bbogatell (Claude) · Primer bicho hecho a mano: 191 · Mecha Krakenoide
**Qué** (lo pidió bbogatell): modelo final del bicho 191 a partir de su ficha en `BICHOS_DINOSAURIOS.md` y de una imagen de referencia de ChatGPT.
- **Modelo** (20,6 studs de alto, 293 piezas): pedestal metálico con bordes de neón, centro plateado del que salen 8 tentáculos de cable negro con anillos de neón morado y garras mecánicas de 3 dedos. Las 2 delanteras van levantadas con las garras abiertas; las otras 6 se apoyan en el suelo y levantan la punta. Tiene torso blindado con núcleo de reactor, hombreras, rejillas de escape, cuello de cable y cabeza de mosasaurio de acero con la boca abierta, dientes, ojos de neón morado, cresta y 2 antenas.
- **Partículas y efectos (12, los de la ficha):**
  1. Rayos entre tentáculos (5 Beams que parpadean y se curvan).
  2. Chispas.
  3. Humo de las rejillas.
  4. Vapor del cuello.
  5. Destellos.
  6. Luces (núcleo, ojos y pedestal).
  7. Aceite que gotea de las garras.
  8. Relámpagos (emisor y rayos en zigzag entre garras).
  9. Burbujas.
  10. Anillos (2 anillos de neón que giran).
  11. Pulsos (el núcleo late y sale una onda del pedestal cada 4 s).
  12. Zumbido eléctrico (sonido en bucle, se oye de cerca).

  Lleva además el contorno morado de los Mutantes.
- **Animación en reposo:**
  - respira (1 → 1,03 en 2 s);
  - parpadea cada 3-5 s;
  - mueve la cabeza y abre y cierra la mandíbula;
  - los tentáculos se balancean con una onda que baja por el cable;
  - las antenas vibran con el zumbido.

**Cómo:**
- `ServerStorage.Models.Bichos["191"]` es el modelo final (Looks ya usaba esa carpeta si existe).
- Lo construye `ServerStorage.CreatureBuilders.MechaKrakenoide`; para regenerarlo, ejecutar `require(game.ServerStorage.CreatureBuilders.MechaKrakenoide)()` en la barra de comandos.
- La animación la hace cada cliente: el nuevo `ReplicatedStorage.CreatureRigs` define los tentáculos y la animación, y el nuevo `StarterPlayerScripts.CreatureAnim` la aplica a los modelos con la etiqueta `CreatureRig`. Tiene en cuenta la escala, porque las bases encogen los bichos, y el modelo es `Atomic` para StreamingEnabled.

**Probado:** en Play:
- a tamaño real en el lobby, se anima (los tentáculos se mueven y salen relámpagos);
- en una base, encogido, también se anima;
- sin errores.

**Ojo:** en las bases todos los bichos se encogen para caber en su hueco (9 studs de ancho y 16 de alto, `Bases.draw` → `Looks.creature(b, 9, 16)`). Este, al ser tan ancho por los tentáculos, se queda en ~5 studs de alto. Hay que decidir si los bichos grandes pueden ocupar más sitio.

## 2026-10-20 · bbogatell (Claude) · Máquina de Fósiles nueva: modelo 3D hecho con código
**Qué** (lo pidió bbogatell): rediseño de la Máquina de Fósiles.
- **Referencia:** imagen hecha con ChatGPT (la segunda que generó): máquina morada y dorada estilo bloques con tolva de tierra, tubería, engranajes, cúpula de cristal con fósiles, pantalla «TIERRA → FÓSIL», palanca y cinta de salida.
- **Modelo:** generado con un script de Python (`trimesh`), sin Blender, en `tools/modelos/maquina_fosiles.py`. Está hecho de cajas, cilindros, tubos, una espiral para los amonites y calaveras de dinosaurio. Tiene 13 piezas, una por material (Purple, Gold, Glass, Bone, Neon…), con unos 18.000 triángulos en total, todas por debajo del límite de Roblox. El script exporta `.glb`/`.obj` y saca una imagen de prueba con un renderizador propio (`maquina_fosiles_preview.png`).
- **Importación:** bbogatell lo importó con *Import 3D*. Luego en Studio:
  - se giró 180° y se colocó en el sitio de la máquina anterior (x 36, z −250);
  - se le pusieron colores y materiales a cada pieza (cristal transparente en la cúpula, neón en las luces y metal en la palanca);
  - se le añadió el texto de la pantalla («TIERRA ⬇️ FÓSIL»), luces, brillitos en la cúpula y polvo sobre la tolva;
  - se reutilizó el cartel de arriba y el `MachinePrompt`;
  - se añadieron `Chute` (sobre la cinta de salida) y `PromptPart` (delante), que son lo que usa el código;
  - el modelo es persistente con StreamingEnabled.

**Dónde:** `Workspace.Map.Lobby.FossilMachine` (MeshParts nuevos). La anterior está en `ServerStorage.FossilMachineV2Backup` (y la primera sigue en `FossilMachineBackup`). No hay cambios de código.

**Probado:** en Play: E delante de la máquina abre la ventana; comprar un fósil Común cobra 1.000 de tierra y te lo da en las manos (captura). Sin errores.

**Notas:** para cambiar el modelo, edita el script, vuelve a generarlo (`python tools/modelos/maquina_fosiles.py <carpeta>`, requiere `pip install trimesh numpy scipy pillow manifold3d mapbox_earcut`) e impórtalo otra vez.

## 2026-10-20 · bbogatell (Claude) · Fuera la Tienda de Palas física; la de Estelas ocupa su sitio
**Qué** (lo pidió bbogatell):
- Se quita el puesto «Tienda de Palas» del lobby. Las palas se siguen comprando con el botón «Tienda» del HUD.
- La Tienda de Estelas (con su icono que bota) se ha movido exactamente a ese sitio: 34 studs hacia el portón, en el mismo hueco de la plaza.

**Dónde:**
- `Workspace.Map.Lobby.Shop` se ha movido a `ServerStorage.ShovelShopBackup` por si se quiere recuperar.
- `Workspace.Map.Lobby.TrailShop` está ahora en x −72, z −205.

No hay que tocar código: `DiamondClient.Main` busca `Lobby.Shop` con `FindFirstChild`.

**Probado:** en Play, junto al puesto en su nuevo sitio, E abre la ventana de estelas, y la tienda de palas ya no está en el lobby. Sin errores.

## 2026-10-20 · bbogatell (Claude) · Avisos en pantalla más cortos y claros
**Qué** (lo pidió bbogatell): se han reescrito todos los avisos de pantalla (unos 60): título de 2-4 palabras con un emoji de icono, y debajo qué hacer en pocas palabras. Ejemplos:

| Momento | Ahora pone |
|---|---|
| Sale un fósil | «🥚 ¡FÓSIL RARO!» + «[E] para cogerlo» (en móvil, «Tócalo para cogerlo») |
| Lo coges | «🏠 ¡LLÉVALO A TU BASE!» + «🐢 Vas más lento · 🏏 ¡que no te peguen!» |
| Lo dejas en la base | «✅ ¡FÓSIL A SALVO!» + «⏳ Se abre en 1 min» |
| Sale el bicho | «🎉 ¡PROTO BEBÉ!» + «+3 💰 por segundo» |
| Pala nueva | «⛏️ PALA 3!» + «🔓 Parcela 2 abierta» |
| Suelo duro | «🪨 ¡DEMASIADO DURO!» + «Necesitas la Pala 5 🛒» |
| Trampa / hielo | «🪤 ¡ATRAPADO!» / «❄️ ¡CONGELADO!» + «5 s sin moverte» |
| Evento | «⭐ ¡FÓSIL RARO ENTERRADO!» + «Parcela 3 · busca la luz 🔦» |
| Errores | «💰 Te faltan 25.0K», «🏠 Base llena · vende o agrándala», «🔒 Primero la Pala 4», «🏠 Entra en tu base»… |

**Avisos pequeños nuevos:** los mensajes cortos (errores, «¡Se te cayó el fósil!», ventas, rayos X…) ya no salen como un cartel enorme en medio de la pantalla. Ahora son una **píldora pequeña** justo debajo del centro, que se apila si salen varios y desaparece a los 1,8 s. Los carteles grandes siguen siendo para los momentos importantes.

**Dónde:**
- `DiamondClient.Fx.toast` (nuevo), que usa `Menus.toast`.
- Textos de `DiamondClient.Main`, `Menus` y `Tutorial`.
- Los `msg`/`Toast` de `DiamondServer.Main`, `Fossils`, `Bases`, `Training`, `Lane` e `Items`.

Los comandos de prueba (/dinero…) no se han tocado.

**Probado:** en Play:
- coger un fósil (cartel nuevo);
- comprar sin dinero la base y la cinta: dos píldoras apiladas debajo del centro, sin tapar el cartel (captura);
- sin errores en la consola.

## 2026-10-20 · bbogatell (Claude) · Tutorial: flechas del suelo bien orientadas e icono de chincheta
**Qué** (lo pidió bbogatell):
- Las flechas del suelo del tutorial salían giradas (eran el carácter «▲» en una SurfaceGui, que no apuntaba hacia donde iban). Ahora cada flecha es una **V de 2 barras de neón naranja** que apunta siempre al destino y avanza hacia él.
- El icono del paso «Ve a la Parcela 1» era la flecha azul ➡️; ahora es una chincheta 📍.

**Dónde:** `DiamondClient.Tutorial` (`buildArrow`: barras con el atributo `Off` = posición dentro de la flecha; `STEPS[2].icon`).

**Probado:** en Play, paso 2: las V apuntan hacia el portón, vistas desde arriba y desde detrás del jugador (capturas). Sin errores.

## 2026-10-19 · bbogatell (Claude) · Estelas rehechas: cada una con su tema (rayos, alas, órbitas, huellas…)
**Qué** (bbogatell pidió que no fueran solo cambios de color): las 20 estelas son nuevas y cada una tiene algo propio:

| # | Estela | Qué tiene |
|---|---|---|
| 1 | Polvo | Nubes de polvo a los pies. |
| 2 | Huellas Brillantes | Huellas de neón en el suelo. |
| 3 | Burbujas | Pompas de jabón. |
| 4 | Corazones | Corazones que suben. |
| 5 | Jardín | Flores que caen y florecitas en el suelo. |
| 6 | Melodía | Notas musicales. |
| 7 | Fuego | Llamas y chispas, con pisadas que arden. |
| 8 | Ventisca | Nieve, niebla y cristales de hielo que salen del suelo. |
| 9 | Fantasmal | Fantasmas y niebla. |
| 10 | Tóxica | Burbujas verdes y charcos de ácido. |
| 11 | Sakura | Remolino de pétalos. |
| 12 | Estrellas Fugaces | Estrellas y 2 cometas en órbita. |
| 13 | Tormenta Eléctrica | Rayos en zigzag que caen al suelo, chispazos y bolas eléctricas. |
| 14 | Inframundo | Calaveras, fuego, rayos rojos y pisadas de fuego. |
| 15 | Galaxia | 3 planetas en órbita inclinada y polvo de estrellas. |
| 16 | Dragón | Alas de dragón con huesos que aletean, fuego, chispas y rayos rojos. |
| 17 | Arcoíris (99 R$) | Cinta arcoíris, 6 cometas de colores, estrellas, corazones y huellas arcoíris. |
| 18 | Agujero Negro (199 R$) | Un agujero negro con disco brillante te sigue, con rayos morados y ondas expansivas. |
| 19 | Divina (399 R$) | Alas de ángel, aureola dorada, plumas y huellas de oro. |
| 20 | Supernova (799 R$) | Todo: ondas y rayos arcoíris, 8 cometas, aureola arcoíris, huellas y ~210 partículas/s. |

Las estelas grandes llevan una segunda cinta más fina a la altura del pecho. Todo es decorativo (sin bonus) y se compra en cualquier orden. En la tienda, cada tarjeta tiene su icono y una frase.

**Cómo:**
- La cinta y las partículas las pone el servidor (se replican). `Training.trailFx` tiene un preset por tipo de partícula, con texturas de la Creator Store (corazón, calavera, fantasma, flor, pétalo, burbuja, estrella, nota, rayo blanco, rayo rojo, bola eléctrica, brillo) y las de Roblox.
- Los extras (huellas, rayos, órbitas, ondas, alas y aureola) los dibuja cada cliente para todos los jugadores a menos de 160 studs, con el nuevo LocalScript `StarterPlayerScripts.TrailExtras`, que lee el atributo `TrailId` del personaje. No cargan la red.
- Las partículas y los extras de movimiento solo salen mientras corres o entrenas.
- Equipar ya no guarda al momento (se guarda al minuto o al salir), para no gastar llamadas al DataStore si alguien cambia mucho de estela.

**Dónde:**
- `Config.TRAINING.trails` (20 nuevas, con `fx`, `extras`, `icon` y `desc`; precios de 100 a 10T).
- `DiamondServer.Training` (`TEX`, `preset`, `trailFx`, `equipTrail`).
- Nuevo `StarterPlayerScripts.TrailExtras`.
- `DiamondClient.Menus` (icono y descripción en las tarjetas).

**Probado:** en Play:
- comprar las 20 (16 con dinero y 4 simuladas);
- capturas corriendo de Tormenta Eléctrica (rayo que cae), Divina (alas y aureola), Dragón (alas con huesos), Agujero Negro (agujero con disco y onda), Supernova, Ventisca (cristales en el suelo) y Melodía (notas);
- sin errores en la consola.

**Sin probar:** con varios jugadores a la vez (rendimiento con muchas estelas grandes juntas).

**Guardados:** se mantienen los números de estela; si alguien tenía la estela n, ahora tiene la nueva estela n.

## 2026-10-19 · bbogatell (Claude) · Estelas solo decorativas y sin orden; icono que bota sobre la Tienda de Estelas
**Qué** (lo pidió bbogatell):
- **Las estelas ya no dan ningún bonus:** son solo decorativas. `Config.perStep` ya no usa la estela, así que la cinta da lo mismo con o sin estela.
- **Se puede comprar cualquiera sin las anteriores**, por ejemplo la 16 directamente. Ya no hay candados de «Anterior»; cada tarjeta dice lo vistosa que es (Sencilla, Con efectos, Brillante, Épica, Legendaria, ¡EXAGERADA!) en vez del multiplicador.
- **La Tienda de Estelas se ve más:**
  - encima del puesto hay un icono grande ✨ «¡ESTELAS!» que bota, con un brillo que gira, el ✨ que late y chispas;
  - el puesto es persistente (StreamingEnabled), así que se ve desde todo el lobby.

**Dónde:**
- `Config`:
  - `ownsTrail(t, n)` nuevo;
  - `bestTrail` lo usa;
  - `perStep` sin estela;
  - comentario de `TRAINING.trails` (el campo `mult` queda sin usar).
- `DiamondServer.Training`: `buyTrail(n)` sin orden (guarda en `p.training.owned`), y el bucle de la cinta llama a `perStep(tread, 0, mult)`.
- `DiamondServer.Data`: atributos `TrailsOwned` y `TrailEquip` (quitados `Trail`, `TrailCash` y `TrailsR`).
- `DiamondClient.Menus` (ventana `Trails`).
- `DiamondClient.Main` (animación del icono).
- `Workspace.Map.Lobby.TrailShop.FloatIcon`.

**Guardados:** los que compraron estelas antes siguen teniendo las 1..`trail` (las de dinero compradas en orden) más las de Robux; las nuevas compras van a `owned`.

**Probado:** en Play:
- comprar la 16 sin dinero: «Te faltan…»;
- comprar la 8 directamente con 1T: la tienes y la llevas puesta;
- `perStep` con estela = sin estela (2);
- la ventana sin candados (captura);
- el icono botando sobre el puesto visto desde la plaza (captura);
- sin errores en la consola.

## 2026-10-19 · bbogatell (Claude) · 20 estelas y Tienda de Estelas física, monedas más grandes, sin aviso al cavar en tu base
**Qué** (lo pidió bbogatell):
- **20 estelas** (antes 11 «rastros»), cada vez más exageradas:
  - van de una línea fina gris (Polvo) a la **Supernova**: arcoíris ancho de 4 studs, ~430 partículas/s (estrellas, brillos, orbes, chispas y plumas) y luz propia;
  - por el medio hay burbujas, fuego, nieve, humo, pétalos, estrellas…
  - las 16 primeras se compran con dinero y en orden (100 → 6000Q); las 4 últimas con Robux cuando quieras: Arcoíris 99, Cósmica 199, Divina 399 y Supernova 799;
  - todas multiplican los pasos en la cinta (x1,5 … x150), y cuenta la mejor que tengas;
  - puedes equipar cualquiera de las tuyas o quitártela;
  - las partículas solo salen mientras te mueves.

  Las 11 primeras tienen el mismo multiplicador y precio que los rastros antiguos, así que el número guardado (`p.training.trail`) significa lo mismo y no hace falta tocar ningún guardado. Las de Robux van aparte (`p.training.rtrails`).
- **Tienda de Estelas física:** puesto morado y blanco al lado de la Tienda de Palas, con:
  - cartel «✨ TIENDA DE ESTELAS ✨»;
  - estelas de neón en exposición sobre el mostrador;
  - tarros de colores;
  - un arcoíris encima que se ve de lejos.

  Con E se abre su ventana: 20 tarjetas con la muestra de colores, el multiplicador y Comprar / Equipar / ✔ Equipada. **Ya no está en la tienda del HUD** (quitada la tarjeta «Rastro» de Velocidad); solo se compra en el puesto.
- **Las monedas del HUD se ven un poco más grandes** que la velocidad y la tierra.
- **Sin «Aquí no se cava»** cuando das un palazo dentro de tu base (entre tus fósiles). Fuera de la base sigue saliendo.

**Dónde:**
- `Config.TRAINING.trails` (20, con `w`/`life`/`glow`/`fx`/`light`/`rainbow`/`robux`), `Config.PRODUCTS.Trail17-20` y `Config.bestTrail`.
- `DiamondServer.Training`: `buyTrail(n)`, `grantTrail`, `equipTrail`, `ownsTrail`, `trailFx` nuevo y el bucle que enciende las partículas al moverte.
- `DiamondServer.Data`:
  - atributos `Trail` (la mejor), `TrailCash`, `TrailsR` y `TrailEquip`;
  - ahora requiere `Config`.
- `DiamondServer.Main`: `BuyTrail(n)`, `EquipTrail`, y las estelas en `BuyRobux` y `ProcessReceipt`.
- `DiamondClient.Menus`: ventana `Trails` (`buildTrails`, `refreshTrails`), sin la tarjeta Rastro.
- `DiamondClient.Main`: `TrailPrompt` abre `Trails`, y `r.noDig` calla dentro de tu base.
- `DiamondClient.HUD`: filas Speed 0,22, Coins 0,31 y Dirt 0,22.
- `Workspace.Map.Lobby.TrailShop` (quitada una mata de flores que había en ese sitio).

**Probado:** en Play:
- abrir el puesto con E (captura);
- comprar la 1 y la 2, y la 3 sin la 2 da «Primero compra la Estela de Hierba»;
- Supernova con compra simulada: 5 emisores y luz;
- equipar la 1 y volver a la 20;
- las partículas se encienden al moverte;
- capturas de la Supernova corriendo (arcoíris con estrellas, muy brillante);
- monedas más grandes en el HUD;
- sin errores en la consola.

**Sin probar:** cómo se ven las estelas de otro jugador (2 jugadores).

## 2026-10-19 · bbogatell (Claude) · Tutorial más rápido y visual, flechas que avanzan, icono de pala
**Qué** (lo pidió bbogatell tras probar el tutorial):
- **Ir a la parcela ya no es eterno:**
  - en los pasos 2-6 del tutorial (ir a la parcela, cavar, coger, volver a la base y dejar el fósil) corres como mínimo a **45**. Unos 7 s de la base a la parcela 1, antes ~20 s;
  - además, la velocidad inicial de todos sube de 16 a **20** (`TRAINING.walkBase`). También afecta al modo lento.
- **Instrucciones mucho más cortas y visuales:**
  - tarjeta más pequeña con un icono grande y 2-4 palabras («Ve a la Parcela 1», «Clic para cavar», «Coge el fósil [E]», «Llévalo a tu base», «¡Monedas cada segundo!», «Compra la Pala 2»…);
  - 11 puntos de progreso debajo (verde = hecho, amarillo = ahora);
  - «Saltar ⏭» (pide confirmar);
  - resumen final de una línea por punto;
  - con una ventana abierta (la tienda), la tarjeta baja abajo para no tapar el título.
- **Flechas que se mueven:** en vez de la línea, una fila de flechas ▲ amarillas tumbadas en el suelo que avanzan desde ti hasta el objetivo (aparecen y desaparecen suavemente en los extremos, 160 studs como mucho). La flecha que bota encima del objetivo sigue igual.
- **Icono de pala en vez de pico**, el dibujo de pala con mango dorado `rbxassetid://66677176` (`UI.ICONS.shovel`, que ya estaba pero no se usaba). Está en:
  - la fila de la pala del HUD (abajo a la izquierda);
  - la pestaña «Palas» de la tienda;
  - el paso «Clic para cavar» del tutorial;
  - el cartel del portón «PARCELAS · FÓSILES» (2 iconos a los lados).

  Quitados los ⛏️ del distintivo «SIGUIENTE PALA», del aviso de la barrera y del cronómetro del evento.

**Dónde:**
- `DiamondClient.Tutorial`: `STEPS`, `buildCard` con los puntos, flechas en `buildArrow`/`pointAt` y la tarjeta baja con `Menus.isOpen`.
- `DiamondClient.Menus`:
  - `Menus.isOpen`;
  - campo `icon` en las categorías;
  - badge sin ⛏️.
- `DiamondClient.HUD` (icono de pala, cronómetro ⏱️).
- `DiamondClient.Main`: `TUTORIAL_SPEED` = 45 en `wantSpeed`, y aviso de la barrera con 💎.
- `Config.TRAINING.walkBase` = 20.
- `Workspace.Map.Lane.Gateway.Board.Title` (texto sin ⛏️ + `ShovelIcon0`/`ShovelIcon1`).

**Probado:** en Play:
- paso 2 con WalkSpeed 45 y las flechas avanzando hacia el portón (captura);
- paso 3 con el icono de pala y «Clic para cavar»;
- pala en el HUD, en la pestaña Palas y en el portón;
- con la tienda abierta, la tarjeta baja abajo;
- sin errores en la consola.

**Notas:** busqué una textura de flechas en la biblioteca, pero las que cargaban se estrechaban en perspectiva, así que las flechas son piezas propias.

## 2026-10-19 · bbogatell (Claude) · Tutorial para jugadores nuevos
**Qué:** tutorial guiado de 11 pasos, aprendiendo jugando como en *Roba un huevo* (diseño acordado con bbogatell):
1. Bienvenida.
2. Ir a la parcela 1.
3. Cavar: el primer fósil sale seguro en la 5.ª palada (un Común I).
4. Cogerlo con E.
5. Llevarlo a la base. Si se te cae, vuelve al paso 4. Si estás en el hoyo, brilla «Salir del hoyo».
6. Dejarlo con un clic: el primero se abre en 8 s.
7. Esperar al bicho.
8. «Tu bicho te da monedas cada segundo».
9. Correr en tu cinta (10 pasos, unos 5 s).
10. Abrir la Tienda (se abre en Palas) y comprar la pala 2.
11. Resumen con la Máquina de Fósiles, el diamante y el bate, y el botón «¡A jugar!».

Cómo se ve:
- Tarjeta arriba con «PASO n/11», un icono y el texto. Los textos cambian en móvil («Toca…»).
- Línea naranja en el suelo hasta el destino y flecha que bota encima.
- El botón del HUD que hay que usar brilla y tiene una mano que lo señala.
- «Saltar tutorial» pide confirmar con un segundo clic y no da premio.

Mientras dura:
- No te pueden pegar ni con el bate ni con la pala, ni quitarte el fósil.
- No sale la bienvenida de siempre, y la ventana del diario se abre al terminar.

Al acabar: premio de 1 trampa de oso y 1 poder de hielo. **La pala 2 cuesta ahora 50** (antes 2.200), para que el tutorial la compre con las monedas del primer bicho.

Quién lo hace:
- Los jugadores nuevos.
- Los guardados antiguos sin progreso (ni monedas, ni tierra, ni pala 2, ni velocidad, ni nada en la base).
- Los demás jugadores no lo ven.

**Dónde:**
- Nuevo `DiamondServer.Tutorial`:
  - `p.tutorial` (número de paso o `"done"`) y el atributo `Tutorial`;
  - `reach`, `back`, `finish` y `clientNext`;
  - ganchos `onDig` y `onTreadStep`, y `protected`;
  - `resolve` (lo llama `Data.load`);
  - atributo `BaseCenter` para la flecha.
- Ganchos en `Fossils`:
  - `onDig` fuerza el fósil con `Fossils.tutorialFossil`;
  - `pickUp` avanza el paso;
  - `drop` vuelve al paso 4;
  - `hit` no quita el fósil durante el tutorial.
- Ganchos en `Bases.place` (abre en 8 s) y `hatch`, en `Training` (pasos en la cinta) y en `Items.useBat` (salta a quien hace el tutorial).
- `Main`:
  - el golpe de pala no toca a quien hace el tutorial;
  - `BuyShovel` avanza el paso;
  - handlers `TutNext` y `TutSkip`;
  - comando `/tutorial`.
- Nuevo `DiamondClient.Tutorial` (ScreenGui propio `Tutorial`, DisplayOrder 8, encima de los menús).
- `DiamondClient.Main`: lo arranca, y la bienvenida y el diario esperan.
- `Config.SHOVELS[2].price` = 50.

**Probado:** en Play, el tutorial entero con un jugador nuevo:
- la tarjeta sale y el diario no;
- paso 2 con la flecha;
- 5 paladas → fósil y paso 4;
- E → paso 5, con la flecha a la base;
- entrar → paso 6;
- clic en el suelo → paso 7, y a los 8 s sale el Proto Bebé (+3/s) → paso 8 → paso 9 con brillo en la velocidad;
- 6 s en la cinta → paso 10;
- Tienda (se abre en Palas) → comprar la pala 2 → resumen → «¡A jugar!»: +1 trampa, +1 hielo y se abre el diario.

También probados `/tutorial` y «Saltar tutorial» con la tienda abierta (se quita sin premio). Sin errores en la consola.

**Sin probar:** que el bate no te toque durante el tutorial (hacen falta 2 jugadores) y el guardado real del paso.

**Notas:** en Studio no se carga el guardado, así que cada Play sale el tutorial. Para no verlo, pon `NoTutorial` = true en `Workspace` o sáltalo (está en PRUEBAS).

## 2026-10-19 · bbogatell (Claude) · Ronda de cambios jugando: tienda, x2 Velocidad, carteles, modo lento, luz, inercia y Máquina de Fósiles
**Qué** (lo pidió bbogatell mientras jugaba):
- **Tienda:**
  - Fuera la tarjeta del Bate (todos lo tienen desde el principio).
  - Los packs de monedas cubren todo el juego: 10K (25 R$), 1M (49), 100M (99), 10B (199), 1T (399), 100T (799) y 10Q (1499). Al final las últimas palas cuestan 15T-68T y las mejores cintas 1Q-15Q.
- **Botón «x2 Velocidad»:** ya no abre la tienda. Compra directamente el siguiente multiplicador y luego ofrece x4, x8, x16…
- **Cartel de la cinta:** el botón de dinero se pone verde si te llega y rojo si no. Se actualiza solo con tus monedas.
- **Cartel «Agrandar base»:** ahora está FUERA de la base, al otro lado del caminito, delante de la mitad izquierda (la cinta está delante de la derecha). Tiene un botón físico que se pulsa con el ratón (verde o rojo igual que el de la cinta). Ya no hay aviso de E, y se ha quitado la zona de la base reservada para el cartel.
- **Modo lento:** botón pequeño a la izquierda (debajo de «x2 Velocidad»), ON/OFF. En ON corres a 16, la velocidad de empezar, aunque hayas entrenado. No se guarda: al entrar siempre está en OFF.
- **Luz propia** (PointLight cálida) cuando estás dentro de un hoyo, para verte en el fondo.
- **«Soltar fósil» y «Salir del hoyo»** ya no se tapan: si salen los dos, «Soltar fósil» sube.
- **Un poco de inercia** al correr: la velocidad tarda unos 0,2 s en llegar al máximo y en pararse (antes era de golpe).
- **Ventana de la Máquina de Fósiles:** las rarezas van en grupos con separadores sutiles (Básicos, Avanzados, «✨ Los mejores ✨» con un borde dorado suave que late, y Especiales). Así no parecen todas igual de buenas.
- **Máquina de Fósiles nueva** (modelo hecho a mano con studs, 87 piezas). Tiene:
  - cúpula de cristal llena de huevos de colores de rareza, con brillitos;
  - pantalla «TIERRA ➜ FÓSIL», botones, manómetro y palanca;
  - tolva de tierra con tubería a la izquierda;
  - engranaje y chimenea con humo a la derecha;
  - bandeja de salida con un huevo;
  - columnas con focos.

  Mantiene `Chute`, `PromptPart` y `MachinePrompt`, que es lo que usa el código. La antigua está en `ServerStorage.FossilMachineBackup`. Busqué en la biblioteca, pero los modelos gratis eran máquinas de gacha de otros juegos con scripts y otro estilo, así que no usé ninguno.

**Dónde:**
- `Config.PRODUCTS` (`Coins10k`…`Coins10q`; quitados `Coins5k`/`50k`/`500k`) y `Config.BASE.upgradeSign` = `{x = -12, z = 39}`.
- `DiamondClient.Menus` (sin `shop.cards.Bat`; `MACHINE_GROUPS`).
- `DiamondClient.HUD` (botón `SlowMode`).
- `DiamondClient.Main`:
  - `promoBtn` → `BuyRobux SpeedX…`;
  - `wantSpeed` con `SlowMode`;
  - `DigLight` e `INERTIA_RATE` = 12 en el Heartbeat;
  - posición de `DropFossil`;
  - el clic de carteles acepta `BaseButton`;
  - bucle que colorea los botones con la etiqueta `PriceButton`.
- `DiamondServer.Bases.upgradeSign` (botón `BuyBase` con `BaseButton`/`Owner`/`Price`).
- `DiamondServer.Training.sign` (`Owner`/`Price` en `BuyCash`).
- `Workspace.Map.Lobby.FossilMachine`.

**Probado:** en Play.
- Botones de los carteles rojos con 0 monedas y verdes tras `/dinero 30000`.
- Clic en «Agrandar base»: pasa a Base grande y cobra 25K.
- Clic en «x2 Velocidad»: `SpeedMult` 0→1 y el botón pasa a «x4 · 9 R$».
- Modo lento: con 1M de velocidad, WalkSpeed 16 en ON y 119 en OFF.
- Inercia medida: arranca de 0 a 119 en ~0,1 s con la versión de 22 y luego la bajé a 12 (~0,2 s; esta última no la medí).
- Dentro de un hoyo: `DigLight` encendida y «Soltar fósil» encima de «Salir del hoyo» (captura).
- Tienda: Monedas y Objetos (sin Bate). Ventana de la máquina con los grupos (capturas).
- Sin errores en la consola.

**Notas:**
- Los IDs de los packs de monedas nuevos siguen a 0 (están en PENDIENTES, como los demás productos).
- Para seguo970: el cartel de agrandar base ya no está dentro de la base.

## 2026-10-19 · bbogatell (Claude) · Cinta delante de la base, al otro lado del caminito, y «Base enorme» de 20 studs
**Qué:**
- La cinta de correr cambia de sitio (lo pidió bbogatell): ahora va en la hierba al otro lado del caminito, delante de la mitad derecha de la base vista desde el lobby. El corredor mira a su base y el cartel de mejora (con sus botones físicos) está a la derecha de la cinta, mirando al lobby.
- En la fila de atrás, la cinta queda detrás de las bases de delante, justo donde crecían con las mejoras. Por eso **«Base enorme» crece ahora 20 studs en vez de 30** (bbogatell eligió esta opción). «Base grande» sigue en 15. Si alguien tenía cosas guardadas más atrás de donde llega ahora su base, se mueven dentro al entrar.
**Dónde:**
- `Config.BASE.tread` = `{x = 10, z = 39.7, signX = 18.5, signZ = 39}` (respecto al centro de la base).
- `Config.BASE.upgrades[2].extra` = 20.
- `DiamondServer.Training.placement`.
- `DiamondServer.Bases.ensurePositions` (mete dentro los `oz` que se salen).
**Probado:** en Play.
- La cinta de la base 1 sale en x −80,5 / z −265,5, sobre la hierba y fuera del caminito (captura).
- Clic con el ratón en el botón de Robux: la cinta pasa al nivel 2.
- Subido a la cinta: +30 de velocidad en 3 s.
- Sin errores en la consola.
- En la fila de atrás la cinta ocupa z −363,8..−350,8. El caminito acaba en −364 y la valla de una base de delante con «Base enorme» queda en −350, sin solaparse. Comprobado con cuentas, no en Play con 2 jugadores.
**Notas:** para seguo970: si cambias el tamaño de las bases o los caminitos, revisa `Config.BASE.tread`, porque la cinta de la fila de atrás está justo entre el caminito y el fondo de la base de delante.

## 2026-10-19 · bbogatell (Claude) · Cinta de correr fuera de la base y cartel con botones físicos
**Qué:**
- La cinta de correr y su cartel de mejora ya no están dentro de la base. Van fuera, en la franja de hierba del lado de fuera de cada base (lejos del camino central), junto a la entrada, como en *Roba un huevo*. Las bases de los extremos usan la franja junto al borde del lobby y las del centro el hueco de 12 studs entre bases. El cartel está delante de la cinta y mira al caminito.
- El cartel tiene 2 **botones físicos** que se pulsan con el ratón (o tocándolos en el móvil): rojo «🏃 $precio» (dinero) y morado «R$ precio» (Robux). El botón se hunde al pulsarlo. Ya no hay avisos de E/R. Si pulsas la cinta de otro, sale «Esta cinta no es tuya».
- Como la cinta ya no está dentro, se ha quitado la zona de la base donde no se podían dejar fósiles.
**Dónde:**
- `Config.BASE.tread` = `{side = 31, z = 10, signZ = 21}` (distancia hacia fuera desde el centro de la base, posición de la cinta y posición del cartel).
- `DiamondServer.Training`: `sign` (tablero y botones `BuyCash`/`BuyRobux` con el atributo `TreadButton` y un `ClickDetector` solo para el cursor de mano), `placement` y `refresh` (sin ProximityPrompts).
- `DiamondClient.Main`, bloque «treadmill sign buttons»: un `InputBegan` hace un raycast al botón, comprueba que la cinta sea tuya, anima el botón y envía `Request("UpgradeTread", kind)`.
- `DiamondServer.Bases` (quitada la comprobación de `B.tread`).
**Probado:** en Play.
- La cinta sale en x −126 junto a la base 1, fuera de la valla.
- Clic con el ratón en el botón de dinero sin dinero: aviso de que faltan monedas.
- Clic en el de Robux: compra simulada de Studio, la cinta pasa a Sci-Fi y el cartel se actualiza (botones rojo a la izquierda y morado a la derecha).
- Subido a la cinta en su nuevo sitio: +30 de velocidad en 3 s, con los zapatos encima de la cabeza.
- Sin errores en la consola.
**Notas:** los clics virtuales del MCP no activan `ClickDetector.MouseClick`, pero sí `UserInputService`. Por eso el clic se lee en el cliente, y así también se puede probar. Con la piel «angelical», las alas de la cinta pueden asomar un poco por la valla en los huecos de 12 studs (no colisionan).

## 2026-10-19 · bbogatell (Claude) · Zapatos encima de la cabeza y zapato del HUD que tiembla en la cinta
**Qué:**
- Al correr en tu cinta, en cada paso salen encima de tu cabeza zapatos 👟 y un «👟 +N» (lo que ganas) que suben y se desvanecen, como en *Roba un huevo*. No dependen del ajuste «Números».
- El zapato de la fila de velocidad (abajo a la izquierda del HUD) tiembla mientras entrenas y vuelve a su sitio al bajarte.
- El cliente vuelve a tener el aviso de cinta mejorada (`TreadUp`: destello, confeti y cartel con el nombre de la cinta). El servidor lo enviaba, pero el cliente ya no tenía el manejador.
**Dónde:** `DiamondClient.Main` (`shoeBurst`, `handlers.Step` y `handlers.TreadUp`, antes de `handlers.DigFx`). `DiamondClient.HUD` (justo después de crear `speedRow`: un `RenderStepped` que mueve `speedRow.Icon` mientras `OnTreadmill` o `Training` está activo).
**Probado:** en Play, subido a la cinta de mi base: salen los zapatos con «+2» encima de la cabeza (captura), el zapato del HUD rota entre −14° y +14°, y no hay errores en la consola.
**Notas:** los billboards de los zapatos van sin `AlwaysOnTop`, porque con `AlwaysOnTop` no salían en las capturas de Studio.

## 2026-10-19 · seguo970 (Claude) · Prueba de la progresión entera y arreglos
**Qué:** se ha jugado la progresión de principio a fin (jugador nuevo → cavar → fósil → base → bicho → palas 1-30 por las 15 parcelas → evento de fósil raro → evento del diamante → final). Arreglos:
- **Parcela 13 (Grieta Dimensional): no se podía cavar.** Usaba `Granite`, que no es un material de terreno de Roblox: el hoyo salía relleno de hierba por debajo de la capa de asfalto y cada palada daba error en el servidor (sin tierra ni fósiles). Ahora es `Brick` en morado.
- **El haz de luz del fósil raro** no se veía de lejos (StreamingEnabled): ahora es un modelo persistente y se ve desde el lobby.
- Con la base al máximo, el aviso de «base llena» ya no dice «agrándala».
**Dónde:** `Config.PLOTS[13]` (`terrain`/`veins` = `Brick`) y `Config.TERRAIN_COLORS` (quitado `Granite`, `Brick` morado). `DiamondServer.Fossils` (`buryEventFossil`: modelo `RareFossilBeam` con `ModelStreamingMode = Persistent` y la pieza `Beam` dentro). `DiamondServer.Bases.place` (mensaje de base llena).
**Probado:** en Play, todo con un jugador: 60 paladas en la parcela 1 (+151 de tierra, 1 fósil), coger con E, «Superficie», dejarlo en la base, se abre en 15 s y da 3 💰/s; comprar las 30 palas y cavar en cada parcela con su pala mínima (con la anterior «demasiado duro»); comprobación automática de las 15 parcelas, los 60 fósiles y los bichos que salen (0 errores); Máquina de Fósiles (lejos, sin tierra, con fósil en las manos), soltar fósil; agrandar la base 2 veces y dejar un fósil al fondo; base llena; vender; cinta (+2 por paso, mejora y rastro); regenerar con el jugador dentro; evento de fósil raro (sale ★, da un bicho Eterno); `/empezar`, cavar hasta el diamante, recogerlo y paso al infierno. Tras los arreglos: la parcela 13 da tierra y sin errores en la consola. **Sin probar:** lo de 2 jugadores (bate, trampa, hielo, robar fósiles) y el guardado real.
**Notas:** el terreno de los hoyos lo pone el servidor al arrancar, así que en Edit la parcela 13 se sigue viendo con hierba (da igual).

## 2026-10-19 · seguo970 (Claude) · Lobby pulido: suelo, plaza, barandilla y simetría
**Qué:** repaso del lobby (antes del portón de las parcelas), sin cambiar el estilo de studs:
- **Suelo sin huecos:** 576 rendijas (detrás de la fila de bases de atrás y a los lados de la de delante) por donde se veía el terreno realista, tapadas con hierba. 51 baldosas de un verde más claro que no pegaban con sus vecinas, igualadas al tono de alrededor (incluido el parche claro que quedaba delante de la plaza, resto de la escalera antigua al campo).
- **Plaza:** el borde delantero ya no tiene la abertura de la escalera antigua (los 2 trozos de camino que salían por ahí son ahora hierba). Los 4 bordes quedan pegados a la plaza (antes había una franja de hierba de 2 studs en 3 lados y en el otro no). El borde de atrás tiene ahora una abertura del ancho del camino central, para que el camino entre limpio en la plaza en vez de pasar por encima del borde.
- **Barandilla de delante:** rojo y blanco alternos de punta a punta (en el centro había 10 tramos de otro tono y dos blancos seguidos).
- **Fuera los bordes negros** de los hoyos antiguos (18 `PitLip`), 6 de ellos asomaban junto a las bases.
- **Simetría:** jardinera del borde este a la misma altura que la del oeste; pinos de los lados en espejo (añadido el del este que faltaba a z −330) y bajados al suelo los 3 que flotaban; matas de flores en espejo (73 copiadas al lado que les faltaba, 11 quitadas porque al otro lado no había sitio).
**Dónde:** `workspace.Map.Lobby.Floor` (Grass, Path, PlazaBorder, PitLip), `Lobby.Props.Rail`, `Lobby.Props.Flowers` (Leaf/Bloom/Center, Planter, Pine). Copia de lo quitado o cambiado en `ServerStorage.LobbyPolishBackup`. Sin cambios en scripts.
**Probado:** comprobación automática del suelo (0 huecos alrededor de la plaza), todas las matas apoyadas en el suelo y ninguna sobre camino o plaza; capturas desde arriba y del portón; en Play: se sale de la plaza hacia las bases por la abertura y se pasa el borde lateral hasta la tienda. Sin errores.
**Notas:** quedan asimetrías **a propósito**: la Máquina de Fósiles (solo a la derecha del camino), la cascada (pared este) y los colores de los rankings (azul / amarillo).

## 2026-10-19 · seguo970 (Claude) · Agrandar la base
**Qué:** la base se puede **agrandar dos veces con monedas**, en un cartel verde «Agrandar base» dentro de la base (en la esquina de la entrada, enfrente de la cinta de correr). Crece **hacia atrás**, lejos de la entrada, y la valla se rehace a la nueva medida:
- Normal: 50×50, 12 sitios.
- **Base grande** (25K monedas): 50×65, 16 sitios.
- **Base enorme** (1,5M monedas): 50×80, 20 sitios.
Se guarda con la partida. Al irte, la base vuelve a su tamaño normal para el siguiente que la use. No se pueden dejar fósiles encima del cartel.
**Dónde:** `Config.BASE.upgrades` (nombre, `extra` de largo, `slots` de más y precio) y `Config.BASE.upgradeSign`. `DiamondServer.Bases`: nivel guardado en `p.base.lvl`, `applySize` (alarga `Platform` hacia −Z y rehace `Fence`), cartel con `ProximityPrompt` (E), `Bases.upgrade`, `Bases.setLevel`; «dentro de la base», sitios y cartel de encima ya tienen en cuenta el tamaño; atributo del jugador `BaseLevel`. `Main`: petición `UpgradeBase`, `Debug "baseLevel"` y comando `/base nivel <1-3>`.
**Probado:** en Play: sin monedas avisa de lo que falta; con monedas sube a 65 y luego a 80 (plataforma y valla), la tercera vez dice «¡Tu base ya es la más grande!»; dejar un fósil al fondo de la parte nueva funciona; el cartel de encima pasa a «1/20». Sin errores. No probado: con 2 jugadores, y salir y volver (el DataStore está apagado en Studio).
**Notas:** los precios son una propuesta (a la altura de las palas 5-6 y 9): ajustadlos en `Config.BASE.upgrades`. Detrás de cada base solo hay sitio para 30 studs de más; si se añade otro nivel, hay que mover cosas del lobby.

## 2026-10-19 · seguo970 (Claude) · Bases pegadas a los caminitos laterales, con sitio para crecer
**Qué:** las 8 bases tienen ahora **la entrada pegada al caminito lateral** que sale del camino central: la fila de delante al de z −276 y la de atrás al de z −368. Detrás de cada base queda hierba libre (34 studs en la fila de delante y 30 en la de atrás) para que en el futuro la base se pueda **agrandar un par de veces hacia dentro**, lejos del camino. La **cinta de correr** ya no está delante de la base (quedaría encima del camino): va **dentro**, en la esquina de la entrada, con su cartel mirando al camino, y ahí no se pueden dejar fósiles.
**Dónde:** `Lobby.PlotFrames` movidas en Z (+5 la fila de delante → centro z −305; +29 la de atrás → centro z −397; atributo `MovedToPaths`). Suelo: 96 baldosas de hierba nuevas tapando los hoyos antiguos que quedaban a la vista, 14 `PitLip` y unas flores de `Props.Flowers` quitadas (copia en `ServerStorage.LobbyBasesMoveBackup`). `Config.BASE.tread` (posición y zona de la cinta dentro de la base), `Training` (`placement`), `Bases.place` (no deja fósiles encima de la cinta).
**Probado:** en Play: la cinta sale dentro de la base (x +16, z +13), subirse funciona y suma velocidad; dejar un fósil encima de la cinta da «Ahí está tu cinta de correr…» y en otro sitio se deja bien. Captura desde arriba. Sin errores.
**Notas:** agrandar la base todavía **no existe**: solo se ha dejado el sitio. Si se hace, la base debe crecer hacia −Z (lejos de la entrada) y hay que tener en cuenta `Config.BASE.half` y la valla `Fence`. Los fósiles ya guardados se dibujan relativos al centro de la base, así que se mueven con ella.

## 2026-10-19 · seguo970 (Claude) · Bases con vallas de madera como en «Roba un huevo»
**Qué:** las 8 bases del lobby ya no tienen borde blanco, postes morados con farolillos ni puerta amarilla: ahora las rodea **una valla de madera de postes y dos travesaños**, como las granjas de «Roba un huevo», con textura de studs y una **entrada de 12 studs delante** (donde estaba la puerta). La plataforma verde y todo lo demás de la base sigue igual.
**Dónde:** `workspace.Map.Lobby.PlotFrames.PlotN` → nuevo `Fence` (`FencePost` 1,4×5×1,4 cada 6 studs y `FenceRail` a 1,6 y 3,5 de altura, 1 stud dentro del borde). Quitados `Border`, `Post`, `Lamp`, `GatePost` y `GateTop`; copia en `ServerStorage.PlotFramesBackup`. Sin cambios en scripts (solo usan `Platform`, `Spot`, `Floor` y `TitleAnchor`).
**Probado:** en Play: se asigna la base, `InOwnBase` funciona dentro y se deja un fósil con clic; capturas desde arriba y dentro del juego. Sin errores.
**Notas:** la valla **no choca** (como el borde de antes y la regla de colisiones del mapa): se puede saltar o atravesar. Si queréis que solo se entre por la puerta, hay que activar `CanCollide` en `Fence`.

## 2026-10-19 · seguo970 (Claude) · Icono de la tierra: cubo de tierra
**Qué:** el icono de la tierra es ahora un **cubo de tierra** marrón con manchas y contorno oscuro (imagen que pasó seguo970), en el HUD, la Máquina de Fósiles y lo que vuela al cavar.
**Dónde:** `DiamondClient.UIKit` → `UI.ICONS.dirt` = `rbxassetid://135332230770845` (subida desde Studio con la cuenta de seguo970: fondo blanco quitado, recortada a 512×512). `UI.dirtIcon` vuelve a ser un `UI.icon` normal.
**Probado:** en Play: la imagen carga y se ve en el HUD y en la máquina (captura). Sin errores.
**Notas:** la imagen es de la cuenta de seguo970; si algún día no carga en el juego publicado (permisos de la imagen), hay que subirla con la cuenta dueña del juego.

## 2026-10-19 · seguo970 (Claude) · Icono de la tierra: trozo de tierra simple
**Qué:** el icono de la tierra (la divisa) es ahora un trozo de tierra marrón sencillo con contorno, sacado de la Creator Store, en vez del montón dibujado con piezas. Sale en el HUD, en la Máquina de Fósiles (cabecera y precios) y en lo que vuela al contador al cavar.
**Dónde:** `DiamondClient.UIKit` → `UI.ICONS.dirt` = `rbxassetid://91931004002192` (imagen del decal «Pile Of Dirt UI Image», 80942902348690) y `UI.dirtIcon` (amplía la imagen ×2,74 y la centra, porque el dibujo solo ocupa el centro).
**Probado:** en Play: la imagen carga y se ve en el HUD y en la máquina (captura). Sin errores.
**Notas:** para sacar el id de imagen de un decal de la Creator Store: `InsertService:LoadAsset(idDelDecal)` en el servidor del Play y leer `Decal.Texture` (en Edit no funciona igual).

## 2026-10-19 · seguo970 (Claude) · Menos fósiles al cavar, máquina más cara, soltar el fósil e icono de tierra
**Qué:**
- **Menos fósiles al cavar:** 2 % por palada (antes 6 %), más o menos uno cada 50 paladas.
- **Máquina de Fósiles mucho más cara**, para que lo bueno sea cavar: cada rareza cuesta unas 5 veces la tierra que sacas, de media, hasta que te sale cavando. Común 1.000 · Poco común 4.000 · Raro 7.500 · Épico 15K · Legendario 30K · Mítico 60K · Cósmico 200K · Secreto 500K · Eterno 2M · Divino 7,5M · Brainrot 150K · Mutante 1,5M.
- **Soltar el fósil:** mientras llevas uno sale el botón «⬇️ Soltar fósil (G)» abajo en el centro (también con la tecla G). Cae delante de ti y cualquiera lo puede coger.
- **Icono nuevo de la tierra:** un montón de tierra marrón con studs, dibujado con piezas de interfaz (sin imagen). Sale en el HUD, en la máquina (cabecera y precios) y en lo que vuela al contador al cavar. El texto flotante ahora dice «+N tierra».
**Dónde:** `Config.FOSSIL.chance` y `Config.DIRT.prices`; `DiamondServer.Main` (`handlers.DropFossil`, usa `Fossils.drop`); cliente `Main` (botón y tecla G, texto del aviso al coger un fósil), `UIKit` (`UI.dirtIcon`), `HUD`, `Menus` (máquina), `Fx.flyIcons` (icono `"dirt"`).
**Probado:** en Play: botón oculto sin fósil y visible con fósil; soltar deja el fósil en el suelo y vuelve a esconder el botón; soltar sin fósil da «No llevas ningún fósil»; captura de la máquina con los precios y del HUD. Sin errores. No probado: la tecla G a mano y en móvil.
**Notas:** el cálculo de los precios supone unos 2,7 bloques por palada con la pala 1, escalados por el radio de la pala mínima de cada parcela. Se intentó usar la imagen «Dirt Pile» de la Creator Store, pero solo se puede cargar con su id de imagen, que no se pudo sacar.

## 2026-10-19 · seguo970 (Claude) · Vuelven los fósiles al cavar en las parcelas
**Qué:** al cavar en las parcelas del carril vuelve a poder salir un fósil (6 % por palada que saca tierra), con la rareza según la tabla de cada parcela y luego I/II/III, como antes. Sale suelto en el suelo con el aviso «¡FÓSIL …! pulsa E para cogerlo». **La tierra se sigue dando** en cada palada y la Máquina de Fósiles sigue igual: ahora son dos maneras de conseguir fósiles.
**Dónde:** `DiamondServer.Fossils` → `Fossils.onDig` (vuelve a usar `Fossils.roll(n)` y `Config.FOSSIL.chance`).
**Probado:** en Play: 60 paladas en la parcela 1 → +164 de tierra y 1 fósil Común suelto en el suelo. Sin errores. No probado: cogerlo con E (código que no se ha tocado).
**Notas:** la probabilidad se cambia en `Config.FOSSIL.chance` (0,06).

## 2026-10-19 · bbogatell (Claude) · Cavar da tierra, Máquina de Fósiles, dejar el fósil con clic y retoques del HUD
**Qué:**
- **Cavar ya no da monedas ni fósiles al azar: da TIERRA** (más por bloque cuanto más avanzada es la parcela: de 1 a 800). La tierra vuela hacia su contador del HUD.
- **Máquina de Fósiles** en el lobby (entre la estatua y las bases): canjeas tierra por un fósil de la **rareza que elijas**, si está desbloqueada (se desbloquea al poder cavar en la primera parcela donde sale) y si te llega la tierra (Común 60 … Divino 2M; Brainrot 15K, Mutante 150K). Sale I/II/III al azar (60/30/10) directamente a tus manos, y hay que estar al lado de la máquina. El fósil raro de los eventos sigue enterrado en el carril.
- **El fósil se deja haciendo clic** en el suelo de tu base (con un círculo que sigue al ratón y el aviso «Haz clic donde quieras dejar el fósil»); ya no hay botón ni tecla F.
- HUD: botón de Tienda **verde**; velocidad y monedas **más pequeñas** y nueva fila de **tierra**; **quitado el botón Base**; el **contador de arriba** sale grande al entrar y a los 4 s se encoge hacia arriba.
- **Arreglado:** al quitar la compra antigua de velocidad se habían borrado sin querer los manejadores del servidor para dejar fósiles en la base; vuelven a estar.
**Dónde:** `Config.DIRT` (tierra por bloque, precios, `unlockPlot`, `Config.rarityUnlocked`), `Lane.dig` (tierra), `Fossils.buyFromMachine` y `Fossils.place(pos)`, `Bases.place(..., clicked)`, `Data` (`p.dirt`, atributo `Dirt`), `Main` (`BuyFossil`, `PlaceFossil` con posición, comando `/tierra`); mapa `Lobby.FossilMachine`; cliente `Main` (clic para dejar, tierra al cavar, abrir la máquina), `HUD`, `Menus` (ventana de la máquina).
**Probado:** en Play: una palada en la parcela 1 da 7 de tierra y 0 monedas; Épico bloqueado con la pala 1; lejos de la máquina no deja canjear; al lado sale un fósil Raro a las manos; clic fuera de la base rechazado y dentro se deja en el punto exacto; capturas del HUD. Sin errores.
**Notas:** `Config.DIG_VALUE` ya no existe. Los precios en tierra son una propuesta inicial: hay que probarlos jugando.

## 2026-10-19 · bbogatell (Claude) · La velocidad se entrena en una cinta de correr (copiado de «Roba un huevo»)
**Qué:** la velocidad **ya no se compra: se entrena**, como en «Roba un huevo» (datos de varias guías de fans; los números cambian algo entre ellas):
- **Cinta de correr** delante de cada base (al lado de la puerta). Súbete: el personaje se queda mirando al frente y **corre sin moverse** mientras la cinta se mueve. **Cada paso (2 por segundo) suma velocidad**, con «👟 +N» flotando. Para bajarte, pulsa una dirección.
- **11 niveles de cinta, cada uno con su aspecto**: Básica (+2 por paso, gratis), Sci-Fi (+5, 15K), Fuego (+12, 250K), Famoso (+30, 5M), Dorada (+80, 120M), Congelada (+100, 3B), Bloque de la Suerte (+200, 75B), Hacker (+500, 2T), Demoníaca (+1K, 50T), Angelical (+2K, 1Qa) y Astral (+3K, 15Qa). Al lado, un **cartel «Mejora · Nivel N > Nivel N+1»** con el precio en dinero y en Robux (49 … 1.299 R$; el 8 → 9 cuesta 799, como en la referencia). Se mejora con E (dinero) o R (Robux).
- **Rastros** (tienda, en orden, con dinero): multiplican cada paso de ×1,5 a ×20 (100 … 5Qa) y se ven detrás del personaje.
- **Multiplicadores de Robux** para siempre: x2 por 3 R$, x4 por 9, x8 por 29, x16 por 79, x32 por 199, x64 por 399 y x128 por 799. La oferta azul del HUD enseña siempre el siguiente.
- **De velocidad a carrera:** empiezas a 16 studs/s; 900 → 28, 10K → 55, 100K → 87, 1M → 119, 1B → 218, 20B → 260; tope 400. Fórmula: 16 + 14,23 · ln(1 + v/700). El HUD enseña la velocidad entrenada (p. ej. «620K»).
- Fuera lo antiguo: correr más rápido con monedas, el «+1 nivel» y el pase «Correr VIP». Quien los tuviera empieza a entrenar desde 0 (las monedas y la pala se quedan).
**Dónde:** `Config.TRAINING` (cintas, rastros, multiplicadores, pasos por segundo), `Config.walkSpeedOf`, `Config.perStep`, productos generados `Config.PRODUCTS.Tread2-11` y `SpeedX2…SpeedX128` (IDs a 0). Servidor nuevo: `DiamondServer.Training` (modelo de cada cinta, cartel con avisos, pasos, mejoras, rastros, multiplicadores). `Data`: `p.training` (atributos `SpeedStat`, `Tread`, `Trail`, `SpeedMult`). `Main`: `UpgradeTread`, `BuyTrail`, recibos, comando `/velocidad`. Cliente nuevo: `StarterPlayerScripts.TreadFx` (subirse y correr en la cinta, cinta moviéndose); `Main` (velocidad desde `SpeedStat`, avisos `Step` y `TreadUp`), `HUD` (velocidad entrenada y oferta del siguiente multiplicador), `Menus` (pestaña Velocidad: cinta destacada, cinta con Robux, rastro y multiplicadores).
**Probado:** en Play: en la cinta 2 pasos por segundo a +2 cada uno; mejorar 7 veces con dinero hasta la Hacker (negra y verde neón); rastro y x2 → 1.500 por paso (500 × 1,5 × 2); la tienda enseña el siguiente nivel a 50T o 799 R$. Sin errores.
**Notas:** crear en el Creator Dashboard los productos de las 10 mejoras de cinta y de los 7 multiplicadores y poner sus IDs en `Config.TRAINING`. No he copiado las pociones ni los packs de «1.000 millones de velocidad» de «Roba un huevo».

## 2026-10-19 · bbogatell (Claude) · Movimiento sin inercia de verdad: arranca y para en seco
**Qué:** al dejar de pulsar, el personaje **se para de golpe** (antes, a mucha velocidad, se deslizaba un rato) y al pulsar **arranca ya a toda velocidad**, como en «Roba un huevo». Girar también es instantáneo. Sigue cortándose lo que añadan los choques y los golpes del bate siguen empujando.
**Dónde:** cliente `DiamondClient.Main`, apartado «Movement»: la velocidad horizontal es siempre la dirección que pulsas × tu velocidad, o cero si no pulsas nada.
**Probado:** en Play a velocidad 600: de 0 al máximo en 0,014 s (un fotograma) y al soltar W se para en 0 s, sin deslizarse (0 studs).

## 2026-10-19 · bbogatell (Claude) · Velocidad sin inercia (como «Roba un huevo»), obstáculos atravesables y HUD nuevo
**Qué:**
- **Velocidad como en «Roba un huevo»:** siempre corres a tu velocidad, sin mantener Shift, y la animación es siempre la misma de correr, a un ritmo fijo. **Sin inercia:** si al chocar el motor de físicas te lanza, esa velocidad extra se corta en el mismo fotograma, así que ya no sales volando contra las paredes. Tampoco te caes ni haces el muñeco de trapo al chocar. Los golpes del bate siguen empujando (0,7 s de margen).
- **Se atraviesa todo lo que estorba al correr** (1.550 piezas): arcos, carteles y adornos de las 15 parcelas, bordillos, barandillas y muretes de la llegada al campo, columnas del portón; en el lobby, vallas, postes y puertas de las bases, barandillas, flores, tienda, cofre, rankings, estatua y bordillos; en el campo, la valla visible, el arco, el marcador y los pilones. Siguen chocando los suelos, las paredes de los acantilados, las barreras invisibles, el techo, la escalera del campo y la barrera del evento.
- **HUD nuevo, copiado de la referencia:**
  - Izquierda, a media altura: botón grande rojo «🛒 Tienda» y debajo la oferta azul «⚡ Correr VIP x1,3 · SOLO 299 R$», que desaparece si ya lo tienes.
  - Abajo a la izquierda, en grande: tu pala, tu velocidad (zapatilla con un «+» que abre la tienda de velocidad) y tus monedas en verde.
  - Derecha: botones cuadrados **Base** (nuevo: te lleva a tu base, salvo si llevas un fósil), Diario, VIP, Invitar y Ajustes.
**Dónde:** cliente `DiamondClient.Main` (apartado «Movement»: velocidad, animación, anti-inercia; `knockUntil` en `Knock`), `DiamondClient.HUD` (columna izquierda, estadísticas y botones de la derecha nuevos; `HUD.promoBtn`, `speedBtn`, `levelBtn`, `baseBtn`); servidor `Main` (`GoBase`). Mapa: `CanCollide = false` en los adornos (lista arriba); `ServerStorage.LaneKit.buildPlot` lo aplica solo al rehacer una parcela.
**Probado:** en Play, corriendo a 600 de lado contra la pared del carril durante 3 s: te paras en la pared y no subes ni un stud. «Base» te lleva a tu base. Capturas del HUD. Sin errores.
**Notas:** el ajuste «Correr con Shift» ya no hace nada (siempre corres).

## 2026-10-19 · bbogatell (Claude) · Fuera el prado, techo invisible, objetos (bate, alfombra, trampas, hielo) y tienda nueva
**Qué:**
- **Quitado el prado** delante del lobby (donde estaba el campo del diamante): ahora hay **montañas de studs** que suben desde la barandilla, y una barrera invisible en el borde del lobby.
- **Techo invisible** en todo el mapa a y = 222: nadie puede subir demasiado (la alfombra además se para en 210).
- **Bate** (gratis, todos lo tienen): ahora **se noquea con el bate, no con la pala**. Golpea al jugador que tengas delante, lo empuja y, si lleva un fósil, le quita «vida» (el daño de tu pala).
- **Alfombra Mágica** (pase de Robux): al equiparla aparece bajo tus pies y **vuelas** hacia donde mires: WASD o el joystick, Espacio para subir, Ctrl o Q para bajar, Shift para el turbo; en móvil, botones ▲ ▼.
- **Trampas de Oso** (Robux, se gastan: packs de 3 y 10): se dejan en el suelo delante de ti y quien las pise (menos tú) **se queda atrapado 5 s**; como mucho 5 tuyas a la vez y duran 3 min.
- **Poder de Hielo** (Robux, se gasta: packs de 3 y 10): **congela 5 s** al jugador más cercano (18 studs), con un rayo y un bloque de hielo.
- **Tienda rehecha**, siguiendo las tiendas de simuladores de Roblox: cabecera con el título, tus monedas y el botón de cerrar; a la izquierda las categorías con icono y nombre (**Palas, Velocidad, Objetos, VIP, Monedas**); en cada una, un **artículo destacado** grande (la siguiente pala, correr más rápido, la alfombra, x2 monedas, el mejor pack) y debajo una **cuadrícula de tarjetas** con su estado (equipada, tuya, precio en verde o rojo, bloqueada, «tienes N»).
- Al aparecer en tu base miras hacia fuera y la puerta es más alta, para que no tape la cámara.
**Dónde:** mapa: `Map.Meadow` borrado, `Map.FrontMountains` (140 bloques), `Map.SkyLimit` (techo), barrera nueva en `Map.Bounds` (z −139); bases: `GateTop`/`GatePost` más altos y `Spot` mirando a +Z. `Config.ITEMS`, `Config.PASSES.MagicCarpet`, `Config.PRODUCTS.Traps3/Traps10/Freeze3/Freeze10` (IDs a 0). Servidor nuevo: `DiamondServer.Items` (herramientas, golpe del bate, trampas, hielo, `stun`, alfombra). `Main`: herramientas al aparecer, compras, el remote `Hit` de la pala ya no hace nada, comando `/objetos`. `Data`: `p.items` (atributos `Traps`, `FreezeCharges`). Cliente: `StarterPlayerScripts.CarpetFly` (vuelo), `Main` (la pala solo cava, avisos `Stunned` y `FreezeBeam`), `Menus` (tienda nueva y gancho de prueba `DebugOpenMenu`).
**Probado:** en Play: `/objetos` da las 4 herramientas; la alfombra sube hasta 210 y vuela por el carril; la trampa se queda en el suelo y descuenta una; el bate hace su animación; compras simuladas de la alfombra y las trampas; capturas de las pestañas Palas, Velocidad y Objetos. Sin errores. **Sin probar con 2 jugadores:** que la trampa y el hielo atrapen a otro y que el bate empuje y tire el fósil.
**Notas:** crear en el Creator Dashboard el pase «Alfombra Mágica» y los productos de trampas y hielo, y poner sus IDs en `Config`.

## 2026-10-19 · bbogatell (Claude) · Velocidad máxima al correr: 600
**Qué:** el nivel 100 de correr más rápido baja de 900 a **600**. Siguen siendo 100 niveles, los 10 primeros igual (30 → 55); el resto de la curva se suaviza: nivel 25 = 101, 50 = 218, 75 = 384, 90 = 508. Los precios no cambian.
**Dónde:** `Config.SPEED.run.curve`.
**Probado:** en Play: nivel 100, WalkSpeed 600 y 605 studs recorridos en 1 s.

## 2026-10-19 · bbogatell (Claude) · Correr más rápido: 100 niveles, el 100 a 900
**Qué:** correr más rápido pasa a **100 niveles**. Los 10 primeros igual (30 → 55); luego la curva se acelera hasta **900 en el nivel 100** (nivel 25 = 110, 50 = 278, 75 = 541, 90 = 745). Precios: nivel 1 = 4.000, 10 = 53,5K, 25 = 4M, 50 = 5,4B, 75 = 7,3T, 90 = 551T, 100 = 9,8Q (más o menos un día de lo que generan los mejores bichos).
**Dónde:** `Config.SPEED.run` (`max` 100, `curve`, `price`).
**Probado:** en Play: comprar los 100 niveles seguidos (el 101 dice «nivel máximo»); corriendo, WalkSpeed 900 y 907 studs recorridos en 1 s.

## 2026-10-19 · bbogatell (Claude) · Correr más rápido: 50 niveles (el 50, exagerado)
**Qué:** correr más rápido pasa de 10 a **50 niveles**. Los 10 primeros siguen igual (30 → 55); desde el 11 cada nivel sube más que el anterior: nivel 20 = 90, 30 = 144, 40 = 217 y **50 = 310** (10 veces lo normal). Con el pase Correr VIP, ×1,3. Precios nuevos que crecen más despacio para que el último encaje con la economía de las palas: nivel 1 = 4.000, 10 = 325K, 20 = 43M, 30 = 5,7B, 40 = 754B, 50 = 99,8T.
**Dónde:** `Config.SPEED.run` (`max` 50, `curve` = velocidad de cada nivel, `price`), `Config.speedOf` (usa `curve` si existe).
**Probado:** en Play: comprar niveles seguidos hasta el 49; corriendo, WalkSpeed 300 y 305 studs recorridos en 1 s.

## 2026-10-19 · bbogatell (Claude) · Solo se mejora correr, pestaña «Velocidad» en la tienda y comando /dinero
**Qué:** ya no se puede comprar andar más rápido (andar se queda en 16); solo **correr más rápido** (10 niveles con monedas, +1 nivel con Robux) y el pase **Correr VIP** (×1,3, ahora solo al correr). La velocidad tiene su **propia pestaña en la tienda** (icono del brazo, entre Palas y VIP) en vez de estar dentro de VIP. Comando nuevo **`/dinero <cantidad>`** para darte monedas (admite `5000`, `5k`, `2.5m`, `1b`, `3t`).
**Dónde:** `Config.SPEED.walk` (máx. 0), `Config.speedOf` (el pase solo para correr), quitado `Config.PRODUCTS.SpeedWalk`, `Config.PASSES.SpeedPass` renombrado; cliente `Menus` (pestaña `velocidad`, la de VIP queda con x2 Monedas y los packs); servidor `Main` (comando `/dinero`).
**Probado:** en Play: `/dinero 2.5m` por el chat da 2.500.000; comprar andar dice «nivel máximo»; correr sí; con el pase andar sigue a 16; la pestaña Velocidad tiene sus 3 tarjetas y en VIP ya no hay velocidad.
**Notas:** quien hubiera comprado niveles de andar los conserva guardados, pero ya no hacen nada.

## 2026-10-19 · bbogatell (Claude) · Bases más grandes e iguales, fósiles en el suelo donde quieras y «abrir ya» con Robux
**Qué:**
- **Bases nuevas, iguales para todos:** 50×50 studs (antes el hoyo era de 28×28), una plataforma de studs con borde blanco, puerta en la parte delantera, postes con farol en las esquinas y el cartel del dueño en alto. **Quitado el decorado por nivel de pala** (`PlotDecor` ya no se usa). Recolocadas para que quepan: x ±33 y ±95, z −310 y −426. Apareces dentro de tu base.
- **El fósil se deja donde quieras de tu base:** al entrar en ella con un fósil sale el botón **«📍 DEJAR FÓSIL AQUÍ [F]»** y se deja en el suelo delante de ti (ya no se entrega solo). Caben 12 cosas y tiene que haber 5 studs entre una y otra. El bicho sale en el mismo sitio.
- **Animación al abrirse:** el fósil **levita** un poco, **gira despacio**, **se ilumina** cada vez más y **suelta partículas** (trocitos que caen y una neblina de su color), cada vez más fuerte según pasa el tiempo; en el último 10 % se agrieta y tiembla. Cuenta atrás encima.
- **Abrir ya con Robux:** al acercarte a un fósil tuyo sale «⚡ Abrir ya (Robux)» (tecla R; solo lo ve el dueño). El precio depende de lo que le queda: 9 R$ (< 10 min), 29 (< 1 h), 79 (< 6 h), 149 (más). Los IDs están a 0: en Studio se simula y en el juego publicado dice «Próximamente».
**Dónde:** mapa `Lobby.PlotFrames.Plot1-8` rehecho (`Platform`, `Border`, `Post`, `Lamp`, `GatePost`, `GateTop`, marcadores invisibles `Floor` y `Spot`); copia de las antiguas en `ServerStorage.PlotFramesBackup`; 52 baldosas tapando los huecos de los hoyos viejos. `Config.BASE` (`slots` 12, `half` 25, `floorY` 19, `minGap` 5), `Config.PRODUCTS.OpenNow1-4` y `Config.openNowProduct`. Servidor: `Bases` reescrito (posiciones `ox`/`oz` en `p.base.slots`; las partidas guardadas con pedestales se colocan solas en cuadrícula; `requestOpen`/`grantOpen`), `Fossils.place` (atributo `InOwnBase`), `Plots` (sin decorado ni terreno), `Main` (`PlaceFossil`, recibos de `OpenNow`). Cliente: `Main` (botón y tecla F), `BaseFx` reescrito (levitar, girar, brillo, partículas, grietas).
**Probado:** en Play: apareces en tu base; fuera de la base no sale el botón y dentro sí; dejar un fósil (queda delante, flotando, con luz y partículas); no deja poner otro a menos de 5 studs; «abrir ya» simulado → sale el bicho (Velocirraptor). Captura con 4 fósiles abriéndose. Sin errores.
**Notas:** crear los 4 productos «Abrir ya» en el Creator Dashboard y poner sus IDs en `Config.PRODUCTS.OpenNow1-4`.

## 2026-10-19 · bbogatell (Claude) · Arreglada de verdad la pala que colgaba de la mano (pala repetida al entrar)
**Qué:** la entrada anterior se equivocaba: el problema **no era StreamingEnabled**. Desde el gran cambio el servidor tarda más en arrancar (rellena los 15 hoyos), así que el jugador que ya estaba dentro se procesaba **dos veces** (por `PlayerAdded` y por el bucle final de `Main`) y recibía **dos palas**. La primera se borraba pero dejaba en la mano una unión `RightGrip` vieja, y `DigAnim` movía esa en vez de la buena: la pala colgaba recta y la animación de cavar se veía mal. Arreglado por los dos lados y **StreamingEnabled vuelve a estar activado**.
**Dónde:** `DiamondServer.Main` (`onPlayer` solo una vez por jugador, tabla `joined`), `ReplicatedStorage.DigAnim` (`updateGrip` usa la `RightGrip` cuya pieza es el `Handle` de la herramienta que llevas y borra las que se han quedado sin pieza), `Workspace.StreamingEnabled = true`.
**Probado:** en Play, sin tocar nada desde que apareces: una sola `RightGrip`, la pala a 0,74 studs de la mano izquierda (antes 2,2) y cogida con las dos manos; igual a mitad de una palada. Con y sin streaming. Captura.

## 2026-10-19 · bbogatell (Claude) · La pala vuelve a ir cogida con las dos manos (StreamingEnabled desactivado)
**Qué:** desde el gran cambio la pala colgaba recta de la mano con la hoja en el suelo, y la animación de cavar se veía mal. La causa era **StreamingEnabled**: con él, el cliente ve la soldadura de la mano (`RightHand.RightGrip`) sin su pieza (`Part1` vacío), y `DigAnim` no puede colocar la pala en la mano izquierda. Lo he vuelto a desactivar y la pala vuelve a estar como antes.
**Dónde:** `Workspace.StreamingEnabled = false`. No se ha tocado `DigAnim` ni `ShovelLook`. Los arreglos para streaming (estatua `Persistent`, `WaitForChild`, botón «Superficie» calculado con `Config`) se quedan: no molestan.
**Probado:** en Play: la pala queda a 0,7 studs de la mano izquierda, como manda la animación (con streaming estaba a 2,2). Capturas antes y después.
**Notas:** si algún día se quiere StreamingEnabled (el brief lo pedía), antes hay que hacer que `DigAnim` no dependa de esa soldadura, por ejemplo con su propia soldadura creada en el cliente.

## 2026-10-19 · bbogatell (Claude) · Quitada la roca realista entre el portón y la parcela 1
**Qué:** detrás de la antigua pared del fondo del lobby quedaba terreno realista (roca, hasta y=34) que se veía al cruzar el portón del carril. Borrado, y también cualquier terreno por encima del suelo del carril fuera de los hoyos (plazas, caminos y acantilados de las 15 parcelas).
**Dónde:** terreno: x ±210, z −440…−576 (portón y plaza de la parcela 1); en cada parcela, la plaza y los lados con |x| > 68, de y 14 a 186. Los hoyos no se han tocado.
**Probado:** recorrido de todo el carril cada 4 studs: no queda terreno por encima de y=20 fuera de los hoyos; captura desde el portón.

## 2026-10-18 · bbogatell (Claude) · Gran cambio, fase 6: mejoras de velocidad
**Qué:** en la tienda (pestaña VIP, apartado «Velocidad») se compra con monedas **andar más rápido** y **correr más rápido** (10 niveles cada uno: andar 16 → 31, correr 30 → 55). Con Robux: **+1 nivel de andar**, **+1 nivel de correr** (productos) y el pase **Velocidad VIP** (×1,3 para siempre). Los IDs están a 0 (en Studio la compra se simula). Se guarda en el perfil (`p.speed`).
**Dónde:** `Config.SPEED` (precios y pasos), `Config.speedOf`, `Config.PASSES.SpeedPass`, `Config.PRODUCTS.SpeedWalk/SpeedRun`; servidor `Main` (`BuySpeed`, Robux y `ProcessReceipt`), `Data` (atributos `SpeedWalk`/`SpeedRun`); cliente `Menus` (tarjetas) y `Main` (velocidad real, menos el peso del fósil que llevas).
**Probado:** en Play: comprar 2 niveles de andar (cobra 2.500 + 11.500), +1 de correr y el pase simulados: velocidad 16 → 24,7. Sin errores.

## 2026-10-18 · bbogatell (Claude) · Gran cambio, fases 4 y 5: fósiles, bichos y bases
**Qué:**
- **Fósiles:** al cavar en el carril puede salir uno (6 % por palada): primero la rareza con la tabla de la parcela y luego I/II/III (60/30/10; 50/30/20 en la última parcela de cada rareza). Se coge con **E**, se lleva **encima de la cabeza** y frena según su peso (−10/−20/−30 %, raros −35 %). **No se venden.** Si te pegan con la pala le quitan «vida» (60; cada golpe resta el daño de la pala del que pega): a 0 se cae y cualquiera lo puede coger. También se cae si mueres o te vas.
- **Evento de fósiles raros (★/★★):** `/evento` (o el atributo `ReplicatedStorage.FossilEventRequest`, o `Config.FOSSIL_EVENT.schedule`) entierra **un solo fósil raro por servidor** en una parcela al azar, con un **haz de luz** hasta el cielo. El primero que cava al lado lo saca y se avisa a todo el servidor; mientras lo lleva tiene **contorno visible a través de las paredes**. Dan bichos dos rarezas más arriba y, según la ficha, bichos de Evento (parcelas 11-15, Eternos, Divinos, Pizza Dorada, Mutantes).
- **Bases:** las 8 parcelas del lobby son las bases (una por jugador): el hoyo se cierra con un suelo de studs y hay **10 pedestales** (el decorado por nivel de pala sigue alrededor). El fósil se entrega solo al entrar en tu base y ahí está **a salvo**. Se abre con su tiempo (10 s – 18 h) **aunque estés desconectado**, con cuenta atrás encima; en el último 10 % se agrieta y tiembla; al terminar explota y sale el **bicho** (I mitad baja, II cualquiera, III mitad alta + 10 % de la rareza siguiente; Divino repite y se queda el mejor; Brainrot/Mutante según su ficha). Los bichos **generan monedas cada segundo** (lo de `BICHOS_DINOSAURIOS.md` × `Config.CREATURE_INCOME_MULT`) y se pueden **vender** (mantener E: lo que generan en 60 s) para hacer sitio. El cartel de la base dice de quién es y cuánto genera.
- **Modelos provisionales:** fósiles (roca de studs del color de su rareza con hueso, huella, cráneo… en relieve; luz y partículas según el tipo; los raros con contorno) y bichos (dinosaurio de bloques con la forma que sugiere su nombre, colores y tamaño de su rareza, luz y partículas), con una etiqueta con su nombre real. Si existe `ServerStorage.Models.Fosiles.<id>` o `ServerStorage.Models.Bichos.<id>`, se usa ese modelo.
**Dónde:** `Config.Creatures` (198 bichos), `Config.Fossils` (13 rarezas, 60 fósiles con id, tamaño, tiempo, aspecto y reglas especiales), `Config.FOSSIL`, `Config.BASE`, `Config.FOSSIL_EVENT`; servidor nuevo: `DiamondServer.Fossils`, `DiamondServer.Bases`, `DiamondServer.Looks`; cambiados `Main` (arranque, golpes en el lobby y el carril —no en el campo—, comandos), `Data` (`p.base`), `Plots` (sin terreno ni minerales); cliente: `Main` (avisos), `StarterPlayerScripts.BaseFx` (cuenta atrás, grietas y temblor).
**Probado:** en Play: dar un fósil R-III, llevarlo (velocidad 16 → 11,2), entregarlo en la base, abrirlo (Iguano Pulgar, mitad alta), vender; evento: haz de luz, cavar hasta él, aviso, cogerlo, abrirlo (Poco común ★★ → Carno Toro, Épico); 59 paladas en la parcela 7 → 8 fósiles de sus rarezas; `/fosil C-III` por el chat. Sin errores. **Sin probar:** quitar fósiles a golpes con **2 jugadores**, la cuenta atrás y las grietas vistas en pantalla, y el guardado real (en Studio el DataStore está apagado).

## 2026-10-18 · bbogatell (Claude) · Gran cambio, fase 3: 30 palas nuevas, pala mínima por parcela y economía nueva
**Qué:** las 30 palas tienen los **nombres y rarezas de `PALAS.md`** (de Pala de Rama de Helecho a Pala Divina del Diamante; 10 rarezas, 3 palas cada una). Radio, ritmo y daño son los de antes; los **precios se han recalculado** para la economía de los bichos: abrir la parcela siguiente cuesta lo que generan 6 bichos típicos de tu parcela durante 4 min (parcela 1) … 2 h (parcela 14); las palas pares cuestan el 45 % de la impar siguiente (de 2.200 a 68T). **La parcela N pide la pala 2N−1 o mejor**: con una peor sale «¡DEMASIADO DURO!» y no se cava. Cavar en el carril da monedas (`Config.DIG_VALUE`, de 1 a 310M por bloque según la parcela). La tienda muestra qué parcela abre cada pala. Si alguien deja un modelo final en `ServerStorage.Models.Palas.<id>` (con una pieza `Handle`), se usa ese en vez del de `ShovelLook`.
**Dónde:** `Config.SHOVELS` (tabla escrita a mano, fácil de cambiar), `Config.DIG_VALUE`, `Config.shovelDamage` (lee la tabla), `DiamondServer.Lane.dig`, `DiamondServer.Shovels.build`, cliente: `Main` (avisos), `Menus` (tarjetas de la tienda), `HUD` (nombre de la pala), `DebugLevelKey`.
**Probado:** en Play: con la pala 1 se cava en la parcela 1 y da monedas; en la parcela 2 sale «demasiado duro»; comprar las palas 2 y 3 y cavar en la parcela 2. Sin errores.
**Notas:** quien tenía partida guardada conserva su pala y sus monedas. Las parcelas personales ya no pagan minerales escondidos.

## 2026-10-18 · bbogatell (Claude) · Gran cambio, fase 2: carril de 15 parcelas y el campo al final
**Qué:** detrás del lobby hay un **portón** («PARCELAS · FÓSILES», donde estaba la mina) que lleva a un **carril de 15 parcelas compartidas**, una detrás de otra (z −520 a −3040). Cada parcela: plaza con **arco** (número y nombre), **cartel con la pala necesaria** (texto + modelo 3D de la pala), hoyo de **terreno realista de 112×112×32** con los materiales del documento, caminos de studs a los lados, acantilados y montañas de studs con los colores de su tema, partículas de ambiente y su decorado (dodo gigante, nenúfares, amonites y gotas de ámbar, cañón con huellas, selva con braquiosaurio y cascada, bloques de hielo con mamuts, volcán humeante, puente-esqueleto de mosasaurio, arcos de costillas y calaveras, cuevas de cristal, templo con columnas y guardianes, islas flotantes, rocas flotantes y dragón fracturado, planetas y constelación, trono del T-Rex Galáctico con portal dorado). El decorado crece con el número de parcela. Al entrar en una parcela cambia el ambiente (tinte, niebla; noche en la 14). **El campo del diamante se ha movido al final del carril** (centro z −3208, girado para que la escalera dé al carril), con plaza de llegada, barandilla y montañas alrededor. Donde estaba el campo ahora hay un **prado de studs** con un estanque; cerrado el hueco de la escalera del lobby. Los hoyos se **regeneran** cada 5 min o al cavar el 80 %: aviso 8 s antes y quien esté dentro sale al borde. Activado **StreamingEnabled**.
**Dónde:** mapa nuevo `workspace.Map.Lane` (`Gateway`, `Plot01`…`Plot15` con `Floor`, `Cliffs`, `Arch`, `ShovelSign`, `Ambience`, `Decor`; `FieldEnd`) y `workspace.Map.Meadow`; generadores en `ServerStorage.LaneKit` y `ServerStorage.LaneThemes` (solo en Edit). Servidor: `DiamondServer.Lane` (terreno, cavar, regenerar, textos de arcos y carteles). Cliente: `StarterPlayerScripts.LaneFx` (ambiente). `Config.LANE`, `Config.PLOTS` (las 15 parcelas: nombre, tema, terreno, colores, ambiente, % de fósiles), `Config.TERRAIN_COLORS`, `Config.plotCenter/plotAt`, `Config.FIELD_CENTER` (el `Event` ya usa el nuevo centro). Borrados: la mina, la pared del fondo del lobby en el portón, la barrera invisible del fondo y las montañas que tapaban el carril. Copia del terreno del campo en `ServerStorage.FieldTerrainBackup`.
**Probado:** en Play: llegar a las parcelas 2 y 10 con streaming (carteles con su pala), cavar, regenerar con el jugador dentro (sale al borde). Capturas del carril (parcelas 1, 7, 15) y del campo nuevo. Sin errores. **Sin probar:** el evento del diamante en su nuevo sitio y la cinemática final.
**Notas:** con StreamingEnabled el cliente no tiene todo el mapa: usar `WaitForChild`/`FindFirstChild` o cálculos con `Config` (la estatua del lobby es `Persistent`). Terreno: el color de un material es global, por eso cada parcela usa materiales distintos (`Config.TERRAIN_COLORS`).

## 2026-10-18 · bbogatell (Claude) · Gran cambio, fase 1: fuera gnomos, talismanes y cavar en las parcelas personales
**Qué:** primera fase del gran cambio (carril de 15 parcelas, fósiles y bichos). Quitados del todo los **gnomos** (aparición, música de persecución, contador, alarma, `/gnomo`, nodo de la mina y grupos de colisión `Gnome`/`MineGate`, que se creaban desde el script) y los **talismanes** (pedestales, llevar/robar, intercambio con F, panel de mejoras, atributos `Buff_*`, `/talisman`). **Migración:** al cargar el perfil se borran los talismanes guardados; se mantienen el nivel (pala) y las monedas. Las **8 parcelas personales ya no se cavan** (aviso «Aquí no se cava»): en la fase 5 serán las bases.
**Dónde:** borrados `DiamondServer.Gnomes`, `DiamondServer.Talismans`, `StarterPlayerScripts.GnomeFx`, `StarterPlayerScripts.TalismanFx`, `DiamondClient.TalismanUI`, `ReplicatedStorage.TalismanLook`. Limpiados `Main` (servidor y cliente), `Config` (sin `TALISMAN_*`, `GNOME*`, `gnomeReach`), `UIKit` (sin los sonidos del gnomo), `Data` (`p.talismans = nil` al cargar) y `Plots.hit` (devuelve `noDig`). Golpear a otros jugadores sigue funcionando (servirá para robar fósiles).
**Probado:** en Play, sin errores en la consola; cavar en tu parcela devuelve `noDig` y sale el aviso.
**Notas:** el campo del diamante se mueve en la fase 2 (al final del carril). El comando de Debug `simpit` se ha quitado (era de los hoyos personales).

## 2026-10-18 · seguo970 (Claude) · Arreglados huecos y grietas del mapa
**Qué:** la escalera al campo ya no tiene un hueco arriba por el que se veía el vacío (un escalón más, a media altura) y ahora se puede subir andando del campo al lobby sin saltar. Rellenadas las grietas por las que se veía el vacío entre las paredes del lobby y las montañas (esquina este lobby/campo y detrás de la pared del fondo). Revisado todo el entorno del lobby y del campo cada 4 studs: no quedan columnas vacías ni terreno realista a la vista.
**Dónde:** `Field.Stairs` (2 `Step` nuevos en z −163 y −165; el de −165 queda bajo el suelo del lobby), `Mountains.Fill` (+239 bloques de 4×4 a la altura media de lo que los rodea).
**Probado:** en Play: bajar y subir la escalera andando; capturas de las dos esquinas y del fondo. Sin errores.
**Notas:** desde muy alto se ve el cielo por encima del borde del mundo (las montañas acaban en ±640); desde el suelo no se ve.

## 2026-10-18 · seguo970 (Claude) · Quitada la piedra que asomaba en la esquina lobby/campo
**Qué:** ya no asoma una roca de terreno realista entre los bloques en la esquina del lobby con el campo. Revisado todo el mapa columna a columna (cada 4 studs): no queda terreno visible fuera de las parcelas y del campo.
**Dónde:** terreno borrado en las dos esquinas (|x| 148…212, z −160…−120, y −16…80); 21 restos más tapados o recortados por todo el mapa (17 bloques nuevos en `Mountains.Fill`).
**Probado:** capturas de las dos esquinas, sin piedra. No se ha tocado el lobby ni el campo.

## 2026-10-18 · seguo970 (Claude) · Sin hierbitas saliendo entre las baldosas
**Qué:** ya no sale hierba realista entre las baldosas de studs alrededor del campo. Solo queda hierba con briznas dentro de la barrera del campo del diamante.
**Dónde:** terreno: `Grass` y `LeafyGrass` → `Ground` (no tiene briznas) en todo el mapa salvo el campo (|x|, |z| < 120). Terreno borrado (y −8…60) debajo de las baldosas de `Field.StudRing` (fuera de ±124), donde antes quedaban franjas sin limpiar.
**Probado:** capturas desde la franja de la valla: sin briznas fuera de la barrera. No se ha tocado nada dentro del campo.
**Notas:** la hierba con briznas sale de los materiales de terreno `Grass`/`LeafyGrass`; si hace falta terreno fuera del campo, usar `Ground`.

## 2026-10-18 · seguo970 (Claude) · Todo el mapa en studs salvo las parcelas y el campo
**Qué:** regla nueva de estilo: **solo el interior de las parcelas de los jugadores y el recuadro del campo del diamante (dentro de la barrera, ±122) tienen textura realista**; todo lo demás es de studs. Quitados los 4 árboles junto al cartel grande. Valla de madera y farolillos del campo cambiados por valla y farolas de bloques con studs (mismas posiciones, con paredes invisibles para que sigan frenando igual). Arco «Campo del Diamante», marco, postes y letrero del cartel grande, escalera, bordes de las parcelas y cabeceras de los rankings pasan de madera/piedra realista a plástico con studs (mismos colores); las rocas de la base de los postes son bloques de piedra. El suelo de studs alrededor ahora llega hasta la barrera (incluye la franja de la valla y el talud entre las columnas del sur), y ya no asoma césped realista entre las baldosas ni en la escalera. Tapados restos de terreno detrás de las paredes del lobby y en las esquinas.
**Dónde:** `Field.Jumbotron` (sin `BigTree`, `PostBase` nuevos), `Field.Arch` (`PostBase`), `Field.Stairs`, `Field.Walkway.StudFence` (raíles, postes, farolas, `FenceCollider` invisibles; se borraron las MeshParts `Fence` y `Lantern`), `Field.StudRing` rehecho (872 baldosas + 1 al pie de la escalera), `Mountains.Fill` (278 bloques de relleno), `Lobby.PlotFrames.*.Rim`, `Lobby.Boards.*.Header`. Todas las Parts del mapa con material realista (Wood, WoodPlanks, Cobblestone, Basalt…) → SmoothPlastic + textura de studs. Terreno: borrado por encima del fondo de cada baldosa y en la escalera. Copias: `ServerStorage.FieldPropsBackup` (cartel, arco, escalera y valla originales), `ServerStorage.FieldRingBackup` (terreno).
**Probado:** en Play: bajar la escalera hasta el campo, andar por la franja de fuera, la valla frena por el este y el norte. Sin errores. **Sin probar:** el evento (cavar dentro del campo) y la cinemática final.
**Notas:** al terreno del campo se le ha dejado la hierba realista solo dentro de la barrera. Si alguien añade algo nuevo al mapa, usar la textura `rbxassetid://6348166067` (2 studs por casilla).

## 2026-10-18 · seguo970 (Claude) · Suelo de studs alrededor del recinto del diamante
**Qué:** la hierba realista que rodea el recinto del campo (fuera de la valla de madera, hasta las montañas de bloques) y el talud bajo la barandilla del lobby **fuera de las columnas de las esquinas** ahora son baldosas de studs de 8×8 en los mismos verdes que el lobby, en escalones donde el terreno subía. **No se ha tocado** el interior del recinto (valla, pasarela, barrera y campo), ni el talud entre las dos columnas del sur, ni la escalera ni el arco.
**Dónde:** nuevo `workspace.Map.Field.StudRing` (575 baldosas con colisión, sin sombras). Terreno realista borrado por encima de cada baldosa (lo de debajo queda oculto). Zona: |x| de 134 a 176 y z de −140 a 176, más z 134…176 por el norte; talud del sur (z −140…−125) solo con |x| > 124. Copia del terreno original en `ServerStorage.FieldRingBackup`.
**Probado:** en Play: andar por la franja este sobre las baldosas, sin errores. Los FPS no cambian con o sin las baldosas.
**Notas:** misma textura que el suelo del lobby (`rbxassetid://6348166067`, 2 studs por casilla). Para deshacer: borrar `StudRing` y `Terrain:PasteRegion(FieldRingBackup, Vector3int16.new(-44, -4, -35), true)`.

## 2026-10-18 · seguo970 (Claude) · Mina centrada y los gnomos salen de la mina
**Qué:** quitado el trozo de montaña de bloques que asomaba en la esquina del fondo izquierda del lobby (ahora se ven las paredes con pinos) y los restos de terreno liso que flotaban encima. La entrada de la mina queda centrada con el camino central y el túnel es negro por dentro (ya no se ven ladrillos ni hiedra). Los gnomos ya no aparecen en un punto al azar: salen siempre de la mina y bajan por el camino central.
**Dónde:** `workspace.Mountains.LobbyBack` borrado (85 bloques). Terreno por encima de y=36 borrado en todo el lobby (x ±208, z −528…−136). `Lobby.Cliffs.Mine` movida +4 en X (atributo `Centered`), `Mine.Dark` adelantado a z=−469,7; `Props.Gutter` de la mina movida +4; 2 ladrillos de relleno en `Cliffs.Back` (x=−14). `DiamondServer.Gnomes`: nodo 14 = entrada de la mina (0, −455) unido al nodo 8; aparecen en (0, −466) dentro del túnel. Grupos de colisión nuevos: `Gnome` y `MineGate` (la barrera invisible del fondo, `Bounds` en z=−454, deja pasar a los gnomos pero no a los jugadores).
**Probado:** en Play: gnomo legendario y normal salen de la mina y recorren el camino central; el jugador sigue parado por la barrera en z≈−451. Sin errores.
**Notas:** si se mueve la barrera del fondo o la mina, revisar `MINE_SPAWN`/nodo 14 en `Gnomes` (el script busca la barrera por posición, z≈−454 y x≈0).

## 2026-10-18 · seguo970 (Claude) · Montañas nevadas de bloques con studs
**Qué:** las montañas de terreno liso que rodean todo el mapa (hierba, roca y nieve) ahora son de bloques cuadrados con textura de studs, en escalones de 16×16 studs y 8 de alto. Siguen la misma forma y altura que antes: hierba en verde, roca en gris y nieve en blanco arriba (casquete de 8 studs sobre roca).
**Dónde:** nuevo `workspace.Mountains` (~5.200 piezas, sin colisión ni sombras, fuera de `Map` para que la cinemática final no las mueva una a una). Terreno de las montañas borrado fuera de la zona de juego (y ≥ −16): todo fuera de x ±208 / z −528…192, los lados del campo más allá de los muros (|x| > 176) y las crestas detrás de la pared del fondo del lobby. **No se ha tocado** el terreno del lobby, de las parcelas ni del campo del evento. `DiamondServer.Finale` (`buildHell`): también destruye `Mountains` al pasar al infierno. Copia del terreno original en `ServerStorage.MountainsBackup` (TerrainRegion).
**Probado:** en Play: sin errores, 60 FPS con y sin las montañas. Capturas desde el lobby y el campo. **Sin probar:** la cinemática final/infierno y en móvil.
**Notas:** misma textura que el lobby (`rbxassetid://6348166067`) pero a 4 studs por casilla para que se vean de lejos. Para deshacer: borrar `workspace.Mountains` y pegar `MountainsBackup` con `Terrain:PasteRegion(backup, Vector3int16.new(-160, -10, -160), true)`.

## 2026-10-18 · bbogatell (Claude) · Sin texto «PARCELA LIBRE»
**Qué:** las parcelas sin dueño ya no muestran título flotante. Las ocupadas siguen mostrando nivel, terreno y nombre del jugador.
**Dónde:** `DiamondServer.Plots` → `setSign` (el BillboardGui `Title` se desactiva si no hay dueño).
**Probado:** en Play: 7 parcelas libres sin texto, la propia con «TIERRA».

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

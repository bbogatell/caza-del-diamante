# Registro de cambios

> El más nuevo arriba. Formato en [`CLAUDE.md`](CLAUDE.md).

## 2026-10-29 · bbogatell (Claude) · Bicho 122 · Dunkleosteus (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y amenazador**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 15,6 studs y tiene 575 piezas. Es un **pez acorazado colosal** que nada sobre el fondo marino. Tiene la **cabeza cubierta de una armadura gruesa de placas gris acero con remaches** (más de 50 placas, 4 remaches cada una), **ojos pequeños azules brillantes** con aro de metal y una **mandíbula de cuchillas de hueso blancas** abierta, con colmillos arriba, abajo y a los lados. El **cuerpo es azul acero** y alargado, con escamas en rombo, barriga clara, línea lateral de neón, aletas dorsales, anal y pectorales y una **cola de pez** con radios brillantes. Está sobre el **fondo de un mar prehistórico** con rocas, algas, amonites y conchas, con un **banco de peces pequeños** dando vueltas. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: burbujas (ritmo 80), corriente (ritmo 50), chispas al cerrar la mandíbula, destellos metálicos (ritmo 40), polvo marino (ritmo 40), gotas, ondas, peces huyendo (ritmo 10) y **2 luces**. **Animaciones:** flota nadando (`Float`) y las aletas pectorales son `Wing` y reman; `Chomp`: **cierra la mandíbula de golpe soltando chispas** (`ChompFx`); y `Charge`: **embiste hacia delante con la cabeza acorazada** (`ChargeFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.Dunkleosteus` → `Models.Bichos["122"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la mandíbula se mueve 42° al morder y la cabeza se desplaza en la embestida. Sin errores en la consola.
- **Notas:** el siguiente es el 123 (Centaurosaurio); su hoja ya se ha pedido.

## 2026-10-29 · bbogatell (Claude) · Bicho 121 · Experimento #001 (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y amenazador**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 16,8 studs y tiene 569 piezas. Es un **dinosaurio enorme cosido de partes distintas**: una **cabeza de raptor verde** (con un cuerno, ojos verdes brillantes y la boca abierta con dientes), un **cuerpo de triceratops gris** a cuatro patas con parches de varios tonos y una **cola de anquilosaurio marrón** con pinchos, placas y **maza**. Tiene **suturas negras** por todo el cuerpo y en las uniones de las partes, **tornillos plateados** en el cuello, el lomo y las patas, y un **tanque de cristal en la espalda** con **líquido verde neón**, tapas atornilladas y **tubos** morados y verdes que entran en el cuerpo. Está en un **laboratorio secreto** con baldosas, charcos verdes, tanques de cultivo, monitores, cables y tubos rotos. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: chispas eléctricas (ritmo 80), rayos (ritmo 10), vapor (ritmo 40), burbujas del tanque (ritmo 40), gotas (ritmo 30), humo (ritmo 40), destellos (ritmo 30), luz parpadeante, ondas y **2 luces**. **Animaciones:** `Rear`: **recibe una descarga eléctrica y se pone en pie rugiendo** (`StompFx` y `QuakeFx` son chispas y rayos); y `TailSlam`: **golpea con la maza de la cola** (`SlamFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.Experimento001` → `Models.Bichos["121"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la cabeza sube 4,8 studs al alzarse y la maza se mueve 8,7 respecto al cuerpo al golpear. Sin errores en la consola.
- **Notas:** el siguiente es el 122 (Dunkleosteus); su hoja ya se ha pedido.

## 2026-10-29 · bbogatell (Claude) · Bicho 120 · Medusaurio Puro (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y mágico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 18 studs y tiene 641 piezas. Es un **dinosaurio enorme** (un saurópodo de **cristal blanco brillante** con luces rosas y azules, cristales de neón en el lomo y una cola que se enrosca con flecos) cuya **cabeza es una campana de medusa semitransparente** que brilla, con líneas y puntos de luz y un borde rosa, ojos brillantes y **28 tentáculos largos de neón rosa, azul y lila pastel** colgando. Alrededor flotan **orbes de luz**. Está en un **arrecife de coral** en el fondo del mar con arena, corales de varias formas y colores, algas, conchas y rocas. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: pulsos de luz (ritmo 2), burbujas (ritmo 80), destellos (ritmo 60), polvo marino (ritmo 40), corriente (ritmo 30), luz pulsante, orbes (ritmo 20), gotas y **2 luces**. **Animaciones:** `GlowMove = "bellow"`: **la campana late y suelta pulsos de luz** (la campana y sus líneas llevan `GlowColor`, con `GlowFx` en anillos); y `TakeOff`: **flota hacia arriba ondulando los tentáculos** (`TakeOffFx`). Los tentáculos son piezas `Head`.
- **Dónde:** `ServerStorage.CreatureBuilders.Medusaurio` → `Models.Bichos["120"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la campana cambia de color y el cuerpo sube 2,8 studs al flotar. Sin errores en la consola.
- **Notas:** la campana es solo una carcasa (no tiene piezas dentro) para que el contorno del `Highlight` no dibuje rayas a través de ella. El siguiente es el 121 (Experimento #001); su hoja ya se ha pedido.

## 2026-10-29 · bbogatell (Claude) · Bicho 119 · Gargolasaurio (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y amenazador**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 17,8 studs y tiene 508 piezas. Es un **raptor gigante de piedra gris agazapado encima de una columna gótica**: piedra a bloques con **grietas** y **musgo verde**, pinchos en el lomo, garras de piedra agarrando el capitel, **alas de murciélago de piedra** medio plegadas (con dedos, membrana de placas y musgo) y una cola larga que se enrosca columna abajo y acaba en una hoja. La cabeza (×1,3) tiene **cuernos curvos**, **ojos rojos de neón**, cejas, gorguera y la boca abierta con dientes. La columna tiene arcos góticos con ventanas iluminadas, ganchos y musgo, sobre el **tejado de una catedral** con pináculos y charcos de lluvia. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: polvo de piedra (ritmo 60), lluvia (ritmo 80), murciélagos (ritmo 5), relámpagos (ritmo 2), destellos de los ojos, piedrecitas (ritmo 20), niebla y **2 luces**. **Animaciones:** `WingBurst`: **la piedra se agrieta y despierta abriendo las alas** (`BurstFx` de trozos de piedra, `BurstLight`); y `TakeOff`: **salta de la columna y planea** (`TakeOffFx`). No se pasea (`NoWander`).
- **Dónde:** `ServerStorage.CreatureBuilders.Gargolasaurio` → `Models.Bichos["119"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: sube 3,6 studs al saltar, las alas se mueven 3,8 respecto al cuerpo y la columna no se mueve. Sin errores en la consola.
- **Notas:** el siguiente es el 120 (Medusaurio Puro); su hoja ya se ha pedido.

## 2026-10-29 · bbogatell (Claude) · Bicho 118 · Megalodón Mutante (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y amenazador**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 17 studs y tiene 525 piezas. Es un **megalodón gigantesco gris** que **camina erguido sobre patas musculosas de dinosaurio** con garras, con bracitos con garras, barriga blanca, branquias, aleta dorsal, aletas pectorales y cola de tiburón. Está cubierto de **cicatrices rojas cosidas** y de **placas de metal atornilladas** (cuatro tornillos cada una). Tiene **un ojo mecánico** (cuenca y anillo de metal con tornillos, luz roja y un cable) en un lado y un ojo normal en el otro, y una **boca enorme abierta** con filas de dientes, lengua y babas. Está en un **muelle industrial roto** junto al mar: tablones, pilotes, charcos, chatarra, bidones (algunos con señal de peligro) y una grúa oxidada con luz roja. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: agua (ritmo 80), gotas (ritmo 50), chispas del ojo (ritmo 30), burbujas (ritmo 40), saliva (ritmo 30), temblor al pisar (ritmo 40), humo (ritmo 30), destellos y **2 luces**. **Animaciones:** `Chomp`: **corre y da un mordisco gigante** (`ChompFx`); `Uncoil`: **el ojo mecánico se ilumina y escanea con un láser rojo** (piezas `CosmicBeam` que van con la cabeza, `BeamFx`); y `HeadSnap`: gira la cabeza a tirones, como un robot.
- **Dónde:** `ServerStorage.CreatureBuilders.MegalodonMutante` → `Models.Bichos["118"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el láser se enciende (transparencia 0,15) y la cabeza se mueve al morder y caminar. Sin errores en la consola.
- **Notas:** el siguiente es el 119 (Gargolasaurio); su hoja ya se ha pedido.

## 2026-10-29 · bbogatell (Claude) · Bicho 117 · Plesio Eléctrico (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y amenazador**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 17,6 studs y tiene 481 piezas. Es un **plesiosaurio enorme con cuerpo de anguila eléctrica** a **franjas amarillas y negras** (con escamas, galones, cresta y la barriga clara), con un **cuello largo en S** que sale de un **lago oscuro y tormentoso**, cuatro aletas a franjas, la cola enroscada, **ojos azul eléctrico** y la boca abierta con dientes y brillo azul. En el lomo lleva **cuatro bobinas Tesla plateadas** (base, anillos, toroide y bola de energía con rayos) unidas por **arcos eléctricos** (`Beam`). El lago tiene olas, rocas y agujas de piedra. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: rayos (ritmo 20), chispas (ritmo 100), arcos eléctricos (7 `Beam`), destellos (ritmo 60), agua (ritmo 40), burbujas (ritmo 40), humo (ritmo 30), luz parpadeante, ondas y **2 luces**. **Animaciones:** `GlowMove = "flare"`: **las bobinas se cargan y lanza una descarga eléctrica enorme** (`GlowColor` en las bolas, `GlowFx`); y `Breach`: **se sumerge y sale del agua soltando chispas** (`DiveFx`; la barriga escondida bajo el agua sale al saltar). No se pasea (`NoWander`).
- **Dónde:** `ServerStorage.CreatureBuilders.PlesioElectrico` → `Models.Bichos["117"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: las bolas de las bobinas cambian de color (0,47), el cuerpo sale del agua 4,4 studs y el lago no se mueve. Sin errores en la consola.
- **Notas:** el siguiente es el 118 (Megalodón Mutante); su hoja ya se ha pedido.

## 2026-10-29 · bbogatell (Claude) · Bicho 116 · Ala de Cristal (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y amenazador**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 17 studs y tiene 660 piezas. Es un **pterosaurio gigante** posado en lo alto de un **pico de cristales negros y rosas**, con las **alas desplegadas en V** hechas de **cientos de fragmentos de cristal negro unidos por energía rosa de neón**: cada ala tiene un hueso del borde con articulaciones rosas, una garra y 45 fragmentos con uniones brillantes y líneas de energía entre ellos (los de fuera flotan un poco separados, con `Drift`). Tiene el cuerpo de cristal negro facetado con vetas rosas, patas con garras rosas, la cabeza agrandada (×1,45) con **cresta de cristales**, **pico largo** con filo rosa y **ojos rosas brillantes**, y una cola de cristal. Alrededor flotan trozos de cristal. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: fragmentos girando (ritmo 40), chispas rosas (ritmo 80), destellos (ritmo 60), rayos entre fragmentos (ritmo 5), polvo de cristal (ritmo 50), estrellas, viento, luz pulsante y **2 luces**. **Animaciones:** `WingBurst`: **las alas se rompen en fragmentos que giran y se vuelven a juntar** (`BurstFx`, `BurstLight`); y `TakeOff`: **bate las alas lanzando una ráfaga de cristales** (`TakeOffFx`). No se pasea (`NoWander`).
- **Dónde:** `ServerStorage.CreatureBuilders.AlaCristal` → `Models.Bichos["116"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: sube 3,4 studs al batir las alas, los fragmentos se separan hasta 9,8 studs y vuelven, y el pico no se mueve. Sin errores en la consola.
- **Notas:** el siguiente es el 117 (Plesio Eléctrico); su hoja ya se ha pedido.

## 2026-10-29 · bbogatell (Claude) · Bicho 115 · Megaloceros Espíritu (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y majestuoso**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 18,4 studs y tiene 511 piezas. Es un **ciervo gigantesco y majestuoso de blanco espiritual**, con patas largas y finas, pezuñas doradas, orejas y **ojos rosas brillantes**. Lleva unas **astas doradas enormes abiertas como alas**, muy ramificadas, con **flores de cerezo** rosas en las puntas y las ramas. Tiene un **manto de enredaderas verdes** con flores rosas sobre el lomo, con lianas colgando y hojas en las patas y el cuello. Está en un **claro de bosque sagrado** con musgo, un arroyo y una cascadita, **piedras con runas** moradas, un **torii** rojo, **farolillos de papel** y arbustos en flor. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: pétalos (ritmo 100), orbes de espíritu (ritmo 30), luz espiritual, mariposas (ritmo 20), destellos dorados (ritmo 50), hojas (ritmo 40), farolillos (ritmo 5), rayos de luz y **2 luces**. **Animaciones:** `Rear`: **se alza y las astas florecen soltando una lluvia de pétalos** (`StompFx` y `QuakeFx` son pétalos); y `GlowMove = "flare"`: **hace una reverencia y los farolillos se encienden** (los farolillos y las flores llevan `GlowColor`, con `GlowFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.MegalocerosEspiritu` → `Models.Bichos["115"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la cabeza sube 2,4 studs al alzarse y los farolillos cambian de color (1,11). Sin errores en la consola.
- **Notas:** el cuerpo es opaco: con piezas semitransparentes, el contorno del `Highlight` de los Secretos dibuja rayas por dentro. El siguiente es el 116 (Ala de Cristal); su hoja ya se ha pedido.

## 2026-10-29 · bbogatell (Claude) · Bicho 114 · Rompefauces (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y amenazador**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 17,4 studs y tiene 754 piezas. Es un **monstruo colosal negro** de bloques, a cuatro patas, con **garras de neón morado**. Su cabeza es una **boca que se abre en cuatro mandíbulas como una flor de dientes** (arriba, abajo, izquierda y derecha): cada pétalo tiene un borde de bloques negros, **filas de dientes blancos** apuntando hacia dentro y el **interior de neón morado**, con una garganta brillante en el centro y ojos morados encima. Del lomo y la cola le salen **cristales negros con borde morado**. Está en el **borde de una grieta** que brilla morada en zigzag, con losas rotas, escombros y **rocas flotando** a su alrededor. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: succión de partículas hacia la boca (ritmo 80), fragmentos (ritmo 30), chispas moradas (ritmo 50), destellos (ritmo 40), humo (ritmo 40), rayos (ritmo 5), polvo, ondas y **2 luces**. **Animaciones:** el pétalo de arriba va con la cabeza, el de abajo es la mandíbula y los de los lados son piezas `Frill`; `Frill`: **abre las cuatro mandíbulas y lo succiona todo** (`Spit` delante de la boca, hacia dentro); y `GlowMove = "flare"`: **los cristales de la espalda brillan y lanza rayos** (`GlowColor`, `GlowFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.Rompefauces` → `Models.Bichos["114"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: los pétalos de la boca se abren 2,3 studs y los cristales cambian de color (0,8). Sin errores en la consola.
- **Notas:** el siguiente es el 115 (Megaloceros Espíritu); su hoja ya se ha pedido.

## 2026-10-29 · bbogatell (Claude) · Bicho 113 · Espino Cósmico (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico e imponente**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 18,6 studs y tiene 616 piezas. Es un **espinosaurio gigantesco azul noche** hecho de bloques, a cuatro patas, con **garras enormes de neón morado** (las delanteras más largas, con la punta rosa), una cresta morada, ojos brillantes y un **hocico largo de cocodrilo** con dientes blancos. En el lomo tiene una **vela colosal que es una ventana al espacio**: espinas azules con puntas de neón morado y, entre ellas, un panel oscuro lleno de estrellas con una **galaxia en espiral** brillante y nebulosa en el centro (por los dos lados). La cola tiene una vela baja. Está en un **charco de agua cósmica brillante** con estrellas reflejadas y rocas, con **planetas en órbita**. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: estrellas de la vela (ritmo 100), nebulosa (ritmo 40), polvo cósmico (ritmo 60), cometas (ritmo 5), destellos (ritmo 50), agua cósmica (ritmo 40), rayos de luz, ondas y **2 luces**. **Animaciones:** `GlowMove = "flare"`: **la vela se ilumina y dispara una lluvia de estrellas** (las estrellas y la galaxia llevan `GlowColor`, con `GlowFx`); y `Dive`: **se lanza al agua cósmica y atrapa un pez de luz** (`DiveFx`; el pez de la boca también brilla).
- **Dónde:** `ServerStorage.CreatureBuilders.EspinoCosmico` → `Models.Bichos["113"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la cabeza baja 6,9 studs al zambullirse y las estrellas de la vela cambian de color (0,43). Sin errores en la consola.
- **Notas:** el siguiente es el 114 (Rompefauces); su hoja ya se ha pedido.

## 2026-10-29 · bbogatell (Claude) · Bicho 112 · Jefe Esqueleto Cósmico (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico e imponente**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 17,6 studs y tiene 451 piezas. Es un **esqueleto colosal de T-Rex** de huesos blanco hueso: columna con pinchos, pelvis, patas de huesos con rótulas y garras, bracitos, cola de vértebras con costillitas y un cráneo enorme (×1,25) con fenestras, dientes grandes y las fauces abiertas con brillo morado. Tiene las **costillas abiertas** y **dentro del pecho una galaxia que gira** (núcleo brillante y cuatro brazos de estrellas de neón morado, azul y blanco), y **ojos cian de neón** con llamas cian. Lleva **fragmentos de armadura cósmica** (placas oscuras con borde de neón y un cristal) en hombros, lomo, cráneo, patas y cola. Está sobre un **asteroide flotante** con cráteres que brillan, cristales y rocas por debajo, con **planetas en órbita** (dos con anillo) y asteroides pequeños girando. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: estrellas saliendo del pecho (ritmo 80), polvo cósmico (ritmo 60), polvo de hueso (ritmo 40), cometas (ritmo 5), nebulosa (ritmo 30), destellos (ritmo 40), llamas cian en los ojos (ritmo 30), rugido y **2 luces**. **Animaciones:** la galaxia es un `Ring` con `RingFollow = "body"`; `Roar`: **ruge y la galaxia del pecho explota en estrellas** (`RoarFx` en el pecho); y `Stomp`: **pisotón cósmico** (`StompFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.EsqueletoCosmico` → `Models.Bichos["112"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la galaxia gira dentro del pecho (las estrellas se mueven 4,2 studs respecto al cuerpo), los planetas dan la vuelta y la cabeza se mueve al caminar y rugir. Sin errores en la consola.
- **Notas:** el siguiente es el 113 (Espino Cósmico); su hoja ya se ha pedido.

## 2026-10-29 · seguo970 (Claude) · Pala 19: Pala de Cuarzo montada y animada
**Qué:** la pala 19 es el modelo `Pala19_Cuarzo.glb`: hoja de cristales rosas y cian, mango de roca morada casi negra con trenzado y setitas que brillan, y dos cristales que orbitan con su anillo.
- **Materiales:**
  - Roca: Basalt #2E1F45; el trenzado en un tono más claro.
  - Cristales: Glass rosa y cian, con núcleos Neon que brillan desde dentro.
  - Setas: sombrero Neon cian y tallo SmoothPlastic.
  - Anillos: Neon lila.
- **Animación:**
  - Los dos cristales orbitan el mango a 0,6 rad/s, giran sobre su eje largo (1,5 rad/s) y suben y bajan. Cada anillo acompaña a su cristal.
  - Los núcleos y las luces (rosa en la cabeza, cian en el collar y en el pomo) pulsan cada 2,4 s.
  - Las setas parpadean un poco.
- **Efectos:**
  - Esporas cian que suben desde el mango.
  - Destellos rosas y cian en la cabeza y esquirlas flotando alrededor de la hoja.
  - Chispas eléctricas cian a lo largo del mango que salen a ratos.
  - 25 esquirlas al sacarla.
- **Al cavar:** esquirlas rosas y cian, polvo morado y un destello de la luz de la cabeza.
**Dónde:**
- `ReplicatedStorage.Models.Palas.L19`: escala ×1,3 (6,8 studs). La mano izquierda va justo encima del pomo y la derecha queda bajo el collar. Los Attachments del prompt (Tip, HeadCenter, Pommel, OrbitCenter) están en el `Handle`.
- `StarterPlayerScripts.ShovelFx`:
  - Nuevo bloque `ShovelZap`: Beams que se encienden 0,25 s cada 1–3 s con una curva al azar.
  - Nueva función `crystalDig` en `DIG_FX.L19`.
  - `Crystals_Pink` añadida a la búsqueda de la hoja.
- El modelo importado se ha movido a `ServerStorage.Pala19_Cuarzo`.
**Probado:** en Play con `Debug "level" 19`: se equipa, las órbitas se mueven, las chispas y las partículas salen, y el efecto de cavar funciona. Sin errores. No se ha mirado en la tienda, en móvil ni con otro jugador.
**Notas:** no se han hecho la animación propia de cavar (usa la del juego), el balanceo en la mano, el sonido ni el ajuste por calidad gráfica.

## 2026-10-29 · seguo970 (Claude) · Pala 22: el diamante de la boca apunta hacia fuera
**Qué:** el diamante rojo de la boca de la pala 22 está en el mismo sitio, pero girado: la punta sale desde el fondo de la mandíbula hacia fuera de la boca, en vez de apuntar hacia abajo.
**Dónde:** `ReplicatedStorage.Models.Palas.L22.DiamanteBoca` y `DiamanteBocaBrillo` (orientación), y el `C0` de su Motor6D `DiamanteFlota`. Sigue girando sobre su eje (ahora el eje de la punta).
**Probado:** en Play. La punta queda alineada con la línea bisagra → diamante (0,99). Visto de lado: apunta a la abertura de la boca.

## 2026-10-29 · seguo970 (Claude) · Pala 22: sin lengua, con un diamante rojo flotando en la boca
**Qué:** se han quitado la lengua y la bola roja de la garganta de la pala 22. En su lugar, un diamante rojo flota entre las mandíbulas: gira despacio, sube y baja, brilla por dentro y suelta destellos rojos. Los dos agujeros de la nariz eran de la misma pieza y también se han ido.
**Dónde:**
- `ReplicatedStorage.Models.Palas.L22`:
  - Ya no tiene `Mouth_Interior`. Las dos versiones (la original y la de la lengua fina) están en `ServerStorage` como `Mouth_Interior_L22_antigua` y `Mouth_Interior_L22_fina`.
  - Piezas nuevas: `DiamanteBoca`, que es el diamante del juego (`ReplicatedStorage.Assets.Diamond`) sin textura, en Glass rojo #E00012 y de 0,55 studs; y `DiamanteBocaBrillo`, su núcleo Neon.
  - El Motor6D `DiamanteFlota` lleva la etiqueta `ShovelOrbit`, con SpinSpeed 70 y Bob 0,05.
**Probado:** en Play con `Debug "level" 22`. Visto de cerca: el diamante queda en la boca abierta, entre los dientes, sin tocar las mandíbulas. Al cavar sigue saliendo el efecto y no hay errores.

## 2026-10-29 · seguo970 (Claude) · Pala 22: lengua más fina y garganta más pequeña
**Qué:** en la boca del T-Rex de la pala 22, la lengua es ahora fina y la bola roja de la garganta que había antes de la lengua es la mitad de grande, pegada al fondo de la boca.
- **Lengua:** 0,12 de grosor (antes 0,27) y 0,15 de ancho (antes 0,26), sin mover la raíz ni la punta.
- **Garganta:** ×0,5.
**Dónde:**
- La pieza `ReplicatedStorage.Models.Palas.L22.Mouth_Interior` es la nueva, hecha con `tools/modelos/L22/lengua_fina.py` (Blender) a partir del GLB e importada como `Pala22_Lengua.glb`.
- La pieza antigua está guardada en `ServerStorage.Mouth_Interior_L22_antigua`.
**Probado:** visto en Studio (Edit) con una copia de la pala. No se ha probado en Play después del cambio, pero la pieza va soldada al `Handle` igual que antes.

## 2026-10-28 · seguo970 (Claude) · Pala 22: normales al revés arregladas
**Qué:** la pala 22 tenía las normales al revés y se veía hueca desde algunos ángulos. Ahora se ve sólida.
**Dónde:** `ReplicatedStorage.Models.Palas.L22`: `DoubleSided = true` en las 35 MeshParts. Es el mismo arreglo que en la pala 10.
**Probado:** en Play con `Debug "level" 22`. Se ve sólida, también la cabeza vista de lado.

## 2026-10-28 · seguo970 (Claude) · Pala 22: Pala del Guardián Rex montada y animada
**Qué:** la pala 22 es el modelo `Pala22_GuardianRex.glb`, la versión de las 23:43, no la del zip. Es una cabeza de T-Rex de oro con la boca abierta y los ojos rojos, un mango de oro con rubíes, una melena de plumas rojas y un pomo de garra con rubí. A su alrededor orbitan 5 rubíes con anillo y 7 monedas.
- **Materiales:**
  - Oro: Foil #FFC247.
  - Rubíes: Glass rojo; los que orbitan llevan dentro un núcleo Neon.
  - Ojos: Neon.
  - Boca: Neon rojo oscuro.
  - Plumas: rojo; el cañón de las plumas en Foil.
- **Animación:**
  - La mandíbula respira (±4° cada 3 s).
  - Las dos capas de la melena ondulan ±3°, desfasadas.
  - Los rubíes y las monedas orbitan el mango a 0,5 rad/s; giran sobre sí mismos (las monedas a 3 rad/s) y suben y bajan. Cada anillo acompaña a su rubí.
  - Los ojos cambian de brillo y las luces rojas pulsan cada 2 s.
- **Efectos:** chispas doradas alrededor de la cabeza, monedas brillantes, brasas rojas, destellos sobre los rubíes y una ráfaga dorada al sacarla.
- **Al cavar:** la mandíbula muerde (se cierra 18°) y salen lluvia de monedas y chispas doradas. Sin temblor de cámara.

**Dónde:**
- `ReplicatedStorage.Models.Palas.L22`: escala ×1,4 (unos 7,2 studs). La mano izquierda va justo encima de la garra del pomo.
- Los Attachments del prompt (ojos, boca, bisagra, melena, punta, rubí del pomo) están en el `Handle`. El JSON `_info.json` no venía, así que están sacados de la geometría.
- `StarterPlayerScripts.ShovelFx`: nueva función `coinDig` en `DIG_FX.L22` y `Skull_Gold` añadida a la búsqueda de la hoja.
- El modelo importado está en `ServerStorage.Pala22_GuardianRex`. Se había importado dos veces y la copia sobrante se ha borrado.

**Probado:** en Play con `Debug "level" 22`:
- Se equipa.
- La mandíbula cierra hacia el cráneo.
- Las órbitas y la melena se mueven.
- El efecto de cavar sale.
- Sin errores.

No se ha mirado en la tienda, en móvil ni con otro jugador.

**Notas:**
- La melena cubre casi toda la mitad de arriba del mango, así que la mano derecha queda entre las plumas. Para que las dos manos quepan por debajo, la pala tendría que medir unos 12 studs.
- No se ha añadido el Highlight de contorno oscuro (no queremos contornos) ni el temblor de cámara, el sonido o el balanceo en la mano.

## 2026-10-28 · seguo970 (Claude) · Palas 17 (Costilla de Gigante) y 18 (Sepulturero) montadas y animadas
**Qué:** las dos palas son los modelos importados de sus prompts. Sin texturas subidas: solo materiales de Roblox y colores del prompt.

**Pala 17, Costilla de Gigante:**
- **Aspecto:** hueso marfil en Limestone (hoja de omóplato, mango de vértebras, calaveras y fragmentos), vendas de Slate oscuro, garras y dientes claros, y ojos de Neon verde con luz que pulsa.
- **Pomo:** la mandíbula de la calavera se abre y cierra (0–12°) y se abre del todo al cavar.
- **Calaverita flotante:** da una vuelta al mango cada 8 s, sube y baja, castañetea y deja una estela de fuego verde.
- **Fragmentos:** 25 trozos de hueso flotan, giran sobre sí mismos y se desplazan un poco alrededor del mango.
- **Efectos:** fuego verde en los bordes de la hoja (partículas y Beams con textura de llama), en el collar y en el pomo; niebla; polvo de hueso con chispas verdes; y polvo al sacarla.
- **Al cavar:** polvo de hueso con una llamarada verde.

**Pala 18, Sepulturero:**
- **Aspecto:** hoja de hierro negro, mango de madera, cadenas de acero, cruz y calavera de piedra, y ojos Neon que cambian de color.
- **Farol:** cuelga de la argolla del collar y siempre hacia abajo en el mundo, como un péndulo. Se balancea (±6°, 1,5 Hz), reacciona al moverse sin pasar de 35° y tiene la llama y la luz verde parpadeando, con chispas.
- **Efectos:** fuego verde en la hoja, el pomo y las cadenas de abajo; niebla en el mango; almas verdes (humo) y motas flotando; y 5 piedrecitas oscuras girando alrededor del mango.
- **Al cavar:** llamarada verde y almas que suben.

**Dónde:**
- `ReplicatedStorage.Models.Palas.L17`: ×1,3. La mano izquierda va sobre la calavera del pomo y la derecha queda bajo las garras del collar. La malla `Handle` del modelo se llama ahora `HandleMesh`.
- `ReplicatedStorage.Models.Palas.L18`: ×1,15. La mano izquierda va sobre la cruz del pomo. El farol lleva el Motor6D `Farol` con la etiqueta `ShovelHang`.
- `StarterPlayerScripts.ShovelFx`:
  - `ShovelOrbit` acepta `Bob`/`BobPeriod`/`BobPhase`.
  - Nuevo bloque `ShovelHang` (atributos HangDir, Sway, SwayHz, MaxTilt).
  - Nuevas funciones `boneDig` (L17) y `soulDig` (L18).
- Los modelos originales se han movido a `ServerStorage.Pala17_CostillaGigante` y `ServerStorage.Pala18_Sepulturero`.

**Probado:** las dos en Play con `Debug "level" 17/18`:
- Se agarran por el mango.
- Las mandíbulas abren hacia fuera; la de la calaverita salía al revés y se ha corregido.
- El farol cuelga recto (máximo 41° al caminar y cavar).
- Los efectos de cavar salen.
- Sin errores.

En la 17 se han bajado las luces verdes, la niebla y los Beams, porque tapaban el hueso.

No se ha mirado en la tienda, en móvil ni con otro jugador.

**Notas:**
- No se ha hecho lo siguiente:
  - El escaparate con fondo carmesí en Workspace.
  - La variable `VFX_QUALITY`.
  - Los fragmentos que salen disparados al cavar (solo giran más rápido).
  - El sonido.
  - La KeyframeSequence propia: usan la animación de cavar del juego.
- La pala 17 mide ~8,4 studs para que quepan las dos manos debajo de las garras.

## 2026-10-28 · seguo970 (Claude) · Pala 16: Pala de Diente de Megalodón montada y animada
**Qué:** la pala 16 es el modelo `Pala16_MegalodonTooth`, que ya venía importado.
- **El modelo:** la hoja es un diente de megalodón de color marfil con una raíz de piedra. El mango es una espina azul con vértebras de hueso y aletas de tiburón, y acaba en una cola de tiburón. Un pez payaso nada alrededor de la raíz de la hoja.
- **Colores:** los del prompt, con SmoothPlastic y Basalt en la raíz. Sin texturas subidas.
- **Pez payaso:** da una vuelta en elipse cada 4 s, sube y baja ±0,75 y mira hacia donde nada, moviendo un poco el cuerpo. Al sacar la pala sale nadando desde la punta. Si el jugador está quieto, de vez en cuando se para y da una vuelta rápida.
- **Efectos:**
  - Tres hilos de agua cian (Beams) giran alrededor del mango y la raíz.
  - Salen burbujas por la punta, la raíz y la cola, y gotitas a ráfagas.
  - Motas rojas y blancas flotan alrededor.
  - Una luz cian suave pulsa en la hoja.
  - Al sacarla salen 15 burbujas.
- **Al cavar:** sale el mismo chapoteo de burbujas, gotas y destello que en la pala 15, sin temblor de cámara.
**Dónde:**
- `ReplicatedStorage.Models.Palas.L16`: escala ×1,25. La mano izquierda va sobre el final de la espina, cerca de la cola. El pez lleva el Motor6D `PezOrbita` con la etiqueta `ShovelFish`. Los hilos de agua están en la pieza `AguaGiro`, que tiene un `ShovelOrbit`.
- `StarterPlayerScripts.ShovelFx`:
  - Nuevo bloque `ShovelFish` (atributos RadiusX/RadiusZ, Bob, Period, Wiggle, WiggleHz, TipY, Roll).
  - `DIG_FX.L16 = coralDig` y `Blade_Tooth` en la búsqueda de la hoja.
  - `ShovelPulse` en emisores ya no baja de 0, así que un `Min` negativo hace pausas entre ráfagas.
- El modelo original se ha movido a `ServerStorage.Pala16_MegalodonTooth`.
**Probado:** en Play con `Debug "level" 16`:
- La pala se equipa sin errores.
- El pez se mueve y no se mete en la caja de la hoja (pasa como mínimo a 0,41).
- El efecto de cavar sale.
- Luego, mirándola en pantalla: el agarre está bien (manos en la espina) y el pez nada derecho, de perfil.
- Los hilos de agua salían rectos, así que se ha cambiado el signo de `CurveSize1`. Ahora rodean el mango.

No se ha mirado en la tienda, en móvil ni en la mano de otro jugador.
**Notas:**
- Si el pez se tuerce, se endereza con el atributo `Roll` de `PezOrbita`.
- Beams: con las dos `Axis` en la tangente del giro, `CurveSize0` es positivo y `CurveSize1` es negativo.
- El pez nada a unos 1,6 del eje, como pide el prompt; si se ve muy separado, baja `RadiusX`/`RadiusZ`. No se ha añadido sonido de chapoteo ni temblor de cámara.

## 2026-10-28 · seguo970 (Claude) · Pala 15: Pala de Coral Abisal montada y animada
**Qué:** la pala 15 es el modelo `Pala15_CoralAbisal`, que ya venía importado en Workspace. Tiene una hoja de ramas de coral rojo, rosa, magenta y salmón, un mango de hueso con garras, una perla azul brillante abajo, agua en espiral alrededor del mango, 30 burbujas y 3 gotas.
- **Colores y materiales:** los del prompt. Coral en SmoothPlastic; hueso en Marble; perla y agua en Glass. Dentro de la perla hay una esfera Neon azul.
- **Animación:**
  - El agua gira alrededor del mango a 60°/s.
  - Las burbujas y las gotas suben y bajan un poco.
  - La luz azul de la perla pulsa (1,2–1,8 cada 2 s) y la luz rosa de la hoja respira (0,6–1,0).
  - Suelta burbujas en la perla, en la hoja y a lo largo del mango, gotas que caen desde la hoja y destellos en la perla.
  - Al sacarla hace una salpicadura de 15 burbujas.
- **Al cavar:** sale una ráfaga de burbujas y gotas de agua, y la luz rosa de la hoja da un destello. Sin temblor de cámara.
**Dónde:**
- `ReplicatedStorage.Models.Palas.L15`: escala ×1,35. La mano izquierda va justo encima de las garras. Los anclajes del JSON son Attachments en el `Handle`.
- `StarterPlayerScripts.ShovelFx`: nueva función `coralDig` en `DIG_FX.L15`, `Blade_Core` añadida a la búsqueda de la hoja, y atributo `HoldUntil` para que `ShovelPulse` no pise el destello.
- El modelo original se ha movido a `ServerStorage.Pala15_CoralAbisal`.
**Probado:** en Play con `Debug "level" 15`:
- Las dos manos quedan en el mango.
- El agua gira y las burbujas se ven.
- El golpe saca la ráfaga.
- Sin errores en Output.

No se ha mirado en la tienda, en móvil ni en la mano de otro jugador.
**Notas:**
- Sin texturas subidas, Highlight ni KeyframeSequence propia: usa la animación de cavar del juego.
- Las burbujas usan la textura `sparkles_main` de Roblox.
- Si va lenta en móvil, se puede poner `RenderFidelity = Automatic` en el coral.

## 2026-10-28 · seguo970 (Claude) · Pala 14: Pala de Magma importada y animada
**Qué:** la pala 14 es ahora el modelo `PalaDeMagma.glb`: hoja de magma rojo-naranja-amarillo en un marco de bloques de roca negra con tornillos, lava goteando, mango de adoquines volcánicos con grietas de lava y 3 anillos de oro fundido, pomo de roca con banda de oro, y escombros y gotitas flotando.
- **Colores:** los colores por vértice del archivo, que en Roblox se ven, con `Color` blanco. El oro es Foil.
- **Animación:**
  - el magma de la hoja y la lava del mango, del pomo y de las coladas laten entre su color y un tono más cálido, desfasados;
  - luz naranja en la hoja que respira (1,6–2,4 cada 1,5 s) y otra más suave en el pomo;
  - los escombros y las gotitas flotantes orbitan alrededor del mango, cada grupo en un sentido;
  - brasas subiendo, calor tenue;
  - gotas de lava que caen de las coladas y de los anillos de oro (siempre hacia abajo).
- **Al sacarla:** estallido de brasas.
- **Al cavar:** brasas y salpicadura de gotas de lava (sin temblor de cámara).

**Dónde:**
- Nuevo `ReplicatedStorage.Models.Palas.L14`, a escala 1,35 (8,4 studs) para que las manos quepan entre el pomo y el collar.
- `FX_Debris` y `FX_LavaDroplets` van con Motor6D `ShovelOrbit`; el magma y la lava con `ShovelColor`.
- `ShovelFx`: `DIG_FX.L14 = magmaDig`, y se busca `Blade_Magma` para el efecto.
- Original en `ServerStorage.PalaDeMagma`.

**Probado:** en Play con `Debug "level" 14`:
- la mano izquierda va encima del pomo y la derecha al borde del collar;
- la luz late, el color de la hoja cambia y los escombros giran;
- no hay errores en la consola.

Captura en la mano.
**Notas:** antes se había mandado otra versión de esta pala (`PalaMagma`, OBJ de 10 piezas); el importador la juntó en una sola pieza y no se usa. Para eso queda `tools/obj_a_glb.py`, que pasa un OBJ de varias piezas a GLB con Blender sin juntarlas.

## 2026-10-28 · seguo970 (Claude) · Pala 30: planetas de la cabeza colocados en espejo
**Qué:** los 4 planetas grandes de la cabeza de la pala 30 estaban a distancias muy distintas de la hoja (de 0,7 a 1,7 studs). Ahora van en espejo, dos a cada lado: los dos rosas arriba a 1,33 studs del centro de la hoja, y el azul y el morado abajo a 1,59. Siguen girando sobre sí mismos con sus anillos.
**Dónde:** `ReplicatedStorage.Models.Palas.L30`: `Planet_*_Head` y `PlanetRing_*_Head` (posición y `C0` de su Motor6D). **Copia de antes:** `ServerStorage.CopiasPalas.L30_v1`.
**Probado:** captura de frente de la pala sola.

## 2026-10-28 · seguo970 (Claude) · Pala 30 nueva: Pala Divina del Diamante (modelo nuevo, animada)
**Qué:** la pala 30 es ahora el modelo nuevo `PalaDivinaDelDiamante.glb`. Tiene hoja, mango y pomo de diamante, un diamante pequeño brillando dentro de la hoja, alas de cristal, marco y doble halo de oro, gema estrella, cintas arcoíris, 9 planetas, colgantes de estrellas y un T-Rex galáctico diminuto.
- **Materiales:**
  - diamante: Glass sobre el atlas del archivo;
  - diamante interior y gema: Neon;
  - oro y anillos: Foil;
  - planetas: SmoothPlastic con brillo;
  - cintas y T-Rex: su textura del importador.
- **Animación:**
  - las alas ondean como una bandera: la onda va de la raíz a la punta, en espejo;
  - el halo de fuera gira 20°/s y el de dentro −30°/s;
  - los anillos del mango y las cintas giran alrededor de la pala;
  - los planetas giran sobre sí mismos;
  - los 6 colgantes hacen de péndulo;
  - el diamante interior late cada 2,5 s;
  - el T-Rex galáctico camina alrededor del mango (una vuelta cada 6 s), moviendo patas, bracitos, cola, cabeza y mandíbula.
- **Efectos:**
  - halo arcoíris con rayos dorados detrás de la hoja;
  - destellos en la hoja, el halo y las alas;
  - polvo de estrellas cayendo de las alas;
  - una estrella fugaz de vez en cuando;
  - rastro galáctico detrás del T-Rex;
  - luces en la guarda y en el diamante interior;
  - estallido arcoíris al sacarla.
- El efecto al cavar sigue siendo el de las palas divinas.

**Dónde:**
- `ReplicatedStorage.Models.Palas.L30` se sustituye por el modelo nuevo. Los 44 huesos van bajo `RootPart`, soldada a un `Handle` invisible.
- Huesos con la etiqueta `ShovelBone` (alas, colgantes, T-Rex) y piezas rígidas con los Motor6D del importador etiquetados `ShovelOrbit` (halos, anillos, cintas, planetas).
- `ShovelFx`: los `ShovelBone` admiten `Pivot` (girar alrededor de un punto: así el T-Rex rodea el mango) y se busca `Blade_Diamond` para el efecto al cavar.
- **Pala 30 anterior guardada:** `ServerStorage.CopiasPalas.L30_antigua`.
- Original importado en `ServerStorage.PalaDivinaDelDiamante`.

**Probado:** en Play con `Debug "level" 30`:
- la mano izquierda va encima del pomo y la derecha bajo la guarda;
- las alas se mueven hasta unos 15° y los muslos del T-Rex unos 25°;
- el T-Rex recorre 2 studs en 1,6 s alrededor del mango, y el halo gira;
- no hay errores en la consola.

Capturas en la mano y de cerca del T-Rex.
**Notas:** la textura del atlas se ve bien en Play. No se ha probado en móvil (alas con 20 huesos y T-Rex con 17).

## 2026-10-25 · bbogatell (Claude) · Bicho 111 · Tralalerodonte (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y gracioso**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 16,6 studs y tiene 540 piezas. Es un **tiburón-dinosaurio gigante** azul tiburón con la barriga blanca (pectorales y abdominales), branquias, aletas, una **aleta dorsal** grande y cola de tiburón con aleta en media luna. Está **de pie sobre tres patas musculosas** (dos delante y una detrás) con **zapatillas deportivas azul eléctrico**: suela blanca, puntera, lengüeta, cordones y el logo en los lados. Lleva **gafas de sol** negras con brillo, una sonrisa llena de dientes afilados y una **cadena de oro** gruesa con un colgante de diente de tiburón. Está en una **playa de noche** con arena, olas con espuma, conchas, estrellas de mar, una tabla de surf con un rayo y dos palmeras con cocos. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: notas musicales (ritmo 40), agua (ritmo 50), destellos dorados (ritmo 40), burbujas (ritmo 40), confeti (ritmo 30), ondas de baile (ritmo 2), gotas y **2 luces**. **Animaciones:** las tres patas son `FrontLeg` y giran con el cuerpo; `Dance`: **baila moviendo las tres patas con sus zapatillas** (`DanceFx`); y `Tumble`: **salta haciendo un mortal y cae de pie** (`TumbleFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.Tralalerodonte` → `Models.Bichos["111"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: sube 3,7 studs y da la voltereta (gira hasta 151° en las muestras). Sin errores en la consola.
- **Notas:** la hoja de ChatGPT pinta 4 zapatillas; se han hecho las 3 patas de la lista. El siguiente es el 112 (Jefe Esqueleto Cósmico); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 110 · Tiranosaurio Rex (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico e imponente**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 18 studs y tiene 728 piezas. Es **el rey**: un **T-Rex enorme verde oscuro con rayas negras** y la barriga crema a bandas, con musculatura brutal, escamas por todo el cuerpo y **cicatrices de batalla** rojas. Tiene una **cabeza gigantesca** con cejas marcadas, ojos amarillos y **dientes enormes**, en **pose de rugido** con las fauces muy abiertas (lengua y babas colgando), y una **corona dorada ladeada** con gemas. Tiene bracitos de dos garras, **patas como troncos** con garras y una cola gruesa a rayas. Está sobre una **roca enorme de la selva prehistórica** con helechos, piedras y **grietas moradas brillantes** en el suelo. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: rugido en anillo de sonido, polvo al pisar (ritmo 80), piedras que saltan (ritmo 30), saliva (ritmo 20), destellos de la corona (ritmo 30), hojas (ritmo 30), aliento (ritmo 40), brillo de las grietas y **2 luces**. **Animaciones:** `Roar`: **ruge con un anillo de sonido que hace temblar todo** (`RoarFx`); y `Stomp`: **pisotón que agrieta el suelo** (`StompFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.TiranosaurioRex` → `Models.Bichos["110"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la mandíbula se abre 40° más al rugir y el pie sube 0,8 studs en el pisotón. Sin errores en la consola.
- **Notas:** en el rig la mandíbula se abre con ángulo negativo, así que para una pose de boca abierta el constructor la gira en negativo. El siguiente es el 111 (Tralalerodonte); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 109 · Guardián del Anillo (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico e imponente**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 17 studs y tiene 535 piezas. Es un **ceratopsio gigante a cuatro patas con armadura completa de caballero**: placas plateadas con **ribete y remaches dorados** por todo el lomo, los costados y la cola, hombreras en capas con pincho, grebas con bandas doradas y rodilleras, y un peto con un **escudo heráldico** azul con cruz dorada. En la cabeza lleva un **yelmo** con cresta y **visera de rendijas** por la que brillan los ojos rojos, y de él salen los **dos cuernos grandes** (con anillas doradas) y el cuerno de la nariz. La **gola es un gran escudo** de placas con borde dorado, pinchos dorados, remaches y un emblema con gema azul; el cuerpo es gris. Detrás flota un **anillo de piedra gigantesco** que gira, con **runas azules de neón** y rocas flotando. Está en una **plaza de piedra antigua** con losas, estrado, escalones, columnas en ruinas y antorchas. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: runas del anillo (ritmo 30), chispas azules (ritmo 50), destellos metálicos (ritmo 40), polvo (ritmo 30), rayos del anillo (ritmo 5), estrellas (ritmo 30), una luz azul y **2 luces**. **Animaciones:** el anillo son piezas `Ring` que giran alrededor de su eje; `Uncoil`: **el anillo gira 6 veces más rápido y dispara un rayo de runas** (piezas `CosmicBeam` y `BeamFx`); y `Charge`: **embiste con los cuernos del yelmo** (`ChargeFx`, `StompFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.GuardianAnillo` → `Models.Bichos["109"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: las piedras del anillo dan la vuelta (se desplazan 17 studs), el rayo se enciende (transparencia 0,4) y el yelmo se mueve hasta 14,9 en la embestida. Sin errores en la consola.
- **Notas:** el siguiente es el 110 (Tiranosaurio Rex); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 108 · Wendigosaurio (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y terrorífico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 18,8 studs y tiene 524 piezas. Es un **terópodo altísimo y escuálido** de piel gris ceniza hecha jirones sobre un **costillar al aire** (9 costillas por lado y esternón), con columna de vértebras con pinchos y patas largas y flacas con los huesos marcados y rodilleras de hueso. Tiene el **cráneo descarnado blanco hueso** con las cuencas oscuras, **ojos blancos de neón**, la mandíbula abierta llena de dientes, una **cornamenta de ciervo gigante** marrón oscuro, ramificada y con muchas puntas, y **garras larguísimas** (tres tramos por dedo) que llegan casi al suelo. Lleva una cola larga de vértebras con jirones. Está en un **bosque muerto de noche** con árboles secos, ramitas, hojas secas, escarcha, huesos y cráneos de ciervo. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: niebla blanca (ritmo 80), cuervos (ritmo 5), hojas secas (ritmo 40), escarcha (ritmo 30), ojos brillando, susurros en ondas, ceniza (ritmo 30) y **2 luces**. **Animaciones:** `Roar`: **se encorva y abre los brazos con las garras largas chillando** (`RoarFx`); y `Phase`: **desaparece en la niebla y reaparece de golpe** (`PhaseFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.Wendigosaurio` → `Models.Bichos["108"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: se vuelve casi invisible (0,95) y reaparece, y la cabeza se mueve hasta 12,8 studs. Sin errores en la consola.
- **Notas:** el siguiente es el 109 (Guardián del Anillo); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 107 · Krakensaurio (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y amenazador**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 17,2 studs y tiene 956 piezas. Es un **plesiosaurio monstruoso rojo oscuro** que sale de un mar tormentoso: asoman el lomo con pinchos y las aletas, y se alza un **cuello larguísimo** con pinchos y la barriga más clara. La cabeza tiene las **fauces muy abiertas** llenas de dientes y **ojos magenta** brillantes. Le salen **tentáculos de kraken con ventosas rosas** (por pares, con su borde): 3 de la boca y 7 del lomo que se enroscan en espiral en la punta. Uno de ellos **aplasta un barco pirata pequeño** marrón, con casco de tablones, cubierta, dos mástiles, **velas blancas rotas** y bandera pirata. El pedestal es un **mar oscuro y tormentoso** con olas, espuma y rocas. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: agua oscura (ritmo 80), tinta negra (ritmo 40), burbujas (ritmo 50), astillas del barco (ritmo 10), espuma (ritmo 40), gotas (ritmo 40), relámpagos de tormenta (ritmo 2), ondas y **2 luces**. **Animaciones:** los tentáculos del lomo son piezas `Arm` y se mueven; `Shatter`: **estruja el barco con los tentáculos hasta partirlo** (las piezas del barco son `Spike` y salen volando en pedazos, las ventosas se encienden con `ShatterGlow`, astillas `ShatterFx`); y `FireBreath`: **lanza un chorro de tinta negra** (`FlameFx` negro). No se pasea (`NoWander`).
- **Dónde:** `ServerStorage.CreatureBuilders.Krakensaurio` → `Models.Bichos["107"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el barco se parte y sus piezas se separan 5 studs, la cabeza se mueve 8,6, los tentáculos 5,6 y el mar no se mueve. Sin errores en la consola.
- **Notas:** el siguiente es el 108 (Wendigosaurio); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 106 · Cerberosaurio (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y amenazador**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 17 studs y tiene 741 piezas. Es un **raptor colosal negro** de placas, cruzado por **vetas rojas de neón**, con pinchos en el lomo y garras de hoz rojas. Tiene **tres cabezas de raptor** (izquierda, centro y derecha), cada una con un **collar de pinchos plateado**, **ojos rojos de neón**, cuernos, la boca abierta con dientes, fuego dentro de la boca y una llama pequeña siempre encendida. Lleva **grilletes y cadenas grises** en los tobillos, atadas a cuatro postes del suelo, y la **cola en llamas**. Está en la **entrada de un inframundo**: roca volcánica con grietas y un charco de lava, y detrás una puerta con torres, un arco y un **rastrillo de hierro**. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: fuego de las tres bocas (ritmo 20 + la llamarada), brasas (ritmo 60), humo (ritmo 40), chispas (ritmo 50), ceniza (ritmo 30), calor, cola en llamas (ritmo 60) y **2 luces**. **Animaciones:** `FireBreath`: **las tres cabezas rugen a la vez echando fuego** (un `FlameFx` en cada boca); y `Shatter`: **tira de las cadenas hasta romperlas** (los eslabones son piezas `Spike` que salen volando, las vetas se encienden con `ShatterGlow`, `ShatterFx` y `ShatterLight`). Las cabezas laterales son `SideHead`. No se pasea porque está encadenado (`NoWander`).
- **Dónde:** `ServerStorage.CreatureBuilders.Cerberosaurio` → `Models.Bichos["106"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: los eslabones salen volando 3,6 studs, las vetas cambian de color (0,67) y la cabeza se mueve 2,7. Sin errores en la consola.
- **Notas:** el siguiente es el 107 (Krakensaurio); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 105 · Yetisaurio (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y amenazador**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 17,4 studs y tiene 773 piezas. Es un **terópodo gigantesco cubierto de pelo blanco desgreñado** (más de 400 mechones en tres tonos), encorvado como un gorila sobre unos **brazos de gorila** enormes apoyados en los nudillos. Tiene **pies enormes azules** con garras, el pecho azul, la **cara azul de yeti** (cabeza agrandada ×1,45) con cejas, hocico, **ojos rojos de neón**, colmillos blancos y carámbanos colgando de la barbilla, y **carámbanos de hielo** en la espalda, los brazos y toda la cola. Está en la **cima helada de una montaña**: rocas con nieve encima, un montón de nieve y cristales de hielo. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: ventisca (ritmo 100), copos (ritmo 80), vaho (ritmo 40), escarcha (ritmo 40), piedras de hielo (ritmo 20), rugido (ritmo 1), destellos (ritmo 30), nieve al pisar (ritmo 40) y **2 luces**. **Animaciones:** los brazos son patas `FrontLeg` (anda sobre los nudillos); `ChestBeat`: **se golpea el pecho como un gorila y ruge echando vaho** (`BeatFx`); y `Stomp`: **pisotón que lanza piedras de hielo** (`StompFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.Yetisaurio` → `Models.Bichos["105"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: las manos suben 8,7 y 5,7 studs al golpearse el pecho. Sin errores en la consola.
- **Notas:** el siguiente es el 106 (Cerberosaurio); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 104 · Titanoboa Rey (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico e imponente**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 18,5 studs y tiene 614 piezas. Es una **serpiente colosal enrollada en 3 vueltas y media que forman una torre**, ancha abajo y más estrecha arriba (70 tramos en espiral). Tiene las escamas **verde oliva con rombos marrones** con borde por fuera y por encima, la barriga amarilla y lianas, hojas y helechos enganchados entre las vueltas. **La cabeza está alzada en lo alto** sobre un cuello con la garganta amarilla, agrandada ×1,35, con una **corona dorada con gemas**, ojos amarillos de pupila rasgada, cejas, colmillos largos, la boca abierta y la **lengua bífida roja fuera**. La punta de la cola sale por abajo. Está sobre las **ruinas escalonadas de un templo de la selva**, con musgo, escalera, columnas rotas, una cascada, helechos y dos palmeras. Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: siseo en ondas verdes (ritmo 5), escamas brillantes (ritmo 40), hojas de selva (ritmo 40), destellos dorados (ritmo 40), niebla verde (ritmo 40), gotas (ritmo 20), polvo (ritmo 30) y **2 luces**. **Animaciones:** `Roar`: **sisea sacando la lengua con ondas verdes** (`RoarFx`); y `Chomp`: **se lanza hacia delante con un mordisco y vuelve a enroscarse** (`ChompFx`). No se pasea por la base (`NoWander`).
- **Dónde:** `ServerStorage.CreatureBuilders.TitanoboaRey` → `Models.Bichos["104"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la cabeza se mueve hasta 5,5 studs, la torre 2,9 y la cola 2,3, y el pedestal no se mueve. Sin errores en la consola.
- **Notas:** el siguiente es el 105 (Yetisaurio); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 103 · Raptor 67 (Secreto), hecho desde cero y muy épico

- **Qué:** Secreto **muy épico y gracioso**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 16,2 studs y tiene 625 piezas. Es un **raptor gigante y fornido de plumas moradas** con puntas doradas, de pie. Lleva una **camiseta de baloncesto amarilla con el «67»** en negro (delante y detrás, con `SurfaceGui`) y **pantalón negro** con franjas y bajos amarillos y una corona dorada. Hace el **gesto de las manos** (una arriba y otra abajo, con las palmas hacia arriba). Tiene hombros y brazos muy emplumados, la cabeza grande (×1,3) con una **sonrisa pícara** llena de dientes, ojos amarillos, cejas, cresta, garras de hoz y una cola larga de plumas en abanico. A su lado tiene un **balón de baloncesto enorme** con sus costuras, en una **cancha callejera de noche** con líneas amarillas, canasta con tablero de neón morado, aro y red, focos morados y un muro de grafitis («67», «RAPTOR», una corona). Lleva lo de todos los Secretos: `Highlight` negro y morado, humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: números «67» (ritmo 20), confeti (ritmo 50), destellos (ritmo 40), balones pequeños (ritmo 5), estrellas (ritmo 30), notas musicales (ritmo 20) y **2 luces**. **Animaciones:** `SixSeven`: **hace el gesto 67 subiendo y bajando las manos** (`SixSevenFx`); y `Pounce`: **salta a hacer un mate** con los brazos arriba y aterriza fuerte (`SwipeFx`, `StompFx` y onda).
- **Rig `Generic`:** nuevo `SixSeven` (el gesto del meme 6-7, emisores `SixSevenFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.Raptor67` → `Models.Bichos["103"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (`SixSeven`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: las manos se mueven 3 y 4,1 studs respecto al cuerpo y el cuerpo hasta 9,2 en el salto. Sin errores en la consola.
- **Notas:** el balón no se bota en la animación (es parte del pedestal). El siguiente es el 104 (Titanoboa Rey); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 102 · Ojo del Pantano (Secreto), hecho desde cero y muy épico

- **Qué:** el primer **Secreto**, **muy épico y amenazador**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 15 studs y tiene 627 piezas. Es un **cocodrilo prehistórico gigantesco medio hundido** en un pantano de lodo marrón. Solo asoman la cabeza, con **un ojo enorme amarillo** que brilla (iris naranja, **pupila de serpiente**, ceja de pinchos con musgo), el hocico largo lleno de dientes a ras del lodo, las garras agarrando el barro y el **lomo**, que se alza como una colina de **placas acorazadas con pinchos** cubiertas de **algas** y **raíces retorcidas**, con algas colgando. La cola rompe la superficie por un lado. Alrededor hay nenúfares con flores, juncos con espadañas, raíces en el borde y dos **árboles muertos con musgo colgando**. Escondidos bajo el lodo (solo se ven al salir) tiene la mandíbula inferior con dientes, la barriga y las patas. Lleva lo de todos los Secretos: `Highlight` con contorno negro y relleno morado oscuro (FillTransparency 0,85), humo negro a ras de suelo (ritmo 60) y niebla morada (ritmo 40). Sus efectos: burbujas de lodo (ritmo 50), moscas (ritmo 20), vapor (ritmo 40), gotas (ritmo 30), luciérnagas (ritmo 20), ondas en el lodo (ritmo 1), destellos del ojo (ritmo 1) y **2 luces**. **Animaciones:** `Breach`: **emerge del lodo de golpe abriendo las fauces** (`DiveFx` de barro y 2 ondas); y `Lurk`: **se hunde despacio dejando solo el ojo mirando** (`LurkFx`). No se pasea por la base (`NoWander`).
- **Rig `Generic`:** nuevo `Lurk` (se hunde en el lodo, emisores `LurkFx`). **`CreatureAnim`:** nuevo atributo de modelo `NoWander`.
- **Dónde:** `ServerStorage.CreatureBuilders.OjoPantano` → `Models.Bichos["102"]`; `ReplicatedStorage.CreatureRigs`; `StarterPlayerScripts.CreatureAnim`. Docs: `GUIA_BICHOS.md` (`Lurk` y `NoWander`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: sale del lodo 5,2 studs, se hunde 2,4 y el pantano no se mueve. Sin errores en la consola.
- **Notas:** el siguiente es el 103 (Raptor 67); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 101 · Dodo de Tres Cabezas (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 16,5 studs y tiene 660 piezas. Es el Dodo Corriente convertido en una **bestia gigante y musculosa** (ya no es chibi): un cuerpo enorme gris azulado de plumas en capas, con **armadura de plumas doradas** en el pecho (escamas de oro y una **gema roja**) y hombreras doradas. Tiene alas cortas con el borde dorado, patas gruesas amarillas a bandas con garras oscuras y un penacho dorado en la cola. Lleva **tres cabezas** en cuellos gruesos con collares dorados, cada una con un gran **pico amarillo curvo**: la **feliz** (pico abierto, mejillas rosas, corazones), la del centro **enfadada con una corona dorada con gemas rojas** (cejas fruncidas, cresta roja, vapor) y la **dormida** (ojos cerrados y «Z z z» flotando). Las cabezas están agrandadas ×1,25 y las de los lados giradas hacia fuera. Está sobre una **isla cósmica flotante** con cristales, cascadas, flores y un arco-trono de piedra con oro y gemas, con **estrellas en órbita**. Efectos: plumas doradas (ritmo 60), estrellas en órbita (ritmo 40), destellos azules y morados (ritmo 60), brillo arcoíris (ritmo 30), Zzz (ritmo 5), vapor (ritmo 20), corazones (ritmo 10), polvo cósmico (ritmo 40), aura morada y **2 luces**. **Animaciones:** `Bicker`: **las tres cabezas discuten picoteándose** (`BickerFx`); y `Stomp`: **pisotón que hace temblar el suelo** (`StompFx` y onda).
- **Rig `Generic`:** nuevo rol `SideHead` (cabezas extra con `NeckPivot` y `Side`, que se balancean solas) y nuevo `Bicker` (discusión entre cabezas, emisores `BickerFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.DodoTresCabezas` → `Models.Bichos["101"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (`SideHead` y `Bicker`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: las tres cabezas se mueven por separado respecto al cuerpo (2,7, 2,5 y 1,8 studs) y el cuerpo 4,3 al caminar. Sin errores en la consola.
- **Notas:** la hoja de ChatGPT salió con 4 cabezas; se han hecho las 3 de la lista. El siguiente es el 102 (Ojo del Pantano, el primer Secreto); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 100 · Tucán-Raptor Tóxico (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 14 studs y tiene 737 piezas. Es un **raptor grande de plumas negras erizadas** por todo el cuerpo, las patas y el cuello, con las puntas naranjas, amarillas y **verde neón**. Tiene la cara amarilla, un anillo verde neón alrededor del ojo, una cresta de plumas en punta y un **pico de tucán gigante** curvo y a bandas (naranja con una franja roja, amarillo, verde neón y punta negra). Del pico y del plumaje le caen **gotas tóxicas de neón verde**. Tiene alas plegadas de plumas largas, brazos y patas con **garras verdes** (y garra de hoz) y una cola larga con un abanico de plumas. Está en una **selva tóxica**: lodo con musgo, piedras en ruinas que gotean, un **charco de ácido verde neón** con burbujas, **setas gigantes moradas** con manchas que brillan y hojas de selva. Efectos: gotas tóxicas (ritmo 60 entre el pico y el cuerpo), burbujas (ritmo 50), plumas (ritmo 30), destellos (ritmo 40), vapor (ritmo 40), hojas de selva (ritmo 30), estrellas, aura verde y **2 luces**. **Animaciones:** `Shiver`: **eriza las plumas y sacude el cuerpo salpicando gotas tóxicas** (emisor `Breath` de salpicaduras); y `FireBreath`: **abre el pico y escupe un chorro de ácido** (`FlameFx` verde).
- **Dónde:** `ServerStorage.CreatureBuilders.TucanRaptor` → `Models.Bichos["100"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la cabeza se mueve hasta 7,9 studs, el cuerpo 4,3 y la cola 6,3. Sin errores en la consola.
- **Notas:** el siguiente es el 101 (Dodo de Tres Cabezas); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 99 · Araña-saurio (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 14,2 studs y tiene 807 piezas. Es un **raptor enorme negro** agazapado sobre sus patas de raptor, con un gran **abdomen de araña** en el lomo. El abdomen tiene una corona de pinchos con la punta roja, venas de telaraña en **neón rojo** y un **reloj de arena rojo**. Le salen **8 patas de araña** largas y articuladas que se arquean a su alrededor, con costuras de neón rojo, rodillas rojas, pelos y garras rojas. Tiene **6 ojos rojos de neón** con brillo, colmillos de araña (quelíceros), la boca llena de dientes y brillo rojo dentro, la cabeza agrandada (×1,4), brazos con garras y una cola larga con pinchos que se enrosca hacia arriba y acaba en un aguijón rojo. Detrás tiene una **telaraña gigante blanca brillante como un trono**, sobre una **cueva oscura** con estalagmitas, escalones de piedra, grietas rojas, calaveras, huesos, costillas y **arañitas rojas**. Efectos: hilos brillantes (ritmo 40), arañitas (ritmo 10), destellos rojos (ritmo 40), polvo (ritmo 30), estrellas (ritmo 30), niebla (ritmo 30), aura roja y **2 luces**. **Animaciones:** `Rear`: **se alza con las patas delanteras arañando el aire** y vuelve a bajar de golpe (`StompFx`, `QuakeFx` y ondas); y `FireBreath`: **dispara telaraña por la boca** (un `FlameFx` de hilos blancos).
- **Dónde:** `ServerStorage.CreatureBuilders.AranaSaurio` → `Models.Bichos["99"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la cabeza se mueve hasta 13,9 studs, las patas de araña 12,7 y la cola 10,3 mientras camina y se alza. Sin errores en la consola.
- **Notas:** el siguiente es el 100 (Tucán-Raptor Tóxico); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 98 · Pavosaurio Celestial (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 15 studs y tiene 930 piezas. Es un **ornitópodo grande y elegante azul eléctrico**, de pie, cubierto de escamas-pluma azules con **bordes dorados**. Tiene la barriga y la garganta doradas, plumas plegadas en los costados, patas doradas a bandas con garras, un **cuello largo** curvado, pico y ojos dorados, y una **cresta de plumas doradas** con puntas azules. Detrás despliega una **cola de pavo real colosal en abanico**: 64 plumas verde esmeralda en 4 filas, cada una con su raquis dorado y un **ojo** (anillo dorado, verde, **azul neón** y centro oscuro), y un fleco dorado en la base. Está en un **jardín celestial**: nubes, plataforma de mármol con borde dorado, escalones, columnas con cascadas y arbustos con flores rosas. Efectos: destellos en la cola (ritmo 30), plumas doradas (ritmo 50), estrellas (ritmo 50), polvo dorado (ritmo 60), rayos de luz (ritmo 15), mariposas (ritmo 10), purpurina (ritmo 40), aura azul y **2 luces**. **Animaciones:** las dos mitades del abanico son `Wing` (con `Side` invertido para que se abra hacia fuera) y tiemblan suavemente; `WingBurst`: **despliega la cola de golpe** con una explosión de luz (`BurstFx`, `BurstLight`); y `GlowMove = "flare"`: **los ojos de la cola se encienden** (`GlowColor`, `GlowFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.PavosaurioCeleste` → `Models.Bichos["98"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la cola se mueve hasta 9,6 studs, los ojos cambian de color (0,68) y camina por la base. Sin errores en la consola.
- **Notas:** el siguiente es el 99 (Araña-saurio); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 97 · Raptor Infernal (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 14,6 studs y tiene 730 piezas. Es un **raptor gigante de roca volcánica** negra como el carbón, cubierto de bloques de roca y **grietas de neón naranja** por todo el cuerpo. Tiene **ojos de fuego**, una cabeza grande (×1,3) con cejas de roca, la boca abierta llena de dientes, con la lengua y el interior brillando, y **garras de hoz** enormes en las patas y garras en las manos. Lleva una **melena de llamas** (lenguas de neón naranja con el centro amarillo) en la cabeza, el cuello, el lomo y toda la cola, que acaba en un penacho de fuego. Está sobre un **volcán** con un anillo de rocas, agujas de piedra, ríos y charcos de lava y brasas. Efectos: fuego del cuello (ritmo 80), brasas (ritmo 60), humo (ritmo 40), chispas (ritmo 50), ceniza (ritmo 30), calor, zarpazos de fuego (ritmo 3), aura roja y **2 luces**. **Animaciones:** `Pounce`: **salta y da un zarpazo de fuego con las garras de hoz** (`SwipeFx`, `StompFx` y onda); `FireBreath`: **ruge echando llamas** (`FlameFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.RaptorInfernal` → `Models.Bichos["97"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la cabeza se desplaza hasta 18 studs en el salto, la cola 9,6 y las patas 10,4. Sin errores en la consola.
- **Notas:** el siguiente es el 98 (Pavosaurio Celestial); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 96 · Rinoceratops Titán (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 15,4 studs y tiene 652 piezas. Es un **ceratopsio colosal** a cuatro patas, de bloques de **piedra gris verdosa** con mucho **musgo**, lianas colgando por los costados y **runas doradas brillantes** grabadas por todo el cuerpo. Lleva pinchos de piedra en el lomo, un **cuerno gigantesco de rinoceronte** de piedra blanca que se curva hacia arriba, otro cuerno pequeño y ojos dorados. La **gola tiene forma de puerta de templo**: muro con dos columnas anilladas, dintel, frontón, arco de piedra, puerta con una runa, musgo y lianas. Está sobre **ruinas de templo** de tres niveles con escalera, helechos y runas, con **runas en órbita**. Efectos: runas (ritmo 15), polvo de piedra (ritmo 50), destellos dorados (ritmo 50), hojas (ritmo 30), piedrecitas (ritmo 30), ondas (ritmo 1), rayos de luz (ritmo 15), aura dorada y **2 luces**. **Animaciones:** `Quake`: **embiste con el cuerno haciendo temblar el suelo** (`QuakeFx`, `StompFx`, 2 ondas); `GlowMove = "flare"`: **las runas se encienden** (`GlowColor`); y `Stomp`: **pisa fuerte**.
- **Dónde:** `ServerStorage.CreatureBuilders.Rinoceratops` → `Models.Bichos["96"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: embiste 3,9 studs, las runas cambian de color (0,62) y la cadera trasera se separa como mucho 0,74. Sin errores en la consola.
- **Notas:** el siguiente es el 97 (Raptor Infernal); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 95 · Polilla Jurásica Sagrada (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 14 studs y tiene 879 piezas. Es una **polilla enorme y peluda**, posada de pie, con el cuerpo crema cubierto de mechones esponjosos y bandas doradas en el abdomen. Tiene **ojos negros brillantes** con reflejos, **dos antenas de pluma** doradas y patitas peludas. Lleva **cuatro alas gigantes**: una rejilla redondeada de paneles crema con zonas lila, borde dorado y venas doradas, y en cada ala un **dibujo de ojo** de anillos dorados y lila con la pupila morada, que brilla. Está posada sobre **ruinas de un templo** con escalones, columnas con musgo y un **loto dorado**, con estrellas en órbita. Efectos: polvo dorado de las alas (ritmo 80), destellos (ritmo 50), luz pulsante, luciérnagas (ritmo 30), estrellas (ritmo 30), rayos de luz (ritmo 15), aura dorada y **2 luces**. **Animaciones:** `WingBurst`: **abre las alas de golpe en una explosión de polvo dorado y luz** (`BurstFx`, `BurstLight`); y `GlowMove = "flare"`: **los ojos de las alas se iluminan** (`GlowColor`).
- **Dónde:** `ServerStorage.CreatureBuilders.PolillaSagrada` → `Models.Bichos["95"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: las alas se abren 4 studs y los ojos de las alas cambian de color (1,21). Sin errores en la consola.
- **Notas:** el siguiente es el 96 (Rinoceratops Titán); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 94 · Diablillo Compsognato (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 13,4 studs y tiene 658 piezas. Es un compsognathus adulto grande y musculoso, erguido, de escamas de bloques **rojo brillante** con la barriga dorada a bandas y pinchos negros en el lomo. Tiene **cuernos de diablo negros curvados**, **ojos amarillos brillantes**, cejas enfadadas, una sonrisa llena de dientes y la cabeza agrandada ×1,3. Tiene **alas de murciélago negras** con dedos y membrana roja oscura, garras negras, una **cola acabada en flecha de diablo** y empuña un **tridente enorme dorado** con bandas y **puntas de neón naranja** en llamas. Está sobre una **roca volcánica** con ríos de lava y pinchos en llamas, con calaveritas y brasas en órbita. Efectos: llamas (ritmo 60 entre el suelo y el tridente), humo negro (ritmo 40), brasas (ritmo 50), chispas (ritmo 40), destellos rojos (ritmo 30), calaveritas (ritmo 5), calor, aura roja y **2 luces**. **Animaciones:** `Quake`: **se alza y estampa el tridente** con una explosión de fuego (`QuakeFx` y `StompFx`) y 2 ondas; `Roar`: **se ríe con malicia** echando fuego por la boca; las alas aletean.
- **Dónde:** `ServerStorage.CreatureBuilders.DiablilloCompso` → `Models.Bichos["94"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el cuerpo se mueve 2,1 studs y se alza 0,36 rad, la mandíbula se abre 1,9 y la cadera se separa como mucho 0,54. Sin errores en la consola.
- **Notas:** el siguiente es el 95 (Polilla Jurásica Sagrada); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 93 · Archelon Apilado (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 15,4 studs y tiene 691 piezas. Son **tres tortugas marinas prehistóricas gigantes apiladas**, de la más grande abajo a la más pequeña arriba. Cada una tiene un **caparazón en cúpula** (verde, azul y turquesa) cubierto de **escudos en relieve con bordes dorados**, un reborde y un remate dorados, la piel gris verdoso, **aletas grandes** con manchas, el pico curvo y la **cara graciosa** (ojos grandes con brillo, cejas, sonrisa y lengua). Están sobre una **playa** con arena, olas, conchas y estrellas de mar, con burbujas y estrellas en órbita. Efectos: estrellas (ritmo 50), burbujas (ritmo 40), destellos (ritmo 40), gotas (ritmo 30), polvo (ritmo 20), ondas (ritmo 1) y **2 luces**. **Animaciones:** `Wobble`: **la torre se tambalea cada vez más y casi se cae**, con las aletas agitándose, destellos y ondas, y se recupera; y `HeadSnap`: **giran la cabeza**.
- **Rig `Generic`:** nuevo `Wobble` (tambaleo de una torre, emisores `WobbleFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.ArchelonApilado` → `Models.Bichos["93"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Wobble`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la tortuga de arriba se tambalea 1,65 studs a los lados. Sin errores en la consola.
- **Notas:** ChatGPT sacó dos opciones para esta hoja; se usó la 1. El siguiente es el 94 (Diablillo Compsognato); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 92 · Ptero Koi (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 14 studs y tiene 653 piezas. Es un pterosaurio grande con **escamas de pez koi** (blancas con **manchas naranjas y negras**), **bigotes de koi**, un pico largo, ojos dorados y una cresta de aleta transparente. Las **alas son aletas semitransparentes** abiertas a los lados (15 radios por ala, con paneles translúcidos y manchas de koi), lleva las patitas recogidas y tiene una **cola de velo larguísima** de 14 cintas transparentes que ondulan. Vuela sobre un **estanque japonés** con nenúfares y lotos, un **puentecito rojo**, farolillos de piedra encendidos y un cerezo, con pétalos, burbujas y estrellas en órbita. Efectos: pétalos (ritmo 60), burbujas (ritmo 40), destellos dorados (ritmo 40), agua flotante (ritmo 30), estrellas (ritmo 30), farolillos (ritmo 5), aura rosa y **2 luces**. **Animaciones:** flota (`Float`), bate las aletas (`WingFlap`) y `Buzz`: **nada en el aire en círculos dejando una estela de agua y pétalos** (`BuzzFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.PteroKoi` → `Models.Bichos["92"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: nada en círculos de unos 8 studs y las aletas baten 3,3 studs. Sin errores en la consola.
- **Notas:** el siguiente es el 93 (Archelon Apilado); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 91 · Manta Ptero Titán (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 13,8 studs y tiene 704 piezas. Es un **pterosaurio enorme negro** que planea sobre una roca flotante con cristales azules. Tiene las **alas anchas y triangulares de una mantarraya gigante** (unos 21 studs de envergadura, una rejilla de 20×4 paneles por ala, con el borde de ataque curvo y la punta brillante) cubiertas de **circuitos de neón azul** con nodos luminosos. La barriga es blanca y el cuerpo tiene placas. La cabeza es larga, con un pico largo y una cresta con circuitos, y los ojos azules. Lleva las patitas recogidas y una **cola larguísima y fina** que ondea. Tiene estrellas en órbita. Efectos: estela de luz azul (ritmo 60), estrellas (ritmo 50), chispas (ritmo 40), destellos (ritmo 40), polvo cósmico (ritmo 30), corriente (ritmo 30), pulsos de los circuitos (ritmo 1) y **2 luces**. **Animaciones:** flota (`Float`), aletea despacio (`WingFlap`), `Buzz`: **vuela en círculos dejando una estela de luz** (`BuzzFx`); y `GlowMove = "flare"`: **los circuitos laten** (`GlowColor`).
- **Dónde:** `ServerStorage.CreatureBuilders.MantaPtero` → `Models.Bichos["91"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: vuela en círculos de unos 8 studs, las alas baten 5,3 studs y los circuitos cambian de color (0,77). Sin errores en la consola.
- **Notas:** el siguiente es el 92 (Ptero Koi); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 90 · Pachy Fracturado (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 13,6 studs y tiene 661 piezas. Es un paquicefalosaurio grande y robusto erguido, de bloques **gris carbón** con **grietas de neón rosa** por todo el cuerpo, cristales morados por el lomo y la cola y garras rosas brillantes. La **cúpula de la cabeza es de cristal morado roto** (fragmentos con grietas rosas y pinchos de cristal), y una **corona de 14 fragmentos de cristal flota y gira alrededor de la cabeza**. Tiene ojos rosas brillantes, dientes y cristales en las mejillas; la cabeza se agranda ×1,35. Está sobre una roca oscura con grietas rosas y racimos de cristales, con un aura rosa y estrellas en órbita. Efectos: fragmentos (ritmo 20), chispas rosas (ritmo 60), destellos (ritmo 40), polvo de cristal (ritmo 40), rayos (ritmo 10), estrellas (ritmo 30), aura (ritmo 20) y **2 luces**. **Animaciones:** `Tantrum`: **patalea furioso y da un cabezazo brutal** con rayos rosas (`TantrumFx`) y una onda; y `GlowMove = "flare"`: **las grietas y los cristales se encienden** de golpe (`GlowColor`).
- **Dónde:** `ServerStorage.CreatureBuilders.PachyFracturado` → `Models.Bichos["90"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el cabezazo mueve el cuerpo 2,5 studs, la corona gira pegada a la cabeza y las grietas cambian de color (0,62). Sin errores en la consola.
- **Notas:** el siguiente es el 91 (Manta Ptero Titán); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 89 · Yuty Nevado (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 15 studs y tiene 906 piezas. Es un **tiranosaurio enorme cubierto de plumas largas como un abrigo de piel**: cientos de plumas blanco nieve en capas, con **puntas azul hielo**, colgando por el cuerpo, el cuello, la cola, las patas y los brazos. Tiene una **cresta de neón azul claro** por el hocico y la cabeza, **ojos dorados**, la **boca abierta rugiendo** con dientes, encía y lengua, y **garras de hielo** brillantes en manos y pies. Está sobre un **glaciar** con bloques de hielo, picos de hielo con punta brillante y montones de nieve, con un aura azul y estrellas heladas en órbita. Efectos: ventisca (ritmo 80), copos (ritmo 60), vaho por la boca (ritmo 30), escarcha (ritmo 30), estrellas heladas (ritmo 20), destellos (ritmo 40), polvo de nieve (ritmo 30), aura (ritmo 20) y **2 luces**. **Animaciones:** `Roar`: **ruge levantando una ventisca helada** (`RoarFx` de nieve y copos); y `Shiver`: **sacude las plumas soltando copos** (`Breath`).
- **Dónde:** `ServerStorage.CreatureBuilders.YutyNevado` → `Models.Bichos["89"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: se encabrita 0,42 rad con la mandíbula muy abierta, se sacude 0,64 studs de lado y la cadera se separa como mucho 0,7. Sin errores en la consola.
- **Notas:** el siguiente es el 90 (Pachy Fracturado); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 88 · Megaterio (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 15,2 studs y tiene 668 piezas. Es un **perezoso gigante de pie**, enorme y **peludo**, con cientos de mechones largos marrón claro colgando por todo el cuerpo. Tiene la cara crema con **manchas oscuras en los ojos**, la **cara de sueño** (ojos medio cerrados y sonrisa) y la cabeza agrandada ×1,3. **Abraza un árbol entero** con sus brazos y sus **garras negras gigantes**. El árbol tiene tronco con corteza, raíces, ramas, **lianas** con hojas y una copa frondosa, y está en un claro de selva con helechos y flores. Un **«Zzz»** flota encima (BillboardGui) y hay estrellas en órbita. Efectos: «Zzz» (ritmo 10), hojas que caen (ritmo 50), estrellas en órbita (ritmo 30), luciérnagas (ritmo 30), destellos (ritmo 30), polvo (ritmo 20) y **2 luces**. **Animaciones:** `TreeShake`: **sacude el árbol** con lluvia de hojas; y `Yawn`: **bosteza enorme**.
- **Dónde:** `ServerStorage.CreatureBuilders.Megaterio` → `Models.Bichos["88"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el árbol se sacude 0,083 rad y la cabeza se mueve 1 stud en el bostezo. Sin errores en la consola.
- **Notas:** el siguiente es el 89 (Yuty Nevado); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 87 · Helicoprion Sierra (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 13 studs y tiene 651 piezas. Es un **tiburón prehistórico grande** que nada en el aire, inclinado hacia arriba, sobre un arrecife de corales de colores. Es gris azulado de escamas de bloques, con la barriga blanca, **branquias y raya lateral de neón cian**, una aleta dorsal alta, aletas pectorales que reman con borde cian y la cola en media luna. Tiene ojos cian y dientes arriba, y la mandíbula de abajo es una **espiral de 44 dientes blancos con el filo de neón cian** sobre un disco que **gira como una sierra circular** pegada a la cabeza. Lo rodean **2 remolinos de agua y estrellas en órbita**. Efectos: chispas de la sierra (ritmo 80), burbujas (ritmo 40), estrellas (ritmo 30), corriente (ritmo 30), destellos (ritmo 30), gotas (ritmo 20), ondas y **2 luces**. **Animaciones:** flota (`Float`), `Uncoil`: **la sierra de dientes gira a toda velocidad** lanzando chispas; y `Chomp`: **embiste y muerde**.
- **Dónde:** `ServerStorage.CreatureBuilders.HelicoprionSierra` → `Models.Bichos["87"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la sierra gira pegada a la cabeza y acelera en el especial, y embiste 1,65 studs. Sin errores en la consola.
- **Notas:** el siguiente es el 88 (Megaterio); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 86 · Garra del Terror (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 15 studs y tiene 721 piezas. Es un **therizinosaurio gigante** erguido, **erizado de plumas negras con puntas moradas** por todo el cuerpo, el cuello, los brazos y la cola. Tiene el cuello largo con una cabeza pequeña de pico, ojos morados brillantes y una cresta de plumas, y los **brazos abiertos en pose amenazante**: cada mano tiene **tres garras larguísimas y curvas de neón morado**, como guadañas, con un filo claro. En las patas lleva uñas moradas. Está sobre **ruinas oscuras** con grietas moradas brillantes, entre **árboles muertos** y pilares, con un aura morada y estrellas en órbita. Efectos: estelas moradas de las garras (ritmo 50), plumas negras (ritmo 40), sombras (ritmo 30), destellos (ritmo 30), chispas (ritmo 30), estrellas en órbita (ritmo 20), aura (ritmo 20) y **2 luces**. **Animaciones:** `ArmStyle = "swipe"`: **cruza las garras y lanza un doble tajo** con estelas moradas (`SwipeFx`); y `Roar`: se encabrita y **ruge** con anillos morados.
- **Dónde:** `ServerStorage.CreatureBuilders.GarraTerror` → `Models.Bichos["86"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: en el zarpazo las garras se mueven 6,9 studs y en el rugido el cuerpo se encabrita 0,74 rad. Sin errores en la consola.
- **Notas:** el siguiente es el 87 (Helicoprion Sierra); su hoja ya se ha pedido.

## 2026-10-25 · bbogatell (Claude) · Bicho 85 · Mapache-saurio Radiactivo (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 13,2 studs y tiene 661 piezas. Es un raptor grande **agazapado encima de un contenedor de basura tóxica**. El contenedor es verde metálico, con costillas, ruedas, asas y una **señal de radiactividad**, y rebosa de **líquido verde brillante** que chorrea por los lados y forma charcos; alrededor hay bolsas de basura, un barril y una farola, en un callejón de noche. El raptor es gris de pelaje de bloques con **manchas radiactivas brillantes**. Tiene la **cara de mapache** (agrandada ×1,3): **antifaz negro**, raya en la nariz, mofletes y hocico blancos, nariz negra, **ojos verdes brillantes**, orejas redondas con borde blanco y la boca abierta con dientes, colmillos y baba verde. Las garras se agarran al borde y lleva una **cola de mapache enorme y anillada** gris y negra que se curva hacia arriba por un lado. **Aura verde**, con estrellas verdes en órbita. Efectos: burbujas radiactivas (ritmo 60), vapor verde (ritmo 50), gotas (ritmo 30), chispas (ritmo 30), estrellas verdes (ritmo 20), moscas brillantes (ritmo 10), aura (ritmo 20) y **2 luces**. **Animaciones:** `Sniff`: **rebusca en la basura** con la cabeza baja, chilla y el contenedor suelta una nube tóxica; y `Pounce`: **salta** con las garras por delante y aterriza con polvo verde.
- **Dónde:** `ServerStorage.CreatureBuilders.MapacheRadiactivo` → `Models.Bichos["85"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el cuerpo se mueve 2 studs en el salto y la mandíbula se abre en el chillido. Sin errores en la consola.
- **Notas:** el usuario dejó 5 cuentas de ChatGPT abiertas, una en cada pestaña; cuando una se queda sin imágenes se pasa a la siguiente. El siguiente es el 86 (Garra del Terror); su hoja ya se ha pedido.

## 2026-10-24 · bbogatell (Claude) · Bicho 84 · Saturnosaurio (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 14,6 studs y tiene 677 piezas. Es un saurópodo robusto de bloques **a franjas amarillas, naranjas y marrones** como Saturno (bandas alrededor del cuerpo, el cuello, las patas y la cola). Tiene la **cabeza redonda como un planeta**, con franjas, un anillito, hocico, sonrisa y ojos brillantes. Lo rodea un **anillo de Saturno gigante** inclinado y semitransparente de 4 franjas crema y marrón, que **gira alrededor del cuerpo** y lo sigue. Tiene **lunas grises con cráteres**, asteroides y estrellas en órbita, sobre una roca espacial con cráteres. Efectos: asteroides en órbita (ritmo 20), polvo del anillo (ritmo 60), estrellas (ritmo 40), destellos (ritmo 40), nebulosa (ritmo 20), luz pulsante, lunas girando (ritmo 20) y **2 luces**. **Animaciones:** `Uncoil`: **el anillo y las lunas giran a toda velocidad** (8 veces más rápido) con polvo del anillo y 2 ondas; y `Stomp`: **pisa fuerte**.
- **Dónde:** `ServerStorage.CreatureBuilders.Saturnosaurio` → `Models.Bichos["84"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el anillo gira alrededor del cuerpo y en el especial acelera hasta 26 studs/s; las lunas orbitan. Sin errores en la consola.
- **Notas:** el siguiente es el 85 (Mapache-saurio Radiactivo); su hoja ya se ha pedido.

## 2026-10-24 · bbogatell (Claude) · Bicho 83 · Bronto Nebuloso (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 15,6 studs y tiene 650 piezas. Es un **brontosaurio enorme** con el cuello larguísimo hacia el cielo, la cola larga y las patas como columnas, y el **cuerpo semitransparente** en degradado morado, rosa y azul (bloques con transparencia 0,45). Dentro tiene **nebulosas** (nubes de neón translúcidas), estrellas y **16 planetas diminutos de colores**, uno de cada cuatro con anillos, que **giran dentro del cuerpo**. Tiene ojos brillantes y dedos de luz, y lo rodean **2 anillos de luz en órbita**, asteroides y estrellas, sobre una roca espacial con cráteres. Efectos: nubes de nebulosa (ritmo 60), estrellas en órbita (ritmo 40), polvo cósmico (ritmo 50), destellos (ritmo 40), cometas (ritmo 5), polvo al pisar (ritmo 20), **luz pulsante** y **2 luces**. **Animaciones:** `Uncoil` con `UncoilRear`: **levanta el cuello hacia el cielo y los planetas de su cuerpo giran a toda velocidad brillando**, con destellos y 2 ondas; y `Stomp`: **pisa fuerte** levantando polvo cósmico.
- **Rig `Generic`:** las piezas `Ring` aceptan también `RingFollow = \"body\"` (giran dentro del cuerpo y lo siguen).
- **Dónde:** `ServerStorage.CreatureBuilders.BrontoNebuloso` → `Models.Bichos["83"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (`RingFollow`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: los planetas giran dentro del cuerpo y el cuello sube 1,85 studs. Sin errores en la consola. Después se estrechó la órbita de los planetas para que no asomen al girar.
- **Notas:** el siguiente es el 84 (Saturnosaurio); su hoja ya se ha pedido.

## 2026-10-24 · bbogatell (Claude) · Bicho 82 · Tricera Cósmico (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 14 studs y tiene 674 piezas. Es un triceratops enorme de bloques azul noche con placas de armadura dibujadas con **constelaciones brillantes** (estrellas unidas por líneas) y **cristales cian** por el lomo, la cola y las patas. La **gola es un portal al espacio**: un disco oscuro con borde cian y 16 picos de cristal alrededor, y dentro una **galaxia en espiral** (3 brazos morados, rosas y azules con estrellas, alrededor de un núcleo brillante) que **gira sin parar**. Tiene **tres cuernos de cristal de neón cian**, pico y ojos cian. Está sobre un **asteroide flotante** con cráteres y cristales, con estrellas y **cometas en órbita**. Efectos: estrellas que salen de la gola (ritmo 80), polvo cósmico (ritmo 50), destellos (ritmo 40), cometas pequeños (ritmo 5), nebulosa (ritmo 30), polvo al pisar (ritmo 20) y **2 luces**. **Animación:** `Charge`: rasca el suelo y **embiste mientras la gola dispara una lluvia de cometas** (`ChargeFx`), con polvo cósmico en las pezuñas (`StompFx`).
- **Rig `Generic`:** las piezas `Ring` aceptan `RingFollow = \"head\"` para girar pegadas a la cabeza. Sin él, la galaxia se quedaba atrás al embestir.
- **Dónde:** `ServerStorage.CreatureBuilders.TriceraCosmico` → `Models.Bichos["82"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (`RingFollow`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: embiste 3,7 studs, la galaxia gira pegada a la gola (separación 0) y la cadera trasera se separa como mucho 0,6. Sin errores en la consola.
- **Notas:** el siguiente es el 83 (Bronto Nebuloso); su hoja ya se ha pedido.

## 2026-10-24 · bbogatell (Claude) · Bicho 81 · Basilosaurio (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 13,4 studs y tiene 663 piezas. Es una **ballena prehistórica larguísima con forma de serpiente marina** que **ondula en el aire en forma de S** sobre un arrecife. El cuerpo son 72 tramos que siguen una curva suave, más gruesos en el centro: azul pizarra con escamas y puntos cian, la **barriga blanca** y una **raya lateral de neón cian** a cada lado. La cabeza es alargada, con el ojo cian, la **boca abierta llena de dientes** arriba y abajo, lengua y espiráculo. Tiene aletas delanteras y traseras pequeñas con borde cian y una **cola de ballena**. Está sobre una isla de arrecife con corales y un anillo de agua cian, con **3 remolinos de agua y estrellas en órbita**. Efectos: chorro de agua por el espiráculo (siempre un poco y a ráfagas en el especial), burbujas (ritmo 40), estrellas (ritmo 40), gotas (ritmo 30), destellos cian (ritmo 30), nebulosa (ritmo 20), corriente (ritmo 20) y **2 luces**. **Animación:** `Spout`: se enrosca con la cabeza alta, **ondula todo el cuerpo** (la cola y la cabeza serpentean) y **lanza un gran chorro de agua** por el espiráculo durante un segundo, con 2 ondas.
- **Rig `Generic`:** nuevo `Spout` (ondular y lanzar un chorro, emisores `SpoutFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.Basilosaurio` → `Models.Bichos["81"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Spout`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la cola ondula 4,1 studs y la cabeza 2,6. Sin errores en la consola.
- **Notas:** el siguiente es el 82 (Tricera Cósmico); su hoja ya se ha pedido.

## 2026-10-24 · bbogatell (Claude) · Bicho 80 · Megalodón Bebé (Cósmico, bebé), hecho desde cero · arreglo de `Float`

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 12,2 studs y tiene 650 piezas. Es un **tiburón bebé chibi** gris azulado por arriba y blanco por abajo, cubierto de escamas de bloques, con branquias, aleta dorsal, aletas pectorales que reman, una cola con aleta en media luna y **ojazos azules brillantes** con reflejos. Tiene una **boca enorme abierta**: interior rosa, garganta, lengua y **dientes triangulares** blancos en dos filas arriba y una abajo. Nada en el aire dentro de una **esfera de agua** transparente con burbujas flotando dentro y **3 remolinos de agua** que giran por su borde. Alrededor nadan **24 pececitos de colores en órbita**, sobre un arrecife con rocas y corales de colores. Efectos: burbujas (ritmo 60), peces (ritmo 10), gotas (ritmo 30), estrellitas (ritmo 30), destellos azules (ritmo 30), corriente de agua (ritmo 20) y **2 luces**. **Animaciones:** flota (`Float`), da **un mordisco gigante** lanzándose hacia delante con burbujas (`Chomp`) y **da vueltas dentro de la esfera** mientras los peces y los remolinos giran más rápido (`Tumble`).
- **Rig `Generic` (arreglo):** `Float` ahora **se suma** a la pose de las animaciones especiales en vez de sustituirla. Antes anulaba el movimiento del mordisco, de las volteretas y de los saltos en todos los bichos que flotan (74 Mordisquitos, 78 Ventisaurio, 59 Plesio Fantasma…); ahora se mueven bien.
- **Dónde:** `ServerStorage.CreatureBuilders.MegalodonBebe` → `Models.Bichos["80"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (`Float`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: en el mordisco se lanza 1,96 studs (antes del arreglo, 0,17) y sigue flotando. Sin errores en la consola.
- **Notas:** el siguiente es el 81 (Basilosaurio); su hoja ya se ha pedido.

## 2026-10-24 · bbogatell (Claude) · Bicho 79 · Glipto Rodante (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 12,4 studs y tiene 847 piezas. Es un **armadillo gigante** con una **cúpula enorme de placas hexagonales en relieve** (unas 60 placas marrones con el centro levantado y un **borde hexagonal dorado brillante** cada una) y un faldón con franja dorada. Tiene la cara gris de bloques, con **casquete de hueso** con tachuelas, hocico, ojos amarillos brillantes y orejitas, patas cortas y fuertes con garras negras y una **cola con anillos** negros y grises y bandas doradas. La cola acaba en una **maza negra con 14 pinchos de punta dorada**. Tiene **dos anillos dorados y estrellas en órbita**, sobre roca bajo un cielo cósmico. Efectos: polvo de estrellas al rodar (`RollFx`), chispas doradas (ritmo 40), polvo (ritmo 30), destellos (ritmo 30), estrellas en órbita (ritmo 20), ondas (ritmo 1) y **2 luces**. **Animación:** `Roll`: **se hace una bola y rueda una vuelta entera** hacia delante dejando polvo de estrellas, vuelve rodando y aterriza con un rebote y una onda.
- **Rig `Generic`:** nuevo `Roll` (rodar sobre sí mismo alrededor de `BodyPivot`).
- **Dónde:** `ServerStorage.CreatureBuilders.GliptoRodante` → `Models.Bichos["79"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Roll`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: rueda una vuelta entera ida y vuelta, avanza 3,3 studs y las patas giran con el caparazón. Sin errores en la consola.
- **Notas:** el siguiente es el 80 (Megalodón Bebé); su hoja ya se ha pedido.

## 2026-10-24 · bbogatell (Claude) · Bicho 78 · Ventisaurio (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 13,8 studs y tiene 655 piezas. Es un ornitópodo grande y ligero de bloques azul cielo y blanco, cubierto de **mechones como plumas**. Tiene una cresta de plumas en el lomo y en la cabeza, unas **orejas-aleta enormes** (abanicos de 12 plumas blancas y azules que aletean), un ojo azul brillante, las patas recogidas porque flota, bracitos con plumas y una cola larga que se curva hacia arriba con un abanico de plumas en la punta. **Flota sobre su propio tornado**: 15 anillos con huecos, anchos arriba y finos abajo, que **giran cada uno a su velocidad**, con un núcleo, una corona de nubes y **cintas de viento** de neón blanco enrolladas alrededor del cuerpo. Tiene estrellas y hojas en órbita. Efectos: tornado (ritmo 80), hojas girando (ritmo 40), nubes (ritmo 20), plumas (ritmo 20), destellos (ritmo 30), estrellas en órbita (ritmo 20), ráfagas (ritmo 20) y **2 luces**. **Animaciones:** flota (`Float`), las orejas aletean (`WingFlap`) y `Whirl`: **gira como un huracán dando 2 vueltas dentro de su tornado** (`WhirlFx`) y suelta una ráfaga de viento con zarpazos de aire y una onda.
- **Dónde:** `ServerStorage.CreatureBuilders.Ventisaurio` → `Models.Bichos["78"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: gira 2 vueltas en cada especial, las orejas baten 0,86 studs y el tornado gira. Sin errores en la consola.
- **Notas:** hojas pedidas con la cuenta de ChatGPT «Bernat Bogatell», que vuelve a tener imágenes. El siguiente es el 79 (Glipto Rodante); su hoja ya se ha pedido.

## 2026-10-24 · bbogatell (Claude) · Bicho 77 · Paraceratherium Rey (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 15 studs y tiene 653 piezas. Es un **rinoceronte sin cuerno gigantesco, alto como una jirafa**. Tiene las patas larguísimas como columnas, con rodillas y pies de tres dedos, y el cuello largo y grueso. Es de bloques gris piedra recorridos por **vetas lila cósmicas brillantes**. La cabeza es de caballo, con el labio superior prensil, orejas grandes y ojos con brillo lila (agrandada ×1,3), y lleva una **corona dorada** con puntas, perlas y **gemas azules**. Lleva un **manto real morado** que cubre todo el lomo, con bordes dorados, borlas y gemas azules con adornos de oro, además de cadenas y un **medallón dorado con gema azul** en el pecho. Está sobre roca oscura con cristales morados, con estrellas y **asteroides en órbita**. Efectos: estrellas (ritmo 50), polvo cósmico (ritmo 40), destellos de la corona (ritmo 30), polvo al pisar (ritmo 30), ondas del suelo (ritmo 1), nebulosa (ritmo 20) y **2 luces**. **Animación:** `Rear`: **se alza sobre las patas traseras** pataleando y estampa la parte delantera haciendo temblar el suelo, con polvo (`StompFx`), chispas lila (`QuakeFx`) y 2 ondas.
- **Dónde:** `ServerStorage.CreatureBuilders.ParaceratheriumRey` → `Models.Bichos["77"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: se encabrita 0,42 rad y la cadera trasera se separa como mucho 0,57. Sin errores en la consola.
- **Notas:** la cuenta de ChatGPT «Bernat Bogatell Pascual» sacó las hojas 75, 76 y 77 y se quedó sin imágenes gratis hasta el día siguiente a las 13:12. El siguiente es el 78 (Ventisaurio); todavía no tiene hoja.

## 2026-10-24 · bbogatell (Claude) · Bicho 76 · Esfinge-saurio Real (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 13 studs y tiene 667 piezas. Es un ceratopsio grande de bloques color arena dorada **tumbado en pose de esfinge** sobre la cima escalonada de una pirámide, con **jeroglíficos tallados** en los escalones, incrustaciones de oro y obeliscos. Tiene las patas delanteras estiradas, con zarpas, uñas y **brazaletes lapislázuli y oro**; con la derecha sujeta un **cetro dorado** con corona y una **gema roja** brillante. Las patas traseras están recogidas y la cola, enroscada, acaba en punta azul con bandas doradas. Lleva un **tocado de faraón**: un abanico de 27 rayas lapislázuli y oro sobre un disco azul con borde dorado, una banda dorada en la frente, una **cobra** y las caídas a rayas a los lados de la cara. Tiene dos cuernos largos en la frente y uno en la nariz, pico, **ojos azules pintados con kohl** y un gran **collar egipcio** de 5 filas de oro, gemas rojas y lapislázuli; la cabeza se agranda ×1,25. Alrededor orbitan 40 **jeroglíficos brillantes** y 10 estrellas. Efectos: arena dorada flotando (ritmo 60), jeroglíficos (ritmo 10), destellos (ritmo 40), rayos de sol (ritmo 30), escarabajos dorados (ritmo 5), polvo (ritmo 30) y **2 luces**. **Animación:** `Uncoil` con `UncoilRear` y `UncoilArm`: **se alza, levanta el cetro y lanza un rayo de sol** hacia el cielo mientras los jeroglíficos giran a toda velocidad, con chispas y 2 ondas.
- **Rig `Generic`:** `Uncoil` acepta ahora `UncoilRear` (encabritarse) y `UncoilArm` (subir el brazo `Side = 1`).
- **Dónde:** `ServerStorage.CreatureBuilders.EsfingeSaurio` → `Models.Bichos["76"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el cetro sube, el cuerpo se alza 0,27 rad, el rayo se enciende y los jeroglíficos orbitan. La cadera trasera se separa como mucho 0,57. Sin errores en la consola.
- **Notas:** el siguiente es el 77 (Paraceratherium Rey); su hoja ya se ha pedido.

## 2026-10-24 · bbogatell (Claude) · Bicho 75 · Elasmo Leviatán (Cósmico), hecho desde cero y muy épico

- **Qué:** Cósmico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 15,5 studs y tiene 660 piezas. Es un plesiosaurio enorme echado sobre una plataforma redonda de piedra oscura con luces turquesa, en un mar estrellado con **cubos de agua flotando**. Tiene un **cuello descomunal enrollado en espiral** (64 tramos que suben dando 2,3 vueltas, cada vez más finos, con la parte de abajo lila y estrellas blancas brillantes) y la cabeza arriba mirando las estrellas, con dientes, ojos y cresta turquesa. El cuerpo es ancho, azul profundo con escamas y **lunares de estrellas**, con la barriga y el pecho lila y una cola corta. Tiene **cuatro aletas largas como alas** con nervio, escamas y **bordes de neón turquesa**, y 12 **estrellas en órbita** alrededor del cuello. Efectos: estrellas que suben por el cuello (ritmo 60), agua flotante (ritmo 40), burbujas (ritmo 30), destellos (ritmo 40), nebulosa (ritmo 20), polvo cósmico (ritmo 30) y **2 luces** (turquesa y lila). **Animaciones:** la espiral del cuello gira despacio, como un tornillo; las aletas aletean, y con `Uncoil` se levanta, **la espiral gira a toda velocidad y lanza un rayo de luz cósmica** desde la cabeza hasta el cielo, con chispas, 2 ondas y las aletas batiendo.
- **Rig `Generic`:** nuevo `Uncoil` (la espiral acelera y se encienden las piezas `CosmicBeam`, con el atributo `BeamTransparency`).
- **Dónde:** `ServerStorage.CreatureBuilders.ElasmoLeviatan` → `Models.Bichos["75"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Uncoil`, piezas `CosmicBeam`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el rayo se enciende (transparencia 0,2), el cuello gira (1,98 studs) y las aletas baten 1,5 studs. Sin errores en la consola.
- **Notas:** el rayo escondido se crea después de medir la altura para no encoger el modelo. El siguiente es el 76 (Esfinge-saurio Real); su hoja ya se ha pedido.

## 2026-10-24 · bbogatell (Claude) · Bicho 74 · Mordisquitos #013 (Cósmico, bebé), hecho desde cero y muy épico

- **Qué:** primer Cósmico, **muy épico**, hecho desde cero a partir de su hoja de ChatGPT (la pasó el usuario); sin sonidos. Mide 12 studs y tiene 741 piezas. Es un **T-Rex bebé chibi** verde menta con escamas de bloques, una **cabeza enorme** con pinchitos, **ojazos azules brillantes** con reflejos, el hocico con la boca abierta y dientecitos, y la barriga crema a rayas. Mordisquea un **hueso** del que cuelga **baba brillante** cian, y tiene bracitos, patitas con dedos, una colita con cresta, **pañal blanco** con cierres y un **collar rojo con una plaquita dorada «#013»** (SurfaceGui). Flota dentro de una **burbuja de laboratorio** transparente con reflejos, rodeada de **3 anillos metálicos inclinados** con remaches y luces cian que **orbitan** cada uno a su velocidad, y de **16 estrellas doradas en órbita**. Está sobre un **pedestal de laboratorio** con tiras de luz cian y morada, paneles, pantallas, abrazaderas doradas, tubos de ensayo con líquido brillante y cables. Efectos: estrellitas en órbita (ritmo 50), burbujas (ritmo 40), chispas del laboratorio (ritmo 30), destellos azul y morado (ritmo 40), baba brillante (ritmo 10), polvo cósmico (ritmo 30) y **2 luces** (cian y morada). **Animaciones:** flota subiendo y bajando (`Float`), mastica el hueso (`Chew`) y `Tumble`: se encoge, sube y **da 2 volteretas dentro de la burbuja riéndose** mientras los anillos giran 4 veces más rápido, con destellos en cada vuelta y una onda al acabar.
- **Rig `Generic`:** nuevo rol `Ring` (piezas que orbitan sobre su `RingAxis` por `RingPivot` a `RingSpeed`) y nuevo `Tumble`.
- **Dónde:** `ServerStorage.CreatureBuilders.Mordisquitos` → `Models.Bichos["74"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (rol `Ring`, `RingPivot`, `RingAxis`, `RingSpeed`, `Tumble`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: da las volteretas, los anillos orbitan, sube 1,2 studs flotando y las patas siguen al cuerpo (0,39). Sin errores en la consola.
- **Notas:** se ha borrado el script temporal `ServerScriptService.VerUltimosBichos`. Las hojas se piden ahora con otra cuenta gratuita de ChatGPT (Bernat Bogatell Pascual). El siguiente es el 75 (Elasmo Leviatán).

## 2026-10-24 · bbogatell (Claude) · Bicho 73 · Amonites Ciudadela #007 (Mítico, evento), hecho desde cero y muy épico

- **Qué:** Mítico de evento **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 13,5 studs y tiene 870 piezas. Es un **amonites colosal**. La concha es una espiral enorme con el borde de costillas a rayas marrón y crema, y en cada lado una espiral a rayas con costillas radiales. Encima lleva una **ciudadela medieval entera**:
  - murallas almenadas con ventanas;
  - cuatro torres en las esquinas, dos en los lados, dos intermedias y una torre del homenaje alta, todas con **tejados cónicos azules**, aguja dorada y **bandera roja**;
  - casitas con chimeneas;
  - estandartes rojos con emblema dorado;
  - una puerta con rastrillo y un **puente levadizo** con cadenas;
  - decenas de **ventanas iluminadas** amarillas.

  Delante está el cuerpo naranja con manchas, un **ojo amarillo grande** a cada lado y 10 **tentáculos** naranjas con ventosas que bajan hasta la arena y se enroscan hacia arriba (cuerpo y tentáculos agrandados ×1,45). Está sobre un **arrecife** con arena, corales de colores y algas, y tiene un **«#007» dorado flotando** encima (BillboardGui). **Aura de Mítico** dorada. Efectos: humo de las chimeneas (ritmo 30 entre las dos), pájaros (ritmo 5), destellos dorados (ritmo 40), burbujas (ritmo 20), aura (ritmo 20) y dos luces. **Animación:** `Citadel`: se levanta moviendo los tentáculos, las ventanas se encienden, salen anillos dorados de las torres como campanadas (sin sonido) y **baja el puente levadizo**, con una lluvia de destellos y una onda; luego lo vuelve a subir.
- **Rig `Generic`:** nuevo rol `Bridge` (puente levadizo sobre `BridgePivot`), atributo de pieza `CitadelGlow` y nuevo `Citadel`.
- **Dónde:** `ServerStorage.CreatureBuilders.AmonitesCiudadela` → `Models.Bichos["73"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (rol `Bridge`, `BridgePivot`, `CitadelGlow`, `Citadel`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el puente baja 1,51 rad y las ventanas cambian de color (0,57). Sin errores en la consola.
- **Notas:** el siguiente es el 74 (Mordisquitos #013, primer Cósmico).

## 2026-10-24 · bbogatell (Claude) · Bicho 72 · Meganeura Gigante (Mítico), hecho desde cero y muy épico

- **Qué:** Mítico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 10,4 studs y tiene 685 piezas. Es una **libélula gigantesca** posada en horizontal sobre un tocón de helecho gigante con musgo, lianas y helechos alrededor, en un pantano prehistórico con nenúfares, flores y un anillo verde brillante. Tiene unos **ojos compuestos enormes** azules brillantes, con un brillo interior y una rejilla de facetas. El tórax es verde metálico con rayas amarillas. El **abdomen es larguísimo**, con 11 segmentos verdes, azules y amarillos, anillos amarillos, manchas brillantes y pinzas al final. Tiene seis patas finas con espinas agarradas al tocón y **cuatro alas larguísimas transparentes** con una red de nervios negros (borde delantero grueso, nervios a lo largo y de través), paneles semitransparentes de colores del arcoíris y una mancha oscura cerca de la punta. La libélula se construye y luego se agranda ×1,6 desde el tocón. **Aura de Mítico** verde. Efectos: polvo brillante de las alas (ritmo 50), destellos arcoíris (ritmo 30), viento (ritmo 20), luciérnagas (ritmo 15), aura (ritmo 20) y dos luces. **Animación:** `Buzz`: con las alas zumbando despega, da **2 vueltas a toda velocidad** inclinándose en las curvas y dejando una **estela arcoíris** (`BuzzFx`), aterriza con una onda y abre las alas. Las alas aletean rápido siempre.
- **Rig `Generic`:** nuevo `Buzz` (vueltas de un insecto volador con estela).
- **Dónde:** `ServerStorage.CreatureBuilders.Meganeura` → `Models.Bichos["72"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Buzz`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: sube 2,6 studs, da vueltas de unos 7,7 studs de diámetro y las patas se separan como mucho 0,48 del cuerpo. En la primera prueba se separaban 1,8 al girar, y se arregló marcándolas `FrontLeg`. Sin errores en la consola.
- **Notas:** el siguiente es el 73 (Amonites Ciudadela #007).

## 2026-10-23 · bbogatell (Claude) · Bicho 71 · Cordero-saurio Alado (Mítico), hecho desde cero y muy épico

- **Qué:** Mítico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 12,8 studs y tiene 918 piezas. Es un saurópodo grande con el cuello largo levantado, la cola larga y baja y cuatro patas como columnas. Está **cubierto de rizos de lana** esponjosa (cientos de bolitas blancas y crema) y tiene una franja lisa crema por delante del cuello. La **cara es de cordero** rosa claro, con hocico, nariz rosa, sonrisa, ojos dulces con pestañas y colorete, **orejas caídas** blancas con el interior rosa y un mechón de lana; la cabeza se agranda ×1,4. Sobre la cabeza flota una **aureola dorada brillante**. Tiene dos **alas de ángel enormes**: un hueso de tres tramos del que cuelgan en abanico 20 plumas largas blancas con **puntas doradas**, una capa de plumas cobertoras y plumón en el hombro, con la cara ancha hacia delante. Las pezuñas son doradas y partidas. Está sobre una **nube** con suelo de mármol, borde dorado, escalones de mármol y oro y columnitas. **Aura de Mítico** blanca. Efectos: plumas (ritmo 40), destellos dorados (ritmo 40), nubecitas (ritmo 15), rayos de luz desde la aureola (ritmo 15), notas de arpa (ritmo 5), aura (ritmo 20) y dos luces. **Animación:** `TakeOff`: se agacha con las alas arriba, las bate con fuerza y se eleva brillando, con ráfagas de destellos dorados, plumas y rayos de luz (`TakeOffFx`), y aterriza. Las alas aletean siempre suavemente (`WingFlap`).
- **Dónde:** `ServerStorage.CreatureBuilders.CorderoAlado` → `Models.Bichos["71"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: se eleva 1,6 studs y las alas baten 1,4 studs. Sin errores en la consola.
- **Notas:** el siguiente es el 72 (Meganeura Gigante).

## 2026-10-23 · bbogatell (Claude) · Bicho 70 · Toroceratops Infernal (Mítico), hecho desde cero y muy épico

- **Qué:** Mítico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 12,6 studs y tiene 771 piezas. Es un ceratopsio enorme y pesado a cuatro patas, de bloques rojo oscuro partidos por una **red de grietas de lava** brillantes (zigzags de tiras Neon naranja y amarillo pegadas a las caras, recortadas para que no se salgan de los bordes). Tiene una joroba alta en los hombros y pinchos negros con punta dorada en tres filas por el lomo y la cola. La gola es grande, con grietas de lava en rayos y una corona de pinchos negros. Los **cuernos de toro** son negros y gruesos, con anillos: salen hacia los lados y se curvan hacia arriba. Lleva un **aro dorado en la nariz** y tiene ojos de fuego bajo unas cejas enfadadas, humo negro por los orificios y la boca con brillo de lava. Las patas son gruesas, con **pezuñas negras partidas en llamas**. Está sobre roca volcánica agrietada con ríos y charcos de lava. **Aura de Mítico** roja. Efectos: llamas en las pezuñas (ritmo 50 entre las cuatro), humo negro por la nariz (ritmo 30), brasas (ritmo 40), chispas (ritmo 30), calor, aura (ritmo 20) y dos luces. **Animación:** `Charge`: agacha los cuernos, rasca el suelo 3 veces con la pezuña soltando chispas de fuego (`StompFx`) y embiste dejando un rastro de fuego (`ChargeFx` en las pezuñas).
- **Dónde:** `ServerStorage.CreatureBuilders.Toroceratops` → `Models.Bichos["70"]`. Docs: `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: en la embestida el cuerpo avanza 3,9 studs y las patas traseras lo siguen (se separan como mucho 0,64). Sin errores en la consola.
- **Notas:** el siguiente es el 71 (Cordero-saurio Alado).

## 2026-10-23 · bbogatell (Claude) · Bicho 69 · Filo Cuchilla (Mítico), hecho desde cero y muy épico

- **Qué:** Mítico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 11 studs y tiene **1302 piezas**. Es un anquilosaurio bajo y ancho de bloques de acero oscuro con placas, remaches y la barriga oscura. Las placas del lomo se han convertido en **decenas de cuchillas plateadas**: 11 filas de 7, más altas en el centro del lomo y abiertas hacia los lados, y una falda de cuchillas en los flancos. Cada cuchilla es metálica con nervio, punta de dos cuñas y **filo blanco brillante** (Neon). Tiene las patas cortas y gruesas con garras de acero y una cuchilla en cada cadera. La cabeza es ancha y blindada (se agranda ×1,3), con **ojos rojos brillantes**, la boca abierta llena de dientes y cuchillas en las mejillas y la frente. La cola sube en curva por detrás y acaba en una **sierra circular gigante** de 24 dientes con filo brillante, ranuras, tornillos y buje, que **gira sin parar**. Está sobre una **forja** oscura con ventanas de lava, grietas de lava, lingotes y humo. **Aura de Mítico** gris. Efectos: chispas de la sierra (ritmo 60), destellos metálicos (ritmo 30), humo (ritmo 20), virutas (ritmo 20), zarpazos (ritmo 3), aura (ritmo 20), luz y una luz naranja en la sierra. **Animación:** `SawWhip`: se agacha mientras la sierra acelera a tope echando chispas, da un coletazo brutal a un lado y otro al otro (ráfagas de chispas, zarpazos y onda en cada uno) y ruge.
- **Rig `Generic`:** nuevo rol `Saw` (sierra que va con la cola y gira sobre `SawPivot` a `SawSpeed`) y nuevo `SawWhip`.
- **Dónde:** `ServerStorage.CreatureBuilders.FiloCuchilla` → `Models.Bichos["69"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (rol `Saw`, `SawPivot`, `SawSpeed`, `SawWhip`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la sierra gira siempre y se acelera mucho en el coletazo, y la cola se mueve 1,9 studs a cada lado. Sin errores en la consola.
- **Notas:** la hoja se pidió con otra cuenta de ChatGPT, en un chat nuevo y con el estilo de la ficha descrito entero. El siguiente es el 70 (Toroceratops Infernal).

## 2026-10-23 · bbogatell (Claude) · Bicho 68 · Cristalito (Mítico), hecho desde cero y muy épico

- **Qué:** Mítico **muy épico**, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 12 studs y tiene **1240 piezas**. Es un dinosaurio robusto a cuatro patas hecho **entero de cristal facetado**. Cada cristal es un prisma de cristal (material Glass) azul hielo semitransparente con punta de dos cuñas y un núcleo Neon cian que brilla por dentro. La piel son placas de cristal inclinadas blancas y azules con vetas finas azul oscuro. Tiene una **cresta enorme de cristales** que nace en el cuello, es más alta sobre los hombros y sigue por el lomo; también salen cristales de los flancos, las patas, la cola y la cabeza. La cabeza es angulosa, con la boca muy abierta, dientes de cristal blancos, lengua azul brillante, ojos cian brillantes y cuernos de cristal hacia atrás; se construye y luego se agranda ×1,32. Las patas son columnas gruesas con garras de cristal blanco, y la cola es larga y se curva hacia arriba al final. Está sobre una roca oscura con un **anillo azul brillante**, runas y racimos de cristales alrededor. **Aura de Mítico** azul. Efectos: destellos tipo diamante (ritmo 50), fragmentos flotantes (ritmo 20), polvo brillante (ritmo 30), rayos de luz (ritmo 15), aura (ritmo 20) y luz azul. **Animación:** `Shatter`: se agacha cargándose (todos los cristales se encienden parpadeando y tiembla), se encabrita rugiendo y **todos los cristales del cuerpo salen disparados hacia fuera** brillando en blanco, con una gran explosión de destellos y rayos, la luz a tope y 2 ondas; aguanta el rugido temblando bajo una lluvia de destellos y los cristales vuelven a su sitio.
- **Rig `Generic`:** nuevo rol `Spike` (cristales que salen disparados por `SpikeDir` desde `SpikePivot`), atributo de pieza `ShatterGlow` y nuevo `Shatter`.
- **Dónde:** `ServerStorage.CreatureBuilders.Cristalito` → `Models.Bichos["68"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (rol `Spike`, `SpikePivot`, `SpikeDir`, `ShatterGlow`, `Shatter`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: los cristales salen disparados 0,55 studs, el núcleo cambia de color 0,72 al brillar y el cuerpo se encabrita 0,21 rad. Sin errores en la consola.
- **Notas:** la hoja la pasó el usuario (ChatGPT se había quedado sin imágenes gratis). El siguiente es el 69 (Filo Cuchilla); todavía no tiene hoja.

## 2026-10-23 · bbogatell (Claude) · Bicho 67 · Panda-saurio Sakura (Mítico), hecho desde cero

- **Qué:** Mítico muy detallado, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 11,6 studs (con el cerezo) y tiene 685 piezas. Es un ornitópodo grande **sentado sobre las patas traseras como un panda rojo**, de pelo rojo anaranjado de bloques, con bandas crema en el pecho. Tiene las patas y los brazos marrón oscuro con zarpas grandes y garras, apoyados delante. La **cara es de panda rojo**: hocico blanco, manchas blancas en las mejillas y encima de los ojos, lágrimas oscuras bajo los ojos, nariz negra y orejas puntiagudas con borde blanco esponjoso. Lleva en la boca una **rama de cerezo con hojas y flores**, y una **cola enorme con anillos** rojos y crema que se enrosca por un lado. Está sentado en una plataforma de piedra con hierba y pétalos caídos, bajo un **cerezo en flor**: tronco retorcido, ramas y copa de flores rosa de muchas piezas. La cabeza se construye y luego se agranda ×1,22 desde el cuello. **Aura de Mítico** rosa. Efectos: pétalos que caen del cerezo (ritmo 50), hojas (ritmo 20), destellos rosa (ritmo 25), mariposas (ritmo 5), aura (ritmo 20) y luz rosa. **Animación:** `TreeShake`: se echa hacia delante y da 3 golpes con la espalda contra el tronco; el cerezo se tambalea y suelta una lluvia de pétalos con una onda en cada golpe; luego mira los pétalos con los brazos en alto. Además mastica la rama (`Chew`).
- **Rig `Generic`:** nuevo rol `Tree` (piezas que se balancean alrededor de `TreePivot` y no siguen al cuerpo) y nuevo `TreeShake` (sacudir el árbol con la espalda, pétalos `ShakeFx`).
- **Bicho 66 (Hámster-saurio):** se le ha cambiado la colita corta por una **cola de dinosaurio** gruesa con la parte de abajo blanca y pinchos naranjas, como en la vista de lado de su hoja (533 piezas).
- **Dónde:** `ServerStorage.CreatureBuilders.PandaSakura` → `Models.Bichos["67"]`; `ServerStorage.CreatureBuilders.HamsterSaurio` → `Models.Bichos["66"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (rol `Tree`, `TreePivot`, `TreeShake`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el cuerpo se echa atrás 0,26 rad, el cerezo se sacude 0,044 rad y cae la lluvia de pétalos. Sin errores en la consola.
- **Notas:** el siguiente es el 68 (Cristalito, Mítico, 12 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 66 · Hámster-saurio (Mítico), hecho desde cero

- **Qué:** Mítico muy detallado, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 11,8 studs y tiene 507 piezas. Es un dinosaurio **hámster** gordo y peludo, naranja y blanco, que corre dentro de una **rueda de hámster gigante** de metal gris con tiras de luz verde neón, peldaños, tornillos y cables. La rueda está montada en dos soportes en forma de A sobre una plataforma de laboratorio redonda con luces verdes y una consola con pantalla y botones. El hámster tiene **cara de hámster**: mofletes blancos hinchados, orejas redondas rosa por dentro, ojos verdes brillantes, bigotes, nariz rosa, dos dientes de roedor y la boca abierta. Lleva pinchos naranjas por el lomo, un **arnés tecnológico** con correas negras, una batería con dos tubos verdes brillantes, cables y medidores, zarpas con garras negras y una cola corta. El hámster se construye y luego se agranda ×1,38 desde el suelo de la rueda para que la llene como en la hoja. **Aura de Mítico** verde. Efectos: chispas eléctricas (ritmo 40), rayos (ritmo 10), luces que parpadean (ritmo 15), humo (ritmo 20), aura (ritmo 20) y luz verde. **Animación:** `WheelRush`: corre en el sitio sin parar mientras la rueda gira; cada pocos segundos corre a tope, la rueda acelera ×4 y suelta rayos eléctricos, y al frenar revienta con la onda.
- **Rig `Generic`:** nuevo rol `Spin` (piezas que giran sin parar alrededor del eje X por `SpinPivot`, a `SpinSpeed` rad/s) y nuevo `WheelRush` (correr a tope en la rueda con rayos `RushFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.HamsterSaurio` → `Models.Bichos["66"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (rol `Spin`, `SpinPivot`, `SpinSpeed`, `WheelRush`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la rueda gira y llega a 7 rad/s en la carrera. La cadera se separa del cuerpo como mucho 0,48 studs. Sin errores en la consola.
- **Notas:** el siguiente es el 67 (Panda-saurio Sakura); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 65 · Ptero Grieta (Mítico), hecho desde cero

- **Qué:** Mítico muy detallado, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 11,6 studs y tiene 469 piezas. Es un pterosaurio grande de piedra gris apoyado en las cuatro extremidades (los brazos-ala llegan al suelo) sobre una roca agrietada con luz cian. Unas **grietas cian brillantes le parten todo el cuerpo** y dejan ver el espacio con estrellas (ventanas de espacio en los costados y el pecho). Tiene las alas abiertas, con armazón de huesos de piedra y membrana de **espacio azul oscuro con estrellas, llena de agujeros cian brillantes**, el pico largo y afilado, una cresta larga hacia atrás con una grieta, ojos cian y garras. **Aura de Mítico** cian. Efectos: chispas cian (ritmo 40), rayos de luz (ritmo 8), fragmentos de piedra (ritmo 15), polvo cian (ritmo 30), aura (ritmo 20) y luz cian. **Animación:** `GlowMove = "bellow"`: se encabrita echando la cabeza atrás; las grietas se encienden de golpe y da 3 destellos, con un rayo de luz cian que sale de la boca, anillos y onda.
- **Dónde:** `ServerStorage.CreatureBuilders.PteroGrieta` → `Models.Bichos["65"]`. Docs: `BICHOS_DINOSAURIOS.md`, `GUIA_BICHOS.md`.
- **Probado:** en Play en la base: el cuerpo se encabrita 0,31 rad y las grietas se encienden. Sin errores en la consola.
- **Notas:** se queda en 469 piezas, un poco por debajo de las 500 de un Mítico. El siguiente es el 66 (Hámster-saurio, Mítico, 11,8 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 64 · Gorilasaurio Cósmico (Mítico), hecho desde cero

- **Qué:** Mítico muy detallado, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 12,4 studs y tiene 616 piezas. Es un dinosaurio enorme que **anda sobre los nudillos como un gorila** encima de una roca lunar con cráteres. Los brazos (las patas delanteras) son gigantes y arqueados, con bandas de armadura gris plateado, orbes morados brillantes en los hombros y puños enormes con los nudillos plateados. Las patas traseras son más cortas, la joroba de los hombros es muy grande y el cuerpo baja hacia la cadera. Es morado oscuro de bloques con **constelaciones** brillantes (estrellas unidas por líneas finas) y lleva una fila de pinchos de hueso crema en el lomo y en la cola larga. Tiene **cara de gorila** (frente marcada, ojos morados brillantes, boca abierta rugiendo con colmillos) dentro de un **casco de astronauta** transparente con aro plateado y tornillos brillantes. **Aura de Mítico** morada con anillos. Efectos: estrellas (ritmo 40), polvo cósmico (ritmo 30), ondas al golpearse el pecho, destellos (ritmo 20), aura (ritmo 20) y luz morada. **Animación:** `ChestBeat`: se pone de pie, se golpea el pecho 6 veces lanzando anillos cósmicos, ruge y cae sobre los nudillos (polvo y onda).
- **Rig `Generic`:** nuevo `ChestBeat` (golpearse el pecho como un gorila).
- **Dónde:** `ServerStorage.CreatureBuilders.Gorilasaurio` → `Models.Bichos["64"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `ChestBeat`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el cuerpo se levanta 0,72 rad y la pata trasera se separa como mucho 0,69 studs de la cadera al levantarse. Sin errores en la consola.
- **Notas:** el siguiente es el 65 (Ptero Grieta, Mítico, 11,6 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 63 · Rata Raptor Tóxica (Mítico), hecho desde cero

- **Qué:** Mítico muy detallado, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 11,2 studs y tiene 499 piezas. Es un raptor grande encorvado sobre una rejilla de alcantarilla con charcos tóxicos, gris oscuro de bloques cubierto de manchas verde neón. Tiene **cabeza de rata**: hocico largo y afilado con nariz rosa, bigotes largos, orejas grandes redondas rosa y gris, ojos verdes brillantes, dos dientes de roedor amarillos largos y la boca abierta con baba verde. Los brazos con garras van hacia delante, las patas son fuertes con garras oscuras y la **cola de rata es rosa, larga y por segmentos**. A la espalda lleva un **barril amarillo radiactivo** atado con correas de cuero marrón y hebillas, con el símbolo de radiactividad en los lados. **Aura de Mítico** verde. Efectos: burbujas verdes (ritmo 40), humo tóxico del barril (ritmo 40), gotas de baba (ritmo 20), chispas (ritmo 15), aura (ritmo 20) y luz verde. **Animación:** `Sniff`: olfatea con la cabeza baja de lado a lado, se encabrita chillando con la boca muy abierta y temblando, y el barril suelta una gran nube tóxica (chorro de baba y onda verde).
- **Rig `Generic`:** nuevo `Sniff` (olfatear, chillar y nube tóxica).
- **Dónde:** `ServerStorage.CreatureBuilders.RataRaptor` → `Models.Bichos["63"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Sniff`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la mandíbula se abre 0,7 rad en el chillido y la pata se separa como mucho 0,48 studs de la cadera. Sin errores en la consola.
- **Notas:** ChatGPT sacó dos opciones para esta hoja; se usó la 1. El siguiente es el 64 (Gorilasaurio Cósmico, Mítico, 12,4 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 62 · Anqui Dorado (Mítico), hecho desde cero

- **Qué:** Mítico muy detallado, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 10,6 studs (con la cola en alto) y tiene 522 piezas. Es un anquilosaurio entero de oro (metal con reflejo 0,2) sobre un montón de monedas y lingotes de oro. Tiene el lomo como una cúpula de placas de oro, cada una con una gema roja, azul o verde incrustada, pinchos de oro en los flancos, patas de oro con garras negras, una cabeza ancha con la boca abierta y dientes y un ojo rojo. La cola se curva hacia atrás y hacia arriba hasta una maza en forma de **lingote de oro gigante**, con bordes biselados, gemas y sello. **Aura de Mítico** dorada. Efectos: monedas doradas que saltan (ritmo 40), destellos (ritmo 40), brillos de gemas (ritmo 20), polvo dorado (ritmo 30), rayos de luz, aura (ritmo 20) y luz dorada. **Animación:** `TailSlam`: levanta el lingote y lo estampa contra el suelo con una lluvia de monedas, destellos, una nube dorada y la onda.
- **Dónde:** `ServerStorage.CreatureBuilders.AnquiDorado` → `Models.Bichos["62"]`. Docs: `BICHOS_DINOSAURIOS.md`, `GUIA_BICHOS.md`.
- **Probado:** en Play en la base: el lingote gira 0,89 rad en el golpe. Sin errores en la consola.
- **Notas:** el siguiente es el 63 (Rata Raptor Tóxica, Mítico, 11,2 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 61 · Terrorave (Mítico), hecho desde cero

- **Qué:** Mítico muy detallado, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 12 studs y tiene 444 piezas. Es un ave gigante que no vuela, sobre **patas naranjas larguísimas y musculosas** dobladas en zigzag: muslo con plumas, rodilla delante, talón atrás, caña larga con escamas en anillo y pies con tres dedos largos y garras negras curvas. Tiene el cuerpo compacto cubierto de plumas gris oscuro una a una, con plumas largas y desordenadas en el lomo y un abanico de cola, alas diminutas, cuello grueso en S con una gorguera de plumas y la cabeza grande (se agranda ×1,45) con cresta desordenada, ojo rojo de mala cara y un **pico amarillo enorme y ganchudo como un hacha**, con la punta negra, abierto con la boca roja. **Aura de Mítico** gris oscuro. Efectos: plumas negras (ritmo 30), chispas rojas (ritmo 25), polvo (ritmo 25), zarpazos rojos (ritmo 3), aura (ritmo 20) y luz roja. Mueve la cabeza a saltitos. **Animación:** `Peck`: corre en el sitio a toda velocidad levantando polvo, se para, echa la cabeza atrás y da un picotazo brutal hacia abajo (zarpazos, chispas, polvo y onda) y sacude la cabeza.
- **Rig `Generic`:** nuevo `Peck` (carrera en el sitio y picotazo).
- **Dónde:** `ServerStorage.CreatureBuilders.Terrorave` → `Models.Bichos["61"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Peck`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: hace el picotazo y la pata se separa como mucho 0,42 studs de la cadera. Sin errores en la consola.
- **Notas:** el siguiente es el 62 (Anqui Dorado, Mítico, 10,6 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 60 · Mosa Orca (Mítico), hecho desde cero

- **Qué:** Mítico muy detallado, hecho desde cero a partir de su hoja de ChatGPT (la primera de la cuenta nueva de ChatGPT); sin sonidos. Mide 11,4 studs y tiene 490 piezas. Es un mosasaurio musculoso y gordo que salta en diagonal desde una ola azul enrollada con espuma blanca y salpicaduras. El cuerpo hace un arco desde la cola, abajo detrás, hasta la cabeza, arriba delante, y está pintado como una orca: lomo negro brillante, barriga, garganta y mandíbula blancas, mancha blanca detrás del ojo amarillo y manchas blancas en los costados. Tiene una aleta dorsal negra alta, dos aletas pectorales grandes, cola con aleta horizontal y una cabeza grande (se agranda ×1,45) con la boca enorme abierta, roja por dentro y llena de dientes blancos. **Aura de Mítico** de agua azul. Efectos: salpicaduras (ritmo 40), espuma (ritmo 30), burbujas (ritmo 25), gotas (ritmo 25), aura (ritmo 20) y luz azul. **Animación:** `Breach` con `BreachSpin`: se hunde en la ola, salta fuera dando una vuelta entera en el aire y cae con un chapuzón enorme (salpicaduras, espuma y 2 ondas).
- **Rig `Generic`:** nuevo atributo `BreachSpin` (vuelta entera en el aire durante el `Breach`).
- **Dónde:** `ServerStorage.CreatureBuilders.MosaOrca` → `Models.Bichos["60"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (`BreachSpin`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el cuerpo sube 3,8 studs y gira 5 rad en el salto. Sin errores en la consola.
- **Notas:** el siguiente es el 61 (Terrorave, Mítico, 12 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 59 · Plesio Fantasma (Mítico), hecho desde cero

- **Qué:** Mítico muy detallado, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 11,6 studs y tiene 520 piezas. Es un plesiosaurio grande y **semitransparente** (Neon azul fantasma pálido, transparencia 0,4) que **flota en el aire** sobre una niebla oscura. Tiene el cuerpo gordo con las costillas y la columna brillando por dentro, el cuello larguísimo en S hasta una cabeza con la mandíbula larga abierta llena de dientes y ojos blancos brillantes, cuatro aletas grandes como hojas (por paneles, con nervios brillantes), la cola deshaciéndose en humo y **cadenas grises translúcidas** enrolladas en el cuello y el cuerpo, colgando en bucles. **Aura de Mítico** azul pálido. Efectos: humo azul de la cola (ritmo 40), niebla (ritmo 30), orbes fantasma (ritmo 15), destellos (ritmo 15), aura (ritmo 20) y luz azul pálido. **Animación:** flota subiendo y bajando sin parar; `Phase`: se encoge hacia atrás y se desvanece casi del todo, flota invisible y reaparece de golpe lanzándose hacia delante con un grito fantasmal (anillo, humo, orbes y onda).
- **Rig `Generic`:** nuevos `Phase` (desvanecerse y reaparecer, cambiando la transparencia de todas las piezas) y `Float` (balanceo de un bicho que flota).
- **Dónde:** `ServerStorage.CreatureBuilders.PlesioFantasma` → `Models.Bichos["59"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (`Phase` y `Float`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la transparencia del cuerpo pasa de 0,4 a 0,9 y vuelve a 0,4, y el cuerpo sube y baja 0,75 studs flotando. Sin errores en la consola.
- **Notas:** ChatGPT se ha quedado sin imágenes gratuitas (vuelven a las 19:30), así que paro aquí. El siguiente es el 60; su hoja aún no se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 58 · Anqui Guindilla (Mítico), hecho desde cero

- **Qué:** Mítico muy detallado, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 10,4 studs (con la maza en alto) y tiene 530 piezas. Es un anquilosaurio enorme, muy ancho y bajo, pegado al suelo, rojo picante cubierto de bultos rojos con juntas oscuras. Lleva filas de pinchos amarillos triangulares como semillas por todo el lomo y pinchos grandes en los flancos, patas cortas y gruesas con garras oscuras y una cabeza ancha y baja con la frente acorazada, ojos ámbar brillantes y boca con colmillos. La cola larga sube en curva por detrás hasta una **guindilla gigante**: roja brillante con arrugas y brillo, cáliz verde y rabito verde curvado. **Aura de Mítico** naranja. Efectos: llamarada por la boca (a ráfagas), humo (ritmo 30), chispas (ritmo 30), brasas (ritmo 20), calor (ritmo 20), aura (ritmo 20) y luz naranja. **Animación:** `ChiliBlast`: se echa atrás, escupe una llamarada enorme temblando y luego pasa la guindilla por encima y la estampa contra el suelo (explosión de fuego, polvo y 2 ondas).
- **Rig `Generic`:** nuevo `ChiliBlast` (llamarada + mazazo con la cola).
- **Dónde:** `ServerStorage.CreatureBuilders.AnquiGuindilla` → `Models.Bichos["58"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `ChiliBlast`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la maza gira 0,96 rad en el golpe y la pata trasera se separa como mucho 0,37 studs de la cadera. Sin errores en la consola.
- **Notas:** el siguiente es el 59 (Plesio Fantasma, Mítico, 11,6 studs); su hoja ya está hecha.

## 2026-10-23 · bbogatell (Claude) · Bicho 57 · Ptero del Vacío (Mítico), hecho desde cero

- **Qué:** Mítico muy detallado, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 11,2 studs y tiene 658 piezas. Es un pterodáctilo negro con remaches y vetas moradas brillantes que flota sobre una roca con grietas moradas, con las patas colgando y garras blancas. Tiene el cuello largo hacia delante, un pico larguísimo y afilado que apunta hacia abajo, una cresta como una cuchilla hacia atrás con el borde morado y un **único ojo magenta** brillante en la frente. Las alas están **rotas en decenas de esquirlas** negras alargadas y puntiagudas con bordes morados brillantes, en abanico y en 3 capas que flotan separadas del cuerpo y se balancean. **Aura de Mítico** morada. Efectos: fragmentos girando (ritmo 15), humo morado (ritmo 40), chispas magenta (ritmo 25), destellos (ritmo 15), aura (ritmo 20) y luz morada. **Animación:** `WingBurst`: los fragmentos se juntan formando alas enteras y luego salen disparados con una explosión de energía del vacío (chispas, fragmentos, anillo magenta, destello de luz y onda).
- **Rig `Generic`:** nuevo atributo `Drift` + `DriftDir` para piezas de ala que flotan separadas (se juntan en el `WingBurst`).
- **Dónde:** `ServerStorage.CreatureBuilders.PteroVacio` → `Models.Bichos["57"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (fragmentos flotantes), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la capa de fragmentos de fuera se acerca y se aleja del cuerpo entre 5,1 y 6,3 studs (se junta y sale disparada en la explosión). Sin errores en la consola.
- **Notas:** el siguiente es el 58 (Anqui Guindilla, Mítico, 10,4 studs); su hoja ya está hecha y la del 59 se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 56 · Tricera Lanudo (Mítico), hecho desde cero

- **Qué:** Mítico muy detallado, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 11,8 studs y tiene 900 piezas. Es un tricerátops enorme con silueta de mamut: joroba más alta en los hombros que baja hacia la cadera, cubierto de pelo largo marrón rojizo en mechones colgando (con falda bajo la barriga) y escarcha en el lomo. Tiene patas gruesas y peludas con pies gris oscuro y uñas crema, una cabeza grande y baja con placas grises en la cara, pico gris oscuro y ojos azules brillantes con anillo gris, dos cuernos enormes de marfil sobre los ojos que se curvan hacia fuera y hacia delante, un cuerno corto en la nariz y dos colmillos de mamut que bajan y se curvan hacia arriba. La gola es redonda, con borde de pelo y llena de placas de cristal de hielo azul que apuntan hacia fuera, con carámbanos colgando del borde de abajo y una barba de carámbanos en la barbilla; la cola es peluda y caída. **Aura de Mítico** azul helada. Efectos: nieve (ritmo 40), vaho por la nariz (ritmo 20), escarcha (ritmo 25), destellos en los carámbanos (ritmo 10), aura (ritmo 20) y luz azul. **Animación:** `Quake`: se encabrita, embiste con los cuernos y estampa la parte delantera rompiendo el hielo (nube de escarcha, trozos de hielo, 2 ondas azules) mientras todo el cuerpo tiembla.
- **Dónde:** `ServerStorage.CreatureBuilders.TriceraLanudo` → `Models.Bichos["56"]`. Docs: `BICHOS_DINOSAURIOS.md`, `GUIA_BICHOS.md`.
- **Probado:** en Play en la base: embiste 3 studs hacia delante y la pata trasera se separa como mucho 0,38 studs de la cadera. Sin errores en la consola.
- **Notas:** el siguiente es el 57 (Ptero del Vacío, Mítico, 11,2 studs); su hoja ya está hecha y la del 58 se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 55 · Estego Cristal (Mítico), hecho desde cero

- **Qué:** Mítico muy detallado, hecho desde cero a partir de su hoja de ChatGPT; sin sonidos. Mide 11,6 studs y tiene 919 piezas. Tiene silueta de estegosaurio de verdad: el lomo hace un arco muy alto sobre la cadera, las patas delanteras son cortas y las traseras altas y gruesas (como columnas con uñas grandes color crema), el cuello largo baja hasta una cabeza pequeña y baja con pico lavanda y ojo rosa brillante con borde turquesa, y la cola larga, casi horizontal, acaba en 4 pinchos de cristal. Es morado oscuro de bloques con baldosas más claras y gemas rosas, con una franja lavanda en la barriga. A lo largo del lomo lleva una doble fila de racimos de cristales facetados (rosa, lila y violeta; Neon translúcido con núcleo brillante) más altos sobre la cadera. **Aura de Mítico** rosa, con cristales pequeños alrededor de los pies. Efectos: destellos tipo diamante (ritmo 40), fragmentos que flotan (ritmo 15), polvo brillante (ritmo 30), luz que sube desde los cristales, aura (ritmo 20) y luz rosa. **Animación:** `GlowMove = "flare"`: se agacha, se levanta con todos los cristales encendidos, tiembla y suelta una lluvia de fragmentos de cristal con la onda.
- **Dónde:** `ServerStorage.CreatureBuilders.EstegoCristal` → `Models.Bichos["55"]`. Docs: `BICHOS_DINOSAURIOS.md`, `GUIA_BICHOS.md`.
- **Probado:** en Play en la base: el cuerpo sube 0,46 studs, los cristales se encienden y la pata se separa como mucho 0,11 studs de la cadera. Sin errores en la consola.
- **Notas:** el siguiente es el 56 (Tricera Lanudo, Mítico, 11,8 studs); su hoja ya está hecha y la del 57 se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 54 · Raptigre (Mítico), hecho desde cero

- **Qué:** Mítico muy detallado, hecho **desde cero** a partir de su hoja de ChatGPT y no copiando otro bicho; sin sonidos. Mide 11 studs y tiene 490 piezas. Tiene silueta de felino: patas traseras largas y potentes con zarpas anchas y garras de marfil enormes, cuerpo inclinado hacia arriba, cuello que va hacia delante, brazos largos y musculosos con zarpas y garras negras con punta de marfil, y una cola larguísima y gruesa que sube y baja en curva. La cabeza es de tigre: cráneo redondo, orejas redondas (naranja, negro y blanco), hocico corto y ancho blanco con nariz negra y rosa, mejillas blancas con mechones, ojos verde esmeralda grandes con pupila rasgada, bigotes, colmillos de sable enormes y la boca muy abierta. Es naranja con rayas negras como anillos alrededor del cuerpo, el cuello, las patas y la cola, con la parte de abajo y el pecho blancos y pelo suelto por todo el cuerpo. **Aura de Mítico** naranja. Efectos: zarpazos naranjas (ritmo 3), chispas (ritmo 30), hojas (ritmo 20), polvo (ritmo 15), aura (ritmo 20) y luz naranja. **Animación:** `Pounce`: se agazapa, salta rugiendo hacia delante y da un zarpazo (zarpazos grandes, chispas, polvo y onda).
- **Guía:** nueva regla en `GUIA_BICHOS.md`: cada bicho se hace desde cero estudiando su hoja vista por vista (silueta, cabeza, manos y pies, dibujo) y comparando la vista previa de lado y de 3/4. Ya no se copia el constructor de otro bicho cambiando colores.
- **Dónde:** `ServerStorage.CreatureBuilders.Raptigre` → `Models.Bichos["54"]`. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: en el salto el cuerpo sube 2,5 studs y avanza 4,7, y la pata se separa como mucho 0,26 studs de la cadera. Sin errores en la consola.
- **Notas:** los bichos 37-53 se hicieron copiando otros constructores y se parecen mucho entre sí; se pueden rehacer desde cero si se quiere. El siguiente es el 55 (Estego Cristal, Mítico, 11,6 studs).

## 2026-10-23 · bbogatell (Claude) · Bicho 53 · Dilo Venenoso (Mítico) + gola con todo el cuerpo

- **Qué:** Mítico muy detallado y fiel a su hoja de ChatGPT, sin sonidos. Mide 11 studs y tiene 610 piezas. Es un dilofosaurio adulto y grande, verde selva con manchas y bultos verde oscuro, barriga y garganta crema, dos crestas rojas con borde blanco y la boca abierta llena de dientes, con baba de veneno verde. Lleva una gola enorme desplegada: 11 paneles por lado, morados brillantes (Neon) con lunares amarillos y puntas y pinchos rojos. **Aura de Mítico** morada a ras de suelo. Efectos: burbujas tóxicas (ritmo 30), gotas (ritmo 20), humo morado (ritmo 25), esporas (ritmo 15), aura morada (ritmo 20) y luz morada. **Animación:** `Frill`: se encabrita abriendo la gola de golpe, se lanza hacia delante con la boca muy abierta y escupe una bola de veneno grande (chorro de gotas, nube morada y verde, onda morada), y tiembla amenazante con la gola abierta antes de plegarla.
- **Rig `Generic`:** la animación de la gola (`Frill`) ahora mueve todo el cuerpo: encabritarse, lanzarse, escupir con `SpitFx` y la onda, temblar. Antes solo daba un tirón de cabeza. También mejora al 13 (Dilo Abanico).
- **Dónde:** `ServerStorage.CreatureBuilders.DiloVenenoso` → `Models.Bichos["53"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (`Frill` y `SpitFx`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base con el 53: se lanza hacia delante escupiendo y la pata sigue pegada a la cadera (0,5 studs como mucho). Sin errores en la consola. El 13 usa el mismo código, pero no lo he visto en Play: el comando de prueba con él pone un fósil por abrir.
- **Notas:** el siguiente es el 54 (Raptigre, Mítico, 11 studs); su hoja ya está hecha y la del 55 se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 52 · Escorpi Raptor (Mítico)

- **Qué:** Mítico muy detallado y fiel a su hoja de ChatGPT, sin sonidos. Mide 10,8 studs y tiene 502 piezas. Es un raptor acorazado de placas negras brillantes con borde y franjas rojas, barriga a segmentos, cuernos y placas rojas en la cabeza y ojos rojo anaranjado brillantes. En vez de manos tiene pinzas rojas enormes de escorpión: bandas de armadura, dedos con punta negra, dientes y pinchos. La cola segmentada (anillos rojos, placas, pinchos a los lados) sube y se curva por encima del lomo hasta un aguijón enorme verde veneno brillante. **Aura de Mítico** verde a ras de suelo. Efectos: gotas de veneno del aguijón (ritmo 30), burbujas tóxicas (ritmo 20), humo verde (ritmo 30), chispas (ritmo 15), aura verde (ritmo 20) y luz verde. **Animación:** `Sting`: chasquea las pinzas 3 veces, se echa atrás armando la cola y se lanza clavando el aguijón por encima de la cabeza (chorro de veneno, nube verde, polvo y onda), y bombea veneno 2 veces más.
- **Rig `Generic`:** nuevo `Sting` (picadura de escorpión).
- **Dónde:** `ServerStorage.CreatureBuilders.EscorpiRaptor` → `Models.Bichos["52"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Sting`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la cola gira 0,95 rad en la picadura y la pata se separa como mucho 0,10 studs de la cadera. Sin errores en la consola.
- **Notas:** el siguiente es el 53 (Dilo Venenoso, Mítico, 11 studs); su hoja ya está hecha y la del 54 se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 51 · Raptor Duna (Mítico)

- **Qué:** el primer Mítico, muy detallado y fiel a su hoja de ChatGPT, sin sonidos. Mide 10,6 studs y tiene 542 piezas. Es un raptor grande y fibroso cubierto de plumas arena dorada una a una, con rayas y puntas marrones. Lleva un pañuelo de beduino a cuadros azules y blancos envuelto en la cabeza y el cuello, con un nudo y dos puntas largas colgando por detrás. También lleva gafas de arena negras con montura de bronce y brillo, brazaletes de bronce con remaches en los brazos y las patas, garras negras con el filo de bronce y garras de hoz. **Aura de Mítico:** tres discos beige brillantes a ras de suelo y destellos que suben. Efectos: remolino de arena (ritmo 40), arena fina (ritmo 30), destellos de bronce (ritmo 15), polvo (ritmo 20), aura beige (ritmo 20) y luz amarilla fuerte. **Animación:** `Whirl`: se agacha, salta dando 2 vueltas enteras en el aire (gira todo el bicho, patas incluidas) dentro de un tornado de arena, aterriza levantando polvo y da un tajo con los dos brazos (zarpazos de bronce, chispas y onda).
- **Dónde:** `ServerStorage.CreatureBuilders.RaptorDuna` → `Models.Bichos["51"]`. Docs: `GUIA_BICHOS.md` (atributo `Whirl` y cómo es el aura de los Míticos), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: gira 12,1 rad (2 vueltas) y la pata se separa como mucho 0,35 studs de la cadera. Sin errores en la consola.
- **Notas:** el siguiente es el 52 (Escorpi Raptor, Mítico, 10,8 studs); su hoja ya está hecha y la del 53 se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Arreglo: el cuerpo ya no se despega de las patas en las animaciones especiales

- **Qué:** en las animaciones que mueven el cuerpo (embestidas, cabezazos, saltos, cargas, embestidas de lado...) las patas traseras y las de los bípedos se quedaban clavadas en su sitio, y el cuerpo se separaba de ellas hasta 2-3 studs. Ahora cada pata va a donde la pose de acción lleva su cadera (desplazamiento y giro del cuerpo). Hacia abajo no se mueven, para no atravesar el suelo. Las patas delanteras con `FrontLeg` siguen igual (van con el cuerpo entero). Arregla todos los bichos a la vez, porque el cambio está en el rig.
- **Rig `Generic`:** también trae `Whirl` (giro de torbellino de todo el bicho, patas incluidas, en una tormenta de arena; con `spinCF`), que se usará con el 51.
- **Dónde:** `ReplicatedStorage.CreatureRigs` (`legShift`). Docs: `GUIA_BICHOS.md` (patas).
- **Probado:** en Play con el Pachirino (embestida), el Uta Raptor (salto), el Sauro Pinchos (embestida de lado) y el Majunga Calvo (cabezazo): de lado o por encima de la pata, la cadera se separa como mucho 0,2-0,4 studs (respiración y temblores); antes eran 2-3 studs. Sin errores en la consola.
- **Notas:** el siguiente bicho sigue siendo el 51 (Raptor Duna, primer Mítico).

## 2026-10-23 · seguo970 (Claude) · Pala 10: arregladas las normales al revés
**Qué:** las mallas de la pala 10 venían con las normales al revés, así que partes de la pala salían huecas o mal iluminadas (el mango y las tiras casi no se veían). Ahora todas las piezas se ven sólidas y con la luz bien. Además, la hoja y las garras negras ya no salen azuladas por el reflejo del cielo.
**Dónde:** `ReplicatedStorage.Models.Palas.L10`: `DoubleSided = true` en todas las MeshParts, y `Reflectance` 0,02 en `Blade` y `GripTalons` (antes 0,12).
**Probado:** capturas de la pala sola antes y después, y de cerca de la hoja y de la empuñadura.
**Notas:** el arreglo de verdad sería dar la vuelta a las normales en el GLB y reimportar. Con `DoubleSided` se ve bien sin reimportar.

## 2026-10-23 · seguo970 (Claude) · Pala 10: Pala de Garra de Raptor importada y animada
**Qué:** la pala 10 es ahora el modelo `PalaGarraRaptor`: garra en hoz negra con el filo rojo, mango de hueso con tiras de cuero, colmillos, cuentas, plumas rojas, negras y a rayas, y empuñadura en forma de garra de reptil.
- **Colores:** el archivo trae colores por vértice (el degradado negro-rojo de la hoja, las rayas de las plumas, las escamas) y en Roblox se ven, así que se usan tal cual con `Color` blanco y acabado brillante en la hoja y las garras.
- **Animación:**
  - las 10 piezas de plumas se mecen como con viento, desfasadas: el abanico de arriba ±4° y las que cuelgan ±7–8°;
  - brillo rojo suave en la hoja que respira;
  - brasas rojas saliendo de la hoja.
- **Al sacarla:** estallido de brasas.
- **Al cavar:** tierra y brasas rojas (sin temblor de cámara).

**Dónde:**
- Nuevo `ReplicatedStorage.Models.Palas.L10`, a escala 1: ya mide 7 studs.
- `Handle` invisible, con la mano izquierda encima de la empuñadura.
- Las plumas van con Motor6D `ShovelOrbit`.
- `ShovelFx`: `DIG_FX.L10 = clawDig`.
- Original en `ServerStorage.PalaGarraRaptor`.

**Probado:** en Play con `Debug "level" 10`:
- la mano izquierda va a 0,65 del mango y la derecha a 3,44, bajo la hoja (3,69);
- las plumas se mueven hasta 7,9°;
- no hay errores en la consola.

Captura en la mano.
**Notas:** no se han hecho la estela al golpear ni las animaciones de personaje propias (el juego usa `DigAnim`). **Para próximas palas:** si el GLB trae colores por vértice, Roblox los muestra; basta con poner `Color` en blanco.

## 2026-10-23 · bbogatell (Claude) · Bicho 50 · Giganoto Rey (Legendario)

- **Qué:** el último Legendario, muy detallado y fiel a su hoja de ChatGPT, con brillo dorado intenso en el suelo (3 discos) y sin sonidos. Mide 11,5 studs (el mayor de los Legendarios) y tiene 419 piezas. Es un terópodo gigante gris oscuro con rayas rojas y bultos oscuros, barriga, garganta y mandíbula gris claro. Tiene el cráneo largo con dientes de sierra, una cresta de bultos sobre los ojos, cicatrices en el hocico y el costado, ojos naranja brillante (con brillo Neon) y brazos fuertes con garras negras. Efectos: anillo de rugido, polvo (ritmo 30), piedrecitas que saltan (ritmo 20), chispas rojas (ritmo 20) y luz roja. **Animación:** `Roar` (ángulo 1,0): se agacha cogiendo aire y ruge con la cabeza alzada y la boca muy abierta, temblando, con 3 anillos de rugido rojos, aliento, piedras que saltan y onda.
- **Dónde:** `ServerStorage.CreatureBuilders.GiganotoRey` → `Models.Bichos["50"]`. Docs: `BICHOS_DINOSAURIOS.md`, `GUIA_BICHOS.md`.
- **Probado:** en Play en la base: el cuerpo se encabrita 0,28 rad rugiendo. Sin errores en la consola.
- **Notas:** con este se acaban los Legendarios. El siguiente es el 51 (Raptor Duna), el primer **Mítico** (10,6 studs, 500-750 piezas, 4-6 emisores, aura a ras de suelo y luz fuerte); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 49 · Tarbo Mongol (Legendario)

- **Qué:** Legendario muy detallado y fiel a su hoja de ChatGPT, con brillo dorado en el suelo y sin sonidos. Mide 10,4 studs y tiene 474 piezas. Es un tiranosaurio asiático poderoso, marrón arena con rayas y bultos marrón oscuro y barriga crema. Lleva un casco dorado de guerrero mongol (cinta con remaches, cúpula, pincho, gema roja, carrilleras) con un largo penacho de pelo rojo y borlas rojas. También lleva hombreras de cuero en capas con remaches dorados y ribete rojo, correas con un medallón dorado en el pecho y una tela roja colgando por detrás. Efectos: arena (ritmo 30), destellos dorados (ritmo 20), polvo (ritmo 15), viento (ritmo 10) y luz cálida. **Animación:** `WarCry`: coge aire agachado, se encabrita rugiendo con la cabeza alta y los brazos abiertos (3 anillos de rugido, temblando), baja la cabeza y carga levantando una tormenta de arena (nube de arena, polvo y onda dorada, y otra ráfaga de arena).
- **Rig `Generic`:** nuevo `WarCry` (grito de guerra y carga).
- **Dónde:** `ServerStorage.CreatureBuilders.TarboMongol` → `Models.Bichos["49"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `WarCry`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la mandíbula se abre 0,71 rad en el rugido y el cuerpo se inclina 0,48 rad en la carga. Sin errores en la consola.
- **Notas:** el siguiente es el 50 (Giganoto Rey, Legendario, 11,5 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 48 · Argentino Titán (Legendario)

- **Qué:** Legendario muy detallado y fiel a su hoja de ChatGPT, con brillo dorado en el suelo y sin sonidos. Mide 11 studs y tiene 430 piezas. Es un saurópodo descomunal y el más ancho de su rareza, marrón grisáceo con baldosas oscuras y rayas celeste y blanca a lo largo de los costados del cuerpo, el cuello y la cola, con barriga beige. Las patas son como columnas de templo, con anillo, base y uñas blancas. Tiene el cuello alto, la cabeza pequeña y una banderita argentina clavada en el lomo (celeste, blanca y celeste con un sol amarillo). Efectos: ondas de polvo (ritmo 30), piedrecitas (ritmo 15), destellos celestes (ritmo 15), temblor del suelo (rocas en el pisotón) y luz blanca. **Animación:** `Rear`: se levanta sobre las patas traseras pataleando en el aire y da un pisotón descomunal (gran nube de polvo, rocas, 2 ondas celestes), con todo el cuerpo temblando.
- **Dónde:** `ServerStorage.CreatureBuilders.ArgentinoTitan` → `Models.Bichos["48"]`. Docs: `BICHOS_DINOSAURIOS.md`, `GUIA_BICHOS.md`.
- **Probado:** en Play en la base: el cuerpo se levanta 0,59 rad. Sin errores en la consola.
- **Notas:** el siguiente es el 49 (Tarbo Mongol, Legendario, 10,4 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 47 · Krono Mandíbula (Legendario)

- **Qué:** Legendario muy detallado y fiel a su hoja de ChatGPT, con brillo dorado alrededor y sin sonidos. Mide 10,2 studs y tiene 523 piezas. Es un reptil marino colosal que salta casi en vertical de una ola: una corona de salpicaduras de bloques azules de distintas alturas, con espuma blanca. Es azul petróleo con baldosas más claras, barriga blanca con manchas azules y 4 aletas enormes a franjas. La cabeza es gigante (un tercio del cuerpo: se hace a tamaño normal y luego se agranda ×1,3 desde el cuello), con la mandíbula muy abierta llena de dientes cónicos uno a uno y ojos amarillos. La cola queda bajo el agua. Efectos: salpicaduras (ritmo 30), espuma (ritmo 15-20), burbujas (ritmo 20), gotas (ritmo 15-20) y luz azul. **Animación:** `Chomp`: se echa atrás abriendo la mandíbula al máximo, se lanza y la cierra de golpe (estrellas y gotas en la boca, salpicadura y onda), da un segundo mordisco y sacude la cabeza como si tuviera una presa.
- **Rig `Generic`:** nuevo `Chomp` (mordisco gigante).
- **Dónde:** `ServerStorage.CreatureBuilders.KronoMandibula` → `Models.Bichos["47"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Chomp`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la mandíbula se abre 0,75 rad y se cierra 0,5 rad de golpe. Sin errores en la consola.
- **Notas:** el siguiente es el 48 (Argentino Titán, Legendario, 11 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 46 · Majunga Calvo (Legendario)

- **Qué:** Legendario muy detallado y fiel a su hoja de ChatGPT, con brillo dorado en el suelo y sin sonidos. Mide 9,2 studs y tiene 408 piezas. Es un terópodo robusto, rojo ladrillo con manchas y bultos negros, barriga, garganta y mandíbula grises. Tiene la cara corta y gorda con un cuerno redondo amarillo en la frente (con brillo), cejas negras grandes de mal humor, ojos amarillos y brazos diminutos. Efectos: nubecita negra de enfado sobre la cabeza (ritmo 5), chispas rojas (ritmo 25), vapor por la nariz (ritmo 15), polvo (ritmo 10) y luz roja. **Animación:** `Tantrum`: patalea de rabia muy rápido, botando y temblando con la cabeza y los brazos agitándose, con polvo en cada pisotón y nubes negras con rayos rojos encima. Luego se echa atrás y da un cabezazo con el cuerno (polvo, nube y onda roja).
- **Rig `Generic`:** nuevo `Tantrum` (rabieta y cabezazo).
- **Dónde:** `ServerStorage.CreatureBuilders.MajungaCalvo` → `Models.Bichos["46"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Tantrum`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el cuerpo bota 0,46 studs en la rabieta y avanza en el cabezazo. Se ven la nube negra y los rayos. Sin errores en la consola.
- **Notas:** el siguiente es el 47 (Krono Mandíbula, Legendario, 10,2 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 45 · Diplo Látigo (Legendario)

- **Qué:** Legendario muy detallado y fiel a su hoja de ChatGPT, con brillo dorado en el suelo y sin sonidos. Mide 10,4 studs y tiene 421 piezas. Es un saurópodo larguísimo, gris verdoso con bandas blancas en el lomo, el cuello y la cola, baldosas oscuras y claras y barriga crema. Tiene patas como columnas con uñas blancas, el cuello largo estirado hacia arriba y hacia delante, y cabeza pequeña y alargada. La cola es todavía más larga: sube por detrás y acaba en un látigo fino con anillos blancos. Efectos: onda blanca en la punta de la cola (ritmo 1), polvo (ritmo 25), viento (ritmo 15), destellos (ritmo 10) y luz blanca. **Animación:** `Crack`: lleva la cola muy a un lado girando el cuerpo al otro y se agacha; luego la cruza de golpe y en la punta revienta un anillo sónico blanco con viento, polvo y onda, con un segundo chasquido en el rebote. Cada vez cambia de lado.
- **Rig `Generic`:** nuevo `Crack` (latigazo con anillo sónico en la punta de la cola).
- **Dónde:** `ServerStorage.CreatureBuilders.DiploLatigo` → `Models.Bichos["45"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Crack`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: la cola gira 0,98 rad en el latigazo. Sin errores en la consola.
- **Notas:** el siguiente es el 46 (Majunga Calvo, Legendario, 9,2 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 44 · Guanlong Cresta (Legendario)

- **Qué:** Legendario muy detallado y fiel a su hoja de ChatGPT, con brillo dorado en el suelo y sin sonidos. Mide 9 studs y tiene 478 piezas. Es un tiranosaurio esbelto cubierto de plumas naranjas y blancas una a una, con plumas largas en el cuello y los brazos, cara crema, boca abierta con dientes y patas marrón oscuro. A lo largo del hocico lleva una cresta alta como un casco, en degradado amarillo, naranja y rojo; el borde rojo es Neon. Efectos: chispas naranjas (ritmo 25), brasas (ritmo 15), humo (ritmo 10), destellos en la cresta (ritmo 10) y luz naranja. **Animación:** `GlowMove = "bellow"`: se encabrita echando la cabeza atrás con la boca abierta, la cresta se enciende en blanco amarillento y da 3 destellos, cada uno con una explosión de chispas y brasas (onda naranja al primero).
- **Dónde:** `ServerStorage.CreatureBuilders.GuanlongCresta` → `Models.Bichos["44"]`. Docs: `BICHOS_DINOSAURIOS.md`, `GUIA_BICHOS.md`.
- **Probado:** en Play en la base: el cuerpo se encabrita 0,38 rad y la cresta se enciende (Neon). Sin errores en la consola.
- **Notas:** el siguiente es el 45 (Diplo Látigo, Legendario, 10,4 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 43 · Megalo Abuelo (Legendario)

- **Qué:** Legendario muy detallado y fiel a su hoja de ChatGPT, con brillo dorado en el suelo y sin sonidos. Mide 9,6 studs y tiene 438 piezas. Es un gran terópodo veterano y erguido, marrón verdoso con rayas y bultos oscuros y barriga crema. Lleva sombrero de copa negro con cinta roja y hebilla dorada, monóculo dorado con cadena, pajarita roja con cuello blanco, bigote y patillas de escamas blancas y un bastón de hueso blanco con punta dorada en la mano derecha. Efectos: destellos dorados (ritmo 25), polvo de libro antiguo (ritmo 15), burbujas de té (ritmo 10) y luz cálida. **Animación:** `Bow`: hace girar el bastón soltando destellos, se quita el sombrero, hace una reverencia profunda llevándolo al pecho (explosión de destellos y estrellas y onda dorada), se incorpora y se lo vuelve a poner.
- **Rig `Generic`:** nuevo `Bow` y nuevo rol `Hat` (piezas que van con la cabeza y se pueden levantar; atributo `HatPivot`).
- **Dónde:** `ServerStorage.CreatureBuilders.MegaloAbuelo` → `Models.Bichos["43"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Bow` y rol `Hat`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el cuerpo se inclina 0,56 rad en la reverencia y el sombrero se separa 1,2 studs de la cabeza. Sin errores en la consola.
- **Notas:** el siguiente es el 44 (Guanlong Cresta, Legendario, 9 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 42 · Uta Raptor (Legendario)

- **Qué:** Legendario muy detallado y fiel a su hoja de ChatGPT, con brillo dorado en el suelo y sin sonidos. Mide 9,8 studs y tiene 453 piezas. Es el raptor más grande, musculoso y pesado, cubierto de plumas verde oscuro una a una con puntas naranja y rayas verde muy oscuro. Tiene una gran cresta de plumas verdes y naranjas en la cabeza y el cuello, cara gris con la boca abierta llena de dientes y ojo amarillo. Los brazos llevan plumas largas como alas y garras negras con la punta roja, y cada pata tiene una garra de hoz negra con el filo rojo. Efectos: zarpazos rojos (ritmo 3), plumas (ritmo 20), chispas (ritmo 20), polvo (ritmo 10) y luz verde. **Animación:** `Pounce`: se agacha encogido, salta hacia delante y hacia arriba con los brazos abiertos y las patas pateando, da un tajo con las garras de hoz (2 ráfagas de zarpazos rojos y chispas) y aterriza fuerte (polvo y onda verde).
- **Rig `Generic`:** nuevo `Pounce` (salto de raptor con tajo de las garras de hoz).
- **Dónde:** `ServerStorage.CreatureBuilders.UtaRaptor` → `Models.Bichos["42"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Pounce`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el cuerpo avanza 2,9 studs y sube 2,6 studs en el salto. Sin errores en la consola.
- **Notas:** el siguiente es el 43 (Megalo Abuelo, Legendario, 9,6 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 41 · Lio Pleuro (Legendario)

- **Qué:** Legendario muy detallado y fiel a su hoja de ChatGPT, con brillo dorado alrededor y sin sonidos. Mide 9,6 studs y tiene 522 piezas. Es un reptil marino masivo que sale casi erguido de un remolino turquesa: anillos de baldosas en espiral con espuma blanca y agua transparente. Es azul oscuro con baldosas azul claro por encima y gris claro con baldosas por la barriga. Tiene una cabeza enorme de cocodrilo con la boca muy abierta (roja por dentro, 38 dientes blancos uno a uno), ojos amarillos, cuello corto y 4 aletas anchas a franjas. Bajo el agua lleva una cola con aleta, que solo se ve al saltar. Efectos: remolino de agua (ritmo 30), burbujas (ritmo 20), espuma (ritmo 15), gotas (ritmo 15) y luz azul. **Animación:** `Breach`: se hunde encogido con las aletas arriba, sale disparado del remolino con la boca abierta (salpicadura), gira en el aire y cae con un chapuzón enorme (gran salpicadura de gotas y espuma, 2 ondas), y se balancea en el agua.
- **Rig `Generic`:** nuevo `Breach` (salto fuera del charco para bichos marinos erguidos; `Dive` está pensado para los que nadan tumbados).
- **Dónde:** `ServerStorage.CreatureBuilders.LioPleuro` → `Models.Bichos["41"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Breach`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el cuerpo sube 3,7 studs al saltar. Sin errores en la consola.
- **Notas:** el siguiente es el 42 (Uta Raptor, Legendario, 9,8 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 40 · Quetzal Gigante (Legendario)

- **Qué:** Legendario muy detallado y fiel a su hoja de ChatGPT, con brillo dorado en el suelo y sin sonidos. Mide 10,8 studs y tiene 470 piezas. Es un pterosaurio gigante apoyado en las cuatro extremidades: las delanteras son largas, naranja con franjas blancas de hueso, y llevan las alas plegadas, con la membrana naranja por secciones y baldosas. Tiene cuerpo blanco con escamas, cuello de jirafa blanco, cabeza amarilla con cresta roja, ojos verdes y pico larguísimo en degradado amarillo, naranja y rojo. Efectos: ráfagas de viento (ritmo 25), plumitas (ritmo 15), destellos (ritmo 10) y luz cálida. **Animación:** `WingBurst`: pliega las alas y se agacha; luego las abre de golpe hacia arriba, con una ráfaga de viento, polvo y plumas, un destello de luz y una onda.
- **Dónde:** `ServerStorage.CreatureBuilders.QuetzalGigante` → `Models.Bichos["40"]`. Docs: `BICHOS_DINOSAURIOS.md`, `GUIA_BICHOS.md`.
- **Probado:** en Play en la base: las alas se abren 1,21 rad. Sin errores en la consola.
- **Notas:** el siguiente es el 41 (Lio Pleuro, Legendario, 9,6 studs); su hoja ya se ha pedido.

## 2026-10-22 · seguo970 (Claude) · Pala 9: Pala de Liana y Colmillo importada, texturizada y animada
**Qué:** la pala 9 es ahora el modelo `Pala9_LianaColmillo` (54 piezas): rama marrón envuelta en lianas verdes, colmillo de marfil, hojas, 7 hibiscos rosas y naranjas, y 13 pétalos y hojas flotando alrededor.
- **Materiales de Roblox:**
  - rama: Wood;
  - colmillo: Marble crema;
  - lianas, hojas y flores: SmoothPlastic con los colores del prompt (hojas y pétalos por las dos caras).
- **Animación:**
  - las 13 piezas flotantes orbitan despacio alrededor del mango, en los dos sentidos, girando sobre sí mismas;
  - las hojas de la cabeza se mecen ±6° como con brisa;
  - las flores cabecean;
  - los zarcillos se mueven;
  - destellos blancos en la cabeza, algún pétalo cayendo y una luz suave en el colmillo.
- **Al sacarla:** estallido de pétalos y destellos.
- **Al cavar:** tierra con pétalos y hojas despedidos (sin temblor de cámara).

**Dónde:**
- Nuevo `ReplicatedStorage.Models.Palas.L9`, a escala 1,45 (7,5 studs). El `Handle` es invisible, con la mano izquierda encima de las lianas de la base.
- 37 piezas con Motor6D `ShovelOrbit`: 13 flotantes, 8 hojas de la cabeza, 14 de las flores y 2 zarcillos.
- `ShovelFx`: `DIG_FX.L9 = jungleDig`, y se busca `Blade_Tusk` para el efecto.
- Original en `ServerStorage.Pala9_LianaColmillo`.

**Probado:** en Play con `Debug "level" 9`:
- la mano izquierda va a 1,10 de la base y la derecha a 3,93, bajo el colmillo (4,29);
- las piezas flotantes giran;
- no hay errores en la consola.

Captura en la mano.
**Notas:** no se ha hecho el «pop» de escala al sacarla ni las animaciones de personaje propias (el juego usa `DigAnim`).

## 2026-10-23 · bbogatell (Claude) · Bicho 39 · Pachirino (Legendario)

- **Qué:** Legendario muy detallado y fiel a su hoja de ChatGPT, con brillo dorado en el suelo y sin sonidos. Mide 9,2 studs y tiene 464 piezas. Es un ceratopsio corpulento, gris pardo moteado y cubierto de escamas en relieve una a una, con patas como columnas y uñas color hueso. Lleva un gran bulto marrón oscuro y rugoso en la nariz (44 bultitos), pico color hueso y gola con baldosas naranja entre anillos negros y borde negro, de la que salen dos cuernos gruesos color hueso curvados hacia arriba. Efectos: nieve (ritmo 25), vaho por la nariz (ritmo 15), escarcha brillante (ritmo 15), polvo de nieve (ritmo 8) y luz blanca. **Animación:** `Charge`: agacha la cabeza, rasca el suelo 3 veces resoplando nubes de vaho y da un cabezazo con el bulto que rompe el hielo (trozos de hielo, gran resoplido, nube de nieve y onda azul hielo).
- **Dónde:** `ServerStorage.CreatureBuilders.Pachirino` → `Models.Bichos["39"]`. Docs: `BICHOS_DINOSAURIOS.md`, `GUIA_BICHOS.md`.
- **Probado:** en Play en la base: el cuerpo avanza 1,95 studs y se inclina 0,42 rad en el cabezazo. Sin errores en la consola.
- **Notas:** el siguiente es el 40 (Quetzal Gigante, Legendario, 10,8 studs); su hoja ya se ha pedido. Hemos visto que la pieza invisible `Root` (1 stud, centrada en los pies) entra en la medida de la altura, así que todos los bichos se ven unos 0,5-0,9 studs más bajos de lo que pone su ficha. No se ha cambiado para que todos sigan igual.

## 2026-10-23 · bbogatell (Claude) · Bicho 38 · Sauro Pinchos (Legendario)

- **Qué:** Legendario muy detallado y fiel a su hoja de ChatGPT, con brillo dorado en el suelo y sin sonidos. Mide 8,6 studs y tiene 568 piezas. Es un nodosaurio enorme y blindado: cuerpo marrón oscuro cubierto de bultos marrón claro en relieve (uno a uno, cada uno con su protuberancia), pinchos gigantes grises con la punta dorada en el cuello y los hombros, pinchos más pequeños en los flancos y la cola, patas como columnas con uñas claras, pico oscuro y cola larga y gorda. Efectos: destellos dorados en los pinchos (ritmo 25), polvo (ritmo 15), chispas (ritmo 10) y luz dorada. **Animación:** se agacha, se eriza sacudiendo los pinchos con todo el cuerpo vibrando (3 ráfagas de destellos y chispas) y embiste de lado con el hombro (nube de polvo, explosión de chispas y onda dorada); cada vez embiste hacia un lado.
- **Rig `Generic`:** nuevo `Bristle` (erizarse y embestir de lado).
- **Dónde:** `ServerStorage.CreatureBuilders.SauroPinchos` → `Models.Bichos["38"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Bristle`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el cuerpo se desplaza 2,0 studs y gira 0,31 rad en la embestida. Sin errores en la consola.
- **Notas:** el siguiente es el 39 (Pachirino, Legendario, 9,2 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 37 · Elvisaurio (Legendario)

- **Qué:** Legendario muy detallado y fiel a su hoja de ChatGPT, con brillo dorado en el suelo y sin sonidos. Mide 9,4 studs y tiene 431 piezas. Es un terópodo blanco hielo con franjas azul claro, tupé amarillo de bloques, gafas de sol negras con brillo y boca abierta sonriente. Efectos: notas musicales (ritmo 20), estrellas (ritmo 20), copos de nieve (ritmo 15), destellos en las gafas (ritmo 5) y luz blanca. **Animación:** baile rockero de 2,4 s (mueve las caderas, alterna las patas, sube y baja los brazos y suelta notas y estrellas cada medio segundo) que acaba en una pose con salto, explosión de notas y onda azul hielo.
- **Rig `Generic`:** nuevo `Dance` (baile con pose final).
- **Dónde:** `ServerStorage.CreatureBuilders.Elvisaurio` → `Models.Bichos["37"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributo `Dance`), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play en la base: el cuerpo se mueve 1,39 studs y gira 0,27 rad bailando. Sin errores en la consola.
- **Notas:** el siguiente es el 38 (Sauro Pinchos, Legendario, 8,6 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bichos 35 y 36 · Braquio Cuellito y Terizino Tijeras (Legendarios)

- **Qué:** dos Legendarios más, muy detallados, fieles a sus hojas de ChatGPT y con animación especial enérgica. Los dos llevan brillo dorado en el suelo. Sin sonidos.
  - **35 · Braquio Cuellito** (11,2 studs, 401 piezas): saurópodo enorme y robusto verde agua con decenas de manchas verde oscuro, barriga y parte de abajo del cuello grises, patas como columnas con uñas blancas (las delanteras más largas) y cuello altísimo. Tiene la cabeza pequeña, con una joroba en la nariz y una rama marrón con hojas lima en la boca, que mastica. Efectos: hojas que caen girando (ritmo 25), destellos verdes (ritmo 15), polvo (ritmo 10) y luz verde. **Animación:** se agacha, se levanta sobre las patas traseras pataleando en el aire con la cabeza alta y estampa las patas delanteras (gran nube de polvo, piedras, 2 ondas) mientras todo el cuerpo tiembla.
  - **36 · Terizino Tijeras** (10,6 studs, 405 piezas): bípedo enorme cubierto de plumas blancas y negras sueltas, con barriga grande, cuello largo a franjas y cabeza pequeña con pico amarillo. Tiene brazos larguísimos abiertos, con plumas largas colgando y 3 garras enormes como cuchillas negras con el filo plateado. Efectos: destellos plateados en las garras (ritmo 25), plumas (ritmo 15), estelas plateadas (ritmo 10), polvo (ritmo 8) y luz blanca. **Animación:** doble tajo cruzado: se agacha con los brazos arriba, se lanza y corta con un brazo y luego con el otro girando el tronco; salen zarpazos plateados grandes y chispas.
- **Rig `Generic`:** nuevo `Rear` (se levanta sobre las patas traseras y estampa), con pataleo solo de las patas `FrontLeg`.
- **Dónde:** `ServerStorage.CreatureBuilders.BraquioCuellito` y `TerizinoTijeras` → `Models.Bichos["35"]` y `["36"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play con los dos en la base: el cuerpo del Braquio gira 0,55 rad al levantarse y el del Terizino 0,51 rad en el tajo. Sin errores en la consola.
- **Notas:** se ha borrado la fila de comparación de alturas (`FilaAlturas`). El siguiente es el 37 (Elvisaurio, Legendario, 9,4 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 34 · Dimetro Vela (Legendario)

- **Qué:** **34 · Dimetro Vela** (Legendario, 9 studs, 407 piezas), fiel a su hoja de ChatGPT. Es un reptil robusto gris verdoso con escamas sueltas más claras y más oscuras, barriga amarilla y patas muy abiertas a los lados con garras oscuras. Tiene la cabeza grande, con la boca abierta y dientes de dos tamaños arriba y abajo, lengua y ojo amarillo. En el lomo lleva una vela ENORME: 13 varillas blancas y una membrana por bandas de naranja a rojo que brilla en Neon de atardecer. Tiene brillo dorado en el suelo. Efectos: calor que sube (ritmo 25), chispas (ritmo 15), brasas (ritmo 10) y luz naranja. **Animación:** se encabrita rugiendo con la cabeza hacia atrás y la boca abierta mientras la vela se enciende 3 veces (ráfagas de chispas y calor, onda en el suelo). Sin sonidos.
- **Rig:** sin cambios (usa `GlowColor` + `GlowMove = "bellow"`).
- **Dónde:** `ServerStorage.CreatureBuilders.DimetroVela` → `Models.Bichos["34"]`. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play con `/bicho 34 base` + `/abrir`: la vela pasa a Neon y el bicho se encabrita rugiendo (captura). Sin errores en la consola.
- **Notas:** las dos cuentas de ChatGPT se han quedado sin imágenes (la primera vuelve mañana a las 19:15). El siguiente es el 35 (Braquio Cuellito, Legendario, 11,2 studs).

## 2026-10-23 · bbogatell (Claude) · Bicho 33 · Alo Feroz (Legendario)

- **Qué:** **33 · Alo Feroz** (Legendario, 10 studs, 403 piezas), fiel a su hoja de ChatGPT. Es un gran terópodo musculoso marrón rojizo con rayas negras en el lomo, el cuello, la cabeza, los muslos y la cola, escamas sueltas, crestas por el lomo y barriga, garganta y mandíbula beige. El cráneo es largo, con una mandíbula enorme llena de dientes uno a uno, cuernos rojos delante de los ojos, crestas rojas en el hocico, cicatrices y ojo amarillo. Tiene brazos fuertes con 3 garras negras y brillo dorado en el suelo. Efectos: aliento de vapor naranja (ritmo 25), chispas rojas (ritmo 20), anillo de rugido rojo (ritmo 1), polvo (ritmo 10) y luz roja. **Animación:** se agacha cogiendo aire, se encabrita y ruge con la boca muy abierta, temblando, con la cabeza y la cola agitándose y los brazos abiertos; salen 3 anillos de rugido enormes, ráfagas de vapor y la onda en el suelo. Está hecho a partir del constructor del Carno Toro. Sin sonidos.
- **Rig `Generic`:** nuevo `Roar` (+ emisores `RoarFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.AloFeroz` → `Models.Bichos["33"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play con `/bicho 33 base` + `/abrir`: la mandíbula se abre 0,92 rad en el rugido (captura encabritado con el anillo rojo). Sin errores en la consola.
- **Notas:** el siguiente es el 34 (Dimetro Vela, Legendario, 9 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bicho 32 · Tricera Jefe (Legendario)

- **Qué:** **32 · Tricera Jefe** (Legendario, 9,4 studs, 406 piezas), fiel a su hoja de ChatGPT. Es un triceratops enorme y macizo gris azulado, cubierto de escamas en relieve sueltas, con placas en el lomo y patas como columnas con uñas de marfil. Lleva la cabeza baja, con pico negro, ojo amarillo y cejas marcadas, tres cuernos de marfil largos y curvados y pinchos en las mejillas. La gola es gigante, azul real, con rombos amarillos y un borde de 18 pinchos de marfil. Tiene brillo dorado en el suelo. Efectos: destellos azules en la gola (ritmo 25), polvo (ritmo 20), piedrecitas (ritmo 10), resoplidos (ritmo 10) y luz azul. **Animación:** resopla y se encabrita, embiste hacia delante bajando los cuernos y estampa la parte delantera contra el suelo (gran nube de polvo, piedras, 2 ondas) mientras todo el cuerpo tiembla, y vuelve. Sin sonidos.
- **Rig `Generic`:** nuevo `Quake` (+ emisores `QuakeFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.TriceraJefe` → `Models.Bichos["32"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play con `/bicho 32 base` + `/abrir`: el cuerpo avanza 2,2 studs en la embestida (captura con la cabeza baja y los cuernos por delante). Sin errores en la consola.
- **Notas:** la primera cuenta de ChatGPT vuelve a tener imágenes. El siguiente es el 33 (Alo Feroz, Legendario, 10 studs); su hoja ya se ha pedido.

## 2026-10-23 · bbogatell (Claude) · Bichos 30 y 31 · Ptero Chispa y Archie de Luz (primeros Legendarios)

- **Qué:** los dos primeros Legendarios, muy detallados, fieles a sus hojas de ChatGPT y con animación especial enérgica. Los dos llevan el brillo dorado en el suelo de su rareza. Sin sonidos.
  - **30 · Ptero Chispa** (8 studs, 420 piezas): pterosaurio bebé chibi naranja y redondito cubierto de escamas sueltas naranjas, rojas y amarillas, con placas amarillas en la barriga y pinchitos rojos en el lomo. Cabeza enorme con ojos grandes y traviesos (iris, pupila y brillo), cejas, mofletes y pico amarillo abierto con lengua. En la cabeza lleva una llama viva en capas de Neon con lenguas de fuego. Alitas rojas de membrana con el borde amarillo y escamas, patitas con garras negras y una llama en la cola. Efectos: chispas de fuego (ritmo 20), humo claro (ritmo 10), brasas que suben (ritmo 10) y luz naranja. **Animación:** da dos saltitos, se echa atrás y escupe una llamarada larga por el pico, aleteando y moviendo la cabeza (onda en el suelo).
  - **31 · Archie de Luz** (9 studs, 352 piezas): Archaeopteryx adulto y majestuoso de plumas blanco perla con las puntas doradas, en varias capas en las alas, el pecho, la barriga y la cola. Alas muy abiertas hacia arriba, pico dorado, ojos azul cielo, garras negras y aureola de Neon dorado sobre la cabeza. Efectos: plumas blancas que caen (ritmo 20), destellos dorados (ritmo 20), rayitos de luz (ritmo 5) y luz blanca cálida. Está hecho a partir del constructor del Archie (12). **Animación:** pliega las alas y se agacha, las abre de golpe hacia arriba en una explosión de luz (ráfaga de destellos, rayos y plumas, la luz se enciende con fuerza y sale la onda) y se queda arriba con la cabeza alta antes de volver.
- **Rig `Generic`:** nuevos `FireBreath` (+ `FlameFx`) y `WingBurst` (+ `BurstFx` y `BurstLight`).
- **Dónde:** `ServerStorage.CreatureBuilders.PteroChispa` y `ArchieDeLuz` → `Models.Bichos["30"]` y `["31"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play con los dos en la base: captura del Chispa escupiendo fuego y del Archie de Luz en plena explosión de luz; el cuerpo del Archie se mueve 1,3 studs. Los saltitos del Chispa se agrandaron después de la prueba. Sin errores en la consola.
- **Notas:** el siguiente es el 32 (Tricera Jefe, Legendario, 9,4 studs); su hoja de ChatGPT ya se ha pedido.

## 2026-10-22 · seguo970 (Claude) · Pala 8: Pala de Cuerno de Triceratops importada, texturizada y animada
**Qué:** la pala 8 es ahora el modelo `Pala8_TriceratopsHorn`. La hoja es una gola de triceratops azul con rombos dorados, ribete y púas de hueso, y dos cuernos de marfil. El mango es de hueso con vendas de cuero y el pomo lleva una gema azul.
- **Materiales de Roblox:**
  - gola: SmoothPlastic azul (la de detrás algo más oscura);
  - rombos: Foil dorado;
  - hueso: Limestone;
  - cuero: Fabric;
  - cuernos: Marble;
  - gema: Neon azul.
- **Animación:**
  - la gola «respira» ±1,5° desde su base cada 3 s;
  - la gema tiene luz azul que respira y chispas;
  - polvo azul cristalino sube alrededor de la gola;
  - destellos blancos y cian que parpadean.
- **Al sacarla:** estallido de polvo azul.
- **Al cavar:** estallido de polvo azul y chispas desde las puntas de los dos cuernos.

**Dónde:**
- Nuevo `ReplicatedStorage.Models.Palas.L8`, a escala 1,55 (7,75 studs) para que las manos quepan entre el pomo y la gola.
- El mango del modelo se llama `MangoHueso` y el `Handle` es invisible.
- Las 5 piezas de la gola van con Motor6D `ShovelOrbit`.
- Attachments `Punta` en los cuernos y `Gema` en el pomo.
- `ShovelFx`: `DIG_FX.L8 = hornDig`, y se busca `FrillFront` para el efecto.
- Original en `ServerStorage.PalaCuernoTriceratops`.

**Probado:** en Play con `Debug "level" 8`:
- la mano izquierda va a 1,10 del pomo y la derecha a 3,92, bajo la gola (4,17);
- la luz va de 0,8 a 1,5 y la gola se mueve hasta 1,4°;
- no hay errores en la consola.

Captura en la mano: la gola mira hacia delante.
**Notas:**
- No se ha hecho el remolino/arco alrededor de la gola ni las animaciones de personaje propias (el juego usa `DigAnim`).
- Studio se desconectó al final de la prueba y no se paró el Play; los cambios se hicieron antes, en Edit.

## 2026-10-22 · bbogatell (Claude) · Bichos 27, 28 y 29 · Ptera Cresta, Plesio Cuellilargo y Carno Toro (Épicos con animación enérgica)

- **Qué:** los tres últimos Épicos, detallados, fieles a sus hojas de ChatGPT y con animación especial enérgica. Sin sonidos.
  - **27 · Ptera Cresta** (7,6 studs, 315 piezas): pterosaurio grande de pie con las alas abiertas de par en par. La membrana va por secciones (triángulos) con degradado de azul celeste a azul marino, mosaico de baldosas de otros azules, venas y borde marino, y tiene huesos de los dedos oscuros con garras. Cuerpo y cuello blancos, pico largo amarillo abierto con la boca roja y cresta roja larga hacia atrás. Efectos: ráfagas de viento en espiral (ritmo 12), plumitas (ritmo 5), destellos azules en las puntas de las alas (ritmo 5) y luz azul. **Animación:** se agacha con las alas arriba, aletea con fuerza levantando una ráfaga de viento, sube volando unos 3 studs, se mantiene aleteando rápido y aterriza con un rebote (otra ráfaga y onda).
  - **28 · Plesio Cuellilargo** (7,5 studs, 299 piezas): reptil marino de cuerpo ancho verde azulado con decenas de lunares turquesa, barriga crema, cuatro aletas grandes con nervios y cuello larguísimo en S (por debajo crema, con escamas). La cabeza es pequeña, con la boca abierta llena de dientes. Está en un charco azul transparente con rocas, musgo y ondas. Efectos: burbujas (ritmo 12), ondas en el agua (ritmo 3), gotas (ritmo 6) y luz turquesa. **Animación:** se echa atrás, se zambulle de cabeza en el charco hasta desaparecer bajo el agua y sale de golpe con la cabeza hacia arriba (grandes salpicaduras, espuma y ondas).
  - **29 · Carno Toro** (8,5 studs, 297 piezas): terópodo musculoso rojo intenso cubierto de bultos rojo oscuro sueltos y en filas por el lomo, con barriga y garganta naranjas. Cara corta y alta con dos cuernos de toro negros, boca abierta llena de dientes, ojo amarillo, bracitos diminutos y patas enormes con garras negras. Efectos: vapor por la nariz (ritmo 15), chispas rojas (ritmo 10), polvo (ritmo 8) y luz roja. **Animación:** agacha los cuernos, rasca el suelo 3 veces como un toro (polvo hacia atrás y resoplidos de vapor) y embiste hacia delante con la cabeza baja (gran nube, onda) antes de volver.
- **Rig `Generic`:** nuevos `TakeOff` (+ `TakeOffFx`), `Dive` (+ `DiveFx`) y `Charge` (+ `ChargeFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.PteraCresta`, `PlesioCuellilargo` y `CarnoToro` → `Models.Bichos["27"]`, `["28"]` y `["29"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play con los tres en la base: el Ptera sube 3,2 studs al despegar, el Plesio baja 2,7 studs bajo el agua y sale 1,4 por encima, y el Carno embiste (después se alargó la embestida a 3,8). Sin errores en la consola.
- **Notas:** con esto quedan hechos todos los Épicos. El siguiente es el 30 (Ptero Chispa, el primer Legendario); su hoja de ChatGPT ya se ha pedido.

## 2026-10-22 · bbogatell (Claude) · Bichos 25 y 26 · Estira Corona y Bario Pescador (Épicos con animación enérgica)

- **Qué:** dos Épicos más, detallados, fieles a sus hojas de ChatGPT y con su animación especial enérgica desde el principio. Sin sonidos.
  - **25 · Estira Corona** (7,4 studs, 272 piezas): ceratopsio robusto verde bosque con baldosas claras y oscuras, barriga tostada, pico de loro, ojo amarillo, cuerno largo de hueso en la nariz y pinchitos en las mejillas y las cejas. Lleva una gola amarilla con el centro rojo y una corona de 6 pinchos de hueso larguísimos, más 8 pequeños alrededor. Efectos: rayitos amarillos desde la corona (ritmo 12), destellos (ritmo 5), polvo (ritmo 6) y luz amarilla. **Animación:** se encabrita levantando la parte delantera, sacude la cabeza con fuerza 4 veces a los lados (ráfagas de rayos) y baja las patas de golpe (polvo y onda en el suelo).
  - **26 · Bario Pescador** (8 studs, 280 piezas): terópodo grande verde agua con rayas azul oscuro y baldosas, barriga y garganta blancas, hocico de cocodrilo con dientes uno a uno, lengua, pequeña cresta y ojo amarillo. Tiene brazos fuertes con garras negras enormes en los pulgares y un pez plateado (con escamas, aletas y ojos) colgado de una garra. Efectos: gotas de agua que caen del pez (ritmo 12), salpicaduras a sus pies (ritmo 8), burbujas (ritmo 5) y luz azul. **Animación:** se agacha mirando el agua, clava las garras con un gran chapuzón (agua, gotas y onda), saca el pez en alto, levanta la cabeza orgulloso y da un saltito.
- **Rig `Generic`:** nuevos `HeadShake` (+ emisores `ShakeFx`) y `ArmStyle = "fish"`. Las patas delanteras con el atributo `FrontLeg = true` siguen al cuerpo cuando se encabrita (marcadas también en el Kentro, el Paraso, el Estego y el Anqui).
- **Dónde:** `ServerStorage.CreatureBuilders.EstiraCorona` y `BarioPescador` → `Models.Bichos["25"]` y `["26"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play, con `/bicho 25 base`, `/bicho 26 base` + `/abrir`: el cuerpo del Estira se mueve 1,2 studs y su cabeza gira 0,9 rad al sacudirla; el cuerpo del Bario se mueve 3,1 studs al pescar y su cabeza gira 1,7 rad. Sin errores en la consola.
- **Notas:** el siguiente es el 27 (Ptera Cresta, Épico, 7,6 studs).

## 2026-10-22 · bbogatell (Claude) · Animaciones especiales enérgicas (bichos 14 y 17-24)

- **Qué:** el usuario pidió que las animaciones especiales se notaran: las de antes eran pobres (por ejemplo, el Deino solo levantaba los brazos). Ahora cada animación especial mueve todo el cuerpo con preparación, golpe rápido, impacto con ráfaga de partículas y onda expansiva en el suelo, rebote y vuelta. Rehechas:
  - **14 Iguano Pulgar:** salta con los brazos disparados hacia arriba y el pecho fuera, aterriza aplastándose y rebota; ráfaga de destellos en los pulgares.
  - **17 Kentro Pincho:** en el coletazo el tronco gira al revés, se agacha y mira hacia atrás.
  - **18 Troodon Listillo:** se acerca el libro a la nariz y lee moviendo la cabeza por las líneas; luego «¡ajá!»: salta con el libro en alto y suelta una ráfaga de «?» (textura nueva `rbxassetid://403653614`, amarilla; la de antes salía negra).
  - **19 Velocirraptor:** se encabrita rugiendo con la pata muy alta y la estampa con todo el cuerpo (cabeza abajo, cola arriba); nube de polvo, onda y sacudida.
  - **20 Paraso Trompeta:** coge aire, se encabrita y da 4 trompetazos con la cabeza hacia arriba vibrando y la cola agitándose.
  - **21 Estego Placas:** se agacha, se levanta con las placas ardiendo y tiembla con fuerza agitando la cola; dos ráfagas de calor y onda.
  - **22 Anqui Tanque:** gira el tronco y sube la maza muy alto, la estampa (el cuerpo da un bote), polvo, onda, y sacude la cabeza.
  - **23 Cori Casco:** se encabrita con la cabeza hacia atrás y la cresta da 3 destellos, cada uno con aros grandes.
  - **24 Deino Terrible:** doble zarpazo: se agacha con los brazos arriba, se lanza hacia delante y corta con un brazo y luego con el otro, girando el tronco y con la boca abierta; zarpazos y chispas rojas grandes.
- **Rig `Generic`:** pose de acción de cuerpo entero (`actPos`/`actPitch`/`actYaw`/`actRoll`, `actHead`, `actTail`, `armAdd`, `legAdd`, `jawAdd`), fotogramas clave `kf`, atributos `ArmStyle` (`swipe`/`thumbs`/`read`, emisores `SwipeFx`/`ArmFx`), `GlowMove` (`flare`/`bellow`) y `Shockwave` (+ `ShockwaveColor`).
- **Dónde:** `ReplicatedStorage.CreatureRigs`; constructores de los bichos 14 y 17-24 (bloque `-- [full-body patch]` antes de `Kit.finish`) → `Models.Bichos`. Docs: `GUIA_BICHOS.md` (regla nueva: la animación especial tiene que ser enérgica y exagerada, con todo el cuerpo).
- **Probado:** en Play, con los bichos en la base: el cuerpo de cada uno se mueve entre 0,4 y 1,6 studs y gira hasta 1 rad durante su animación especial (antes el cuerpo no se movía). Capturas del Deino lanzándose con la boca abierta, del Cori con la cabeza atrás y del Paraso encabritado tocando. Sin errores en la consola.
- **Notas:** el siguiente es el 25 (Estira Corona); su hoja de ChatGPT ya está hecha.

## 2026-10-22 · bbogatell (Claude) · Bichos 23 y 24 · Cori Casco y Deino Terrible (Épicos detallados)

- **Qué:** dos Épicos más, con detalle y fieles a sus hojas de ChatGPT. Sin sonidos.
  - **23 · Cori Casco** (8 studs, 252 piezas): hadrosaurio grande semierguido verde azulado oscuro con bandas blancas finas y baldosas, barriga, pecho y garganta blancos, brazos cortos con garras y patas fuertes. Pico de pato naranja, ojo amarillo y una cresta alta y redonda como un casco corintio: láminas moradas con el borde amarillo. Efectos: partículas moradas (ritmo 10), aros de sonido desde la cresta (ritmo 2) y luz morada. Cada pocos segundos la cresta se enciende (Neon lila) y suelta aros grandes.
  - **24 · Deino Terrible** (7,2 studs, 378 piezas): raptor grande y muy musculoso de plumas gris pizarra sueltas, con plumas largas de punta roja en los brazos y la cola, pecho y garganta blancos y una cresta de plumas rojas en la cabeza y el cuello. Cara gris con mirada de cazador (ojo amarillo, ceja negra), boca abierta llena de dientes, garras negras enormes en las manos y garra en hoz levantada en cada pie. Efectos: chispas rojas (ritmo 10), zarpazos rojos en el aire (ritmo 2), plumas (ritmo 6) y luz roja. Cada pocos segundos da un zarpazo levantando los brazos. Está hecho a partir del constructor del Velocirraptor.
- **Rig:** sin cambios (el Cori usa `GlowColor` + `GlowFx` y el Deino `ArmRaise`).
- **Dónde:** `ServerStorage.CreatureBuilders.CoriCasco` y `DeinoTerrible` → `Models.Bichos["23"]` y `["24"]`. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play, con `/bicho 23 base`, `/bicho 24 base` + `/abrir`: la cresta del Cori cambia de color al encenderse y las garras del Deino se mueven 1,6 studs en el zarpazo. Los dos pasean. Sin errores en la consola.
- **Notas:** el siguiente es el 25 (Estira Corona, Épico, 7,4 studs).

## 2026-10-22 · bbogatell (Claude) · Bichos 21 y 22 · Estego Placas y Anqui Tanque (Épicos detallados)

- **Qué:** dos Épicos más, con detalle y fieles a sus hojas de ChatGPT. Sin sonidos.
  - **21 · Estego Placas** (7,8 studs, 322 piezas): estegosaurio corpulento verde oliva con decenas de manchas más claras y más oscuras, placas crema en la barriga y cabeza pequeña baja con pico. Dos filas de placas gigantes en forma de cometa, hechas con triángulos: centro naranja dentro de un borde rojo en relieve y nervio rojo, más grandes sobre las caderas. La cola tiene 4 pinchos blancos largos. Efectos: calor que sube de las placas (ritmo 12), chispas naranjas (ritmo 8), polvo en la cola (ritmo 5) y luz cálida. Cada pocos segundos las placas se encienden (se vuelven Neon dorado) y suelta una ráfaga de calor.
  - **22 · Anqui Tanque** (6,6 studs, 310 piezas): tanque viviente ancho y bajo, marrón tierra con escamas tostadas. Lleva un caparazón entero de placas gris piedra una a una, con pinchos de hueso, borde oscuro con placas laterales y pinchos grandes a los lados. Collar blindado, cabeza blindada con cuernos de hueso y pico, y patas cortas con garras oscuras. La cola levantada acaba en una maza enorme gris oscuro con bandas de hierro y bultos. Efectos: polvo y piedrecitas al golpear el suelo (a ráfagas), chispas grises (ritmo 6) y luz suave. Cada pocos segundos levanta la maza y la estampa contra el suelo.
- **Rig `Generic`:** nuevo atributo `TailSlam` (+ emisores `SlamFx`) y piezas que brillan con el atributo `GlowColor` (+ emisores `GlowFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.EstegoPlacas` y `AnquiTanque` → `Models.Bichos["21"]` y `["22"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play, con `/bicho 21 base`, `/bicho 22 base` + `/abrir`: las placas del Estego cambian de color al encenderse y la maza del Anqui se mueve 2,7 studs al golpear. Los dos pasean. Sin errores en la consola.
- **Notas:** el siguiente es el 23 (Cori Casco, Épico, 8 studs).

## 2026-10-22 · bbogatell (Claude) · Bichos 19 y 20 · Velocirraptor y Paraso Trompeta (Épicos detallados)

- **Qué:** los dos primeros Épicos, con detalle y fieles a sus hojas de ChatGPT. Sin sonidos.
  - **19 · Velocirraptor** (6,6 studs, 355 piezas): raptor musculoso cubierto de plumas marrón dorado, naranja y marrón oscuro sueltas, con rayas negras en el lomo, los muslos y la cola. Cara gris con sonrisa malvada y la boca abierta con dientes arriba y abajo, lengua, ojo amarillo con rendija y ceja negra, cresta de plumas y garganta crema. Brazos emplumados con plumas largas colgando y 3 garras negras grandes. Garra en hoz enorme levantada en cada pie y cola con plumas largas a los lados y en abanico. Efectos: plumas que caen (ritmo 10), zarpazos naranjas en el aire delante de él (ritmo 2) y luz naranja en el pecho. Cada pocos segundos levanta una pata y golpea el suelo con la garra (sale una nube de polvo).
  - **20 · Paraso Trompeta** (8,2 studs, 270 piezas): hadrosaurio grande verde con bandas amarillas y baldosas, barriga y garganta crema, placas en la barriga y cresta dorsal. Pico de pato gris, ojo amarillo y cresta tubular larguísima hacia atrás (roja, con relieves y la punta naranja). Patas delanteras más cortas y cola larga con bandas. Efectos: notas musicales de colores desde la punta de la cresta (ritmo 10), aros de sonido (ritmo 2) y luz amarilla. Cada pocos segundos levanta la cabeza y «toca la trompeta»: salen ráfagas de notas y aros.
- **Rig `Generic`:** nuevos atributos `Stomp` (+ emisor `StompFx`) y `Trumpet` (+ emisores `TrumpetFx`).
- **Dónde:** `ServerStorage.CreatureBuilders.Velocirraptor` y `ParasoTrompeta` → `Models.Bichos["19"]` y `["20"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributos y texturas), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play, con `/bicho 19 base`, `/bicho 20 base` + `/abrir`: la garra del Velocirraptor se mueve 1,7 studs al pisotear y la punta de la cresta del Paraso 2,4 studs al tocar. Los dos pasean y tienen todos los efectos (6 y 7). Sin errores en la consola.
- **Notas:** el siguiente es el 21 (Estego Placas, Épico, 7,8 studs).

## 2026-10-22 · bbogatell (Claude) · Bichos 16, 17 y 18 · Celo Cazador, Kentro Pincho y Troodon Listillo (detallados)

- **Qué:** los tres últimos Raros, con detalle y fieles a sus hojas de ChatGPT. Sin sonidos.
  - **16 · Celo Cazador** (5,3 studs, 223 piezas): terópodo flaco naranja quemado con rayas marrón oscuro que envuelven el lomo, las patas, el cuello y la cola, escamas sueltas y barriga amarilla. Va agachado al acecho, con el cuello en S, la cabeza estrecha y la boca abierta con 38 dientecitos. Ojo amarillo con pupila de rendija, brazos con garras largas negras, 3 dedos y espolón. Le caen hojas de otoño encima (ritmo 5). Gira la cabeza a saltitos.
  - **17 · Kentro Pincho** (5,5 studs, 226 piezas): cuadrúpedo amarillo arena con rayas y manchas marrones, cabeza baja con pico oscuro, dos filas de placas naranjas con borde en el cuello y los hombros que pasan a pinchos de hueso con la punta roja hacia las caderas y la cola, y dos pinchos enormes en los hombros. Destellos rojos en las puntas (ritmo 6) y polvo (ritmo 4). Cada pocos segundos da un coletazo de lado a lado.
  - **18 · Troodon Listillo** (5,2 studs, 224 piezas): raptor cubierto de plumas verde azulado una a una, con cara y cuello gris claro. Cabeza grande y abombada con ojos enormes mirando al frente, gafas redondas negras (aros, puente y patillas), cresta de plumas y sonrisa con dientecitos. Brazos emplumados sujetando un libro rojo con emblema y bandas doradas, garra en hoz levantada y cola con plumas a los lados. Chispitas blancas (ritmo 6) y «?» amarillos que salen de la cabeza (ritmo 2). Cada pocos segundos levanta el libro para leerlo.
- **Rig `Generic`:** nuevos atributos `HeadSnap` (cabeza a saltitos) y `TailWhip` (coletazo).
- **Dónde:** `ServerStorage.CreatureBuilders.CeloCazador`, `KentroPincho` y `TroodonListillo` → `Models.Bichos["16"]`, `["17"]` y `["18"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md` (atributos y texturas nuevas), `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play, con `/bicho 16/17/18 base` + `/abrir`: la cabeza del Celo gira 1,3 rad a saltitos, la punta de la cola del Kentro se mueve 2,1 studs en el coletazo y el libro del Troodon sube. Los tres pasean. Sin errores en la consola.
- **Notas:** el siguiente es el 19 (Velocirraptor, el primer Épico, 6,6 studs).

## 2026-10-22 · bbogatell (Claude) · Bichos 14 y 15 · Iguano Pulgar e Ictio Saltarín (detallados)

- **Qué:** dos Raros hechos con detalle, fieles a sus hojas de ChatGPT. Sin sonidos.
  - **14 · Iguano Pulgar** (6,5 studs, 233 piezas): herbívoro grande semierguido verde musgo con decenas de manchas sueltas más claras y más oscuras, placas grises en la barriga y el pecho, una fila de pinchos de hueso por el lomo y la cola, cabeza de caballo con pico gris, mejillas, ceja y ojo amarillo. Brazos musculosos con el puño cerrado y un pincho de hueso enorme en cada pulgar, levantado («¡bien!»). Patas con 3 dedos y garras oscuras. Destellos blancos en los pulgares (ritmo 6). Cada pocos segundos levanta los brazos.
  - **15 · Ictio Saltarín** (5 studs con su ola, 207 piezas): ictiosaurio con forma de delfín saltando sobre una ola turquesa semitransparente (montículo, rizo con espuma y gotas en el aire). Lomo azul marino con baldosas más claras y oscuras, barriga blanca, línea azul clara en los costados, hocico largo abierto con dientes arriba y abajo, ojos enormes con brillo, aleta dorsal, dos pares de aletas y cola en media luna. Gotas de agua (ritmo 8) y espuma (ritmo 5). Cada pocos segundos da un salto en arco. Sin patas: se desliza y mueve las aletas.
- **Rig `Generic`:** nuevos atributos `ArmRaise` (rol `Arm`, con `ArmPivot` y `Side`) y `Leap` (salto en arco), y rol `Base` (piezas que no se mueven nunca, como la ola).
- **Dónde:** `ServerStorage.CreatureBuilders.IguanoPulgar` y `IctioSaltarin` → `Models.Bichos["14"]` y `["15"]`; `ReplicatedStorage.CreatureRigs`. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play, con `/bicho 14 base`, `/bicho 15 base` + `/abrir`: el pulgar del Iguano se mueve 0,67 studs al levantar los brazos y el hocico del Ictio 1,27 studs al saltar, mientras la ola no se mueve (0,00). Los dos pasean. Sin errores en la consola.
- **Notas:** el siguiente es el 16 (Celo Cazador, Raro, 5,3 studs).

## 2026-10-22 · bbogatell (Claude) · Bicho 13 · Dilo Abanico (detallado) + bichos con más piezas

- **Qué:**
  - **Bicho 13 · Dilo Abanico** (Raro, 5,8 studs, **326 piezas**), el primero hecho con mucho más detalle, fiel a su hoja de ChatGPT (comparado de frente, de lado y en 3/4). Es un terópodo esbelto amarillo verdoso lleno de manchas negras sueltas. Lleva una gola enorme en dos mitades: paneles amarillos con nervios, lunares rojos y negros y puntas rojas. Las crestas rojas en media luna tienen el borde blanco, en láminas. La boca está abierta con dientes uno a uno arriba y abajo, paladar y lengua. Tiene ojos amarillos con pupila de rendija y ceja, brazos con 3 garras negras, patas fuertes con escamas en la espinilla, 3 dedos con garra y espolón, y una cola larga recta con manchas y cresta.
  - **Efectos:** gotitas verdes en la boca (ritmo 6) y destellos en la gola (ritmo 4). Cada pocos segundos abre la gola de golpe, abre la boca, echa la cabeza adelante y escupe una bola verde, y luego la cierra despacio. Mueve la cola, parpadea y pasea. Sin sonidos.
  - **Rig `Generic`:** nuevo atributo `Frill`, rol `Frill` (un hueso por mitad, con `FrillPivot` y `Side`) y emisor `Spit`.
  - **Más detalle en todos los bichos nuevos:** con la animación por huesos, las piezas ya casi no cuestan FPS, así que la tabla de rarezas pide ahora muchas más piezas (Raro 200-320, Divino 1300-1800…) y bichos muy detallados.
- **Dónde:** `ServerStorage.CreatureBuilders.DiloAbanico` → `Models.Bichos["13"]`; `ReplicatedStorage.CreatureRigs` (Frill). Docs: `BICHOS_DINOSAURIOS.md` (tabla de piezas y nota), `GUIA_BICHOS.md` (Frill, tabla de huesos).
- **Probado:** en Play, con `/bicho 13 base` + `/abrir`: la gola se abre y se cierra (los paneles se mueven 0,53 studs de delante atrás), la mandíbula se abre 0,66 rad, pasea 2,7 studs y están los 5 emisores. Sin errores en la consola.
- **Notas:** el siguiente es el 14 (Iguano Pulgar, Raro, 6,5 studs).

## 2026-10-22 · seguo970 (Claude) · Pala 7: Pala de Arenisca Roja importada, texturizada y animada
**Qué:** la pala 7 es ahora el modelo `PalaArenisca`: hoja de arenisca roja con la huella de dinosaurio tallada, mango de cactus con espinas, tres cuerdas y piedrecitas.
- **Materiales de Roblox:**
  - hoja: Sandstone `#C3422A`;
  - cactus: Grass `#7C8560`;
  - espinas: beige;
  - cuerdas: Fabric;
  - piedrecitas: Sandstone.
- **Animación:**
  - nubecitas de arena que salen de la hoja;
  - destellos;
  - 4 piedrecitas de arena que orbitan despacio alrededor de la hoja.
- **Al cavar:** estallido de arena.

**Dónde:**
- Nuevo `ReplicatedStorage.Models.Palas.L7`, a escala 1,45 (7,2 studs), girado para que la huella mire hacia delante.
- El mango del modelo se llama `Cactus` y el `Handle` es invisible, con la mano izquierda encima de la cuerda de abajo.
- `Piedrecita1-4` con Motor6D `ShovelOrbit`.
- `ShovelFx`: `DIG_FX.L7 = sandDig`.
- Original en `ServerStorage.PalaArenisca`.

**Probado:** en Play con `Debug "level" 7`:
- la mano izquierda va a 1,24 del pomo y la derecha a 4,04, bajo la cuerda de arriba (4,59);
- las piedrecitas giran y el efecto al cavar se crea;
- no hay errores en la consola.

**No visto en pantalla:** la vista 3D de Studio no dibujaba al probarla.
**Notas:** del prompt no se han hecho las animaciones de personaje propias ni los sonidos (el juego usa `DigAnim`), ni las copias en `StarterPack`.

## 2026-10-22 · seguo970 (Claude) · Pala 6: sin temblor de cámara al cavar
**Qué:** al cavar con la pala 6 ya no tiembla la cámara. El estallido de tierra y destellos de ámbar sigue igual.
**Dónde:** `StarterPlayerScripts.ShovelFx`: se quita la sacudida de `amberDig`.
**Probado:** no probado en Play (cambio de solo quitar código).

## 2026-10-22 · seguo970 (Claude) · Pala 6: Pala de Ámbar importada, texturizada y animada
**Qué:** la pala 6 es ahora el modelo `PalaAmbar`: hoja de ámbar naranja translúcido con un mosquito y burbujas dentro, mango de madera, anillos y collar de oro, gemas de ámbar y una gota escurriendo.
- **Materiales:**
  - ámbar: Glass;
  - mosquito: marrón mate;
  - burbujas y gemas: Neon;
  - madera: Wood;
  - oro: Foil.
- **Animaciones:**
  - una luz cálida dentro de la hoja que respira cada 2,5 s;
  - las gemas laten entre naranja oscuro y claro;
  - las burbujas suben y bajan un poco dentro de la hoja;
  - las alas del mosquito tiemblan levemente;
  - destellos naranjas y dorados alrededor de la hoja.
- **Al sacarla:** estallido de destellos.
- **Al cavar:** tierra y destellos de ámbar en el impacto, y una sacudida suave de cámara para quien cava.

**Dónde:**
- Nuevo `ReplicatedStorage.Models.Palas.L6`, a escala 1,5 (7,4 studs) para que las manos caigan entre los anillos y el collar. `AmberBubbles` y `MosquitoWings` van con Motor6D `ShovelOrbit`. Original en `ServerStorage.PalaAmbar`.
- `ShovelFx`:
  - etiqueta nueva `ShovelEquipBurst`: el emisor suelta `Burst` partículas al sacar la pala;
  - `DIG_FX.L6 = amberDig`;
  - se busca `AmberBlade` para el efecto.

**Probado:** en Play con `Debug "level" 6`: la mano izquierda va encima de los anillos de abajo y la derecha bajo el collar. La luz va de 0,6 a 1,7, la gema cambia de color y las burbujas se mueven. Al cavar sale el estallido. Sin errores. Captura de frente y en la mano.
**Notas:** del prompt no se ha hecho la inspección con la tecla F ni animaciones de personaje nuevas, porque el juego usa `DigAnim` para todas las palas. Las texturas son materiales de Roblox, que no necesitan aprobación de imágenes.

## 2026-10-22 · seguo970 (Claude) · Pala 5: Pala de Amonites importada
**Qué:** la pala 5 es ahora el modelo `PalaAmonites`, importado por seguo970 con sus texturas: hoja de amonites a rayas marrones y crema, mango de piedra arenosa, cuerdas, conchas rosas, caracolas y arena dorada.
**Dónde:**
- Nuevo `ReplicatedStorage.Models.Palas.L5`, con las texturas del archivo (`TextureID`, `Color` blanco para que se vean con su color real).
- A escala 1,45 (6,5 studs), para que las manos quepan entre las dos cuerdas.
- El mango del modelo se llama `Mango` y el `Handle` es invisible, con la mano izquierda en la cuerda de abajo.
- Original en `ServerStorage.PalaAmonites`.

**Probado:** en Play con `Debug "level" 5`: las texturas cargan bien. La mano izquierda va en la cuerda de abajo y la derecha en la de arriba, justo bajo la hoja. Captura en la mano.

## 2026-10-22 · seguo970 (Claude) · Pala 4: cara de detrás en espejo y del mismo tamaño
**Qué:** la cara de detrás del caparazón de la pala 4 era más pequeña que la de delante (se había reducido para que no asomara). Ahora es una copia en espejo exacta: mismo tamaño y mismo contorno por los dos lados, sin que nada asome.
**Dónde:**
- `ReplicatedStorage.Models.Palas.L4`: las 5 piezas `*_Atras` son ahora las mallas en espejo de `PalaCaparazon_Espejo.glb`. Van a escala 1,25, con el mismo giro que su pieza de delante y la posición reflejada por el plano medio de la hoja.
- `Blade_Underside` vuelve a su color (SmoothPlastic `#966F3C`).
- El espejo se creó con Blender: `tools/modelos/L4/espejo_caparazon.py` (refleja las 5 piezas en el grosor y da la vuelta a las normales). El GLB resultante está en `tools/modelos/L4/`.
- Importación original en `ServerStorage.PalaCaparazon_Espejo`.
- **Copia de antes:** `ServerStorage.CopiasPalas.L4_dos_caras_v2`.

**Probado:** midiendo los dos contornos con rayos cada 0,03 studs: la diferencia máxima es de 0,01 studs. Capturas por los dos lados.

## 2026-10-22 · seguo970 (Claude) · Pala 4: las dos caras del caparazón encajan
**Qué:** el contorno del caparazón de la pala 4 no es del todo simétrico, así que la copia de la cara de detrás asomaba 0,04–0,08 studs por un lado al mirar la pala de frente. Ahora la cara de detrás no sobresale nada, y el borde que deja por detrás se ve como un marco dorado.
**Dónde:** `ReplicatedStorage.Models.Palas.L4`:
- Las 5 piezas `*_Atras` se desplazan 0,026 de lado y se reducen al 93 % en ancho y alto (no en grosor), desde el centro de la hoja.
- `Blade_Underside` pasa a Slate color arena `#C9A060`, para que su borde visible por detrás combine con el caparazón.
- **Copia de antes:** `ServerStorage.CopiasPalas.L4_dos_caras_v1`.

**Probado:** midiendo el contorno con rayos cada 0,03 studs a lo alto de la hoja: la cara de detrás no sobresale en ningún punto. Capturas por los dos lados.
**Notas:** que las dos caras fueran exactamente iguales necesitaría una malla espejada (reimportar), porque Roblox no permite reflejar una malla.

## 2026-10-22 · seguo970 (Claude) · Pala 4: caparazón por las dos caras
**Qué:** la hoja de la pala 4 tenía el caparazón solo por delante; por detrás era lisa. Ahora las dos caras tienen el caparazón: placas verdes, borde de tres colores y juntas color crema.
**Dónde:** `ReplicatedStorage.Models.Palas.L4`: copias `Blade_Base_Atras`, `Blade_ScutesGreen_Atras`, `Blade_MarginalBrown_Atras`, `Blade_MarginalTan_Atras` y `Blade_MarginalOlive_Atras`. Son las piezas de delante giradas media vuelta sobre el eje del mango, por el centro de la hoja, y van soldadas al `Handle`. **Copia de antes:** `ServerStorage.CopiasPalas.L4_una_cara`.
**Probado:** capturas de la pala sola por delante y por detrás: las dos caras se ven iguales. No se ha mirado en la mano porque Studio se desconectó del MCP. Puede haber quedado en `workspace` una copia de prueba, `PruebaL4` (a y=500), que se puede borrar.

## 2026-10-21 · seguo970 (Claude) · Pala 4: Pala de Caparazón importada
**Qué:** la pala 4 es ahora el modelo 3D `PalaCaparazon.glb`: hoja de caparazón de tortuga, mango de madera oscura, lianas verdes y gotas de barro. Va texturizada con materiales y los colores del prompt, que se ven sin esperar a que Roblox apruebe imágenes:
- placas verdes y borde marrón / arena / oliva: Slate;
- juntas color crema y reverso marrón: SmoothPlastic;
- mango y pomo: Wood;
- lianas: Grass;
- barro: SmoothPlastic con algo de brillo.

Mango alargado 0,9 studs, como en las palas 2 y 3, para que tenga el largo de las demás.
**Dónde:**
- Nuevo `ReplicatedStorage.Models.Palas.L4` (escala 1,25, 7,2 studs).
- Girada 180° sobre el mango para que las placas miren hacia delante con la pala en la mano.
- `Handle` invisible: mano izquierda en la liana de abajo.
- Original importado en `ServerStorage.PalaCaparazon`. Archivos en `tools/modelos/L4/`.

**Probado:** captura de frente (comparada con la referencia). En Play con `Debug "level" 4`: las manos van en la liana de abajo y en la madera, con las placas verdes hacia delante. Captura en la mano.
**Notas:** no se han hecho las animaciones del prompt (el juego usa `DigAnim`) ni se usa `StarterPack`.

## 2026-10-21 · seguo970 (Claude) · Pala 3: mango más largo
**Qué:** el mango trenzado de la pala 3 es 0,9 studs más largo. El collar, la rana y el nenúfar quedan más lejos de las manos, y la mano derecha agarra la trenza en vez de quedar pegada al collar.
**Dónde:** `ReplicatedStorage.Models.Palas.L3`:
- `Collar`, `Blade_*` y `Frog_*` suben 0,9.
- `Shaft_Braid` se alarga ×1,28 desde su extremo de abajo, y `Shaft_Leaves` se mueven con ella. Se rehacen las soldaduras.
- Largo total: 7,2 studs.
- **Copia de antes:** `ServerStorage.CopiasPalas.L3_corta`.

**Probado:** en Play: las manos quedan a 0,7 y 3,5 del extremo, y el collar a 4,6 (antes 3,7). Captura en la mano.

## 2026-10-21 · seguo970 (Claude) · Pala 3: Pala de Junco del Pantano importada
**Qué:** la pala 3 es ahora el modelo 3D `PalaJuncoPantano.glb`: mango de junco trenzado con hojitas, cañas atadas en el extremo, collar de cuerda, una rana verde y la hoja de nenúfar turquesa con nervios. Va texturizada con materiales de Roblox y los colores del archivo, que se ven sin esperar aprobaciones de imágenes.
**Dónde:**
- Nuevo `ReplicatedStorage.Models.Palas.L3`, a escala 1,25 (6,3 studs). Materiales:
  - juncos y trenza: Grass;
  - ataduras y collar: Fabric;
  - nenúfar: Ice turquesa (aspecto de cristal tallado, como en la imagen);
  - nervios, hojas y rana: SmoothPlastic (ojos negros con algo de brillo).
- `Handle` invisible con la mano izquierda en la trenza, justo encima de la atadura.
- Original importado en `ServerStorage.PalaJuncoPantano`. Archivos en `tools/modelos/L3/`.

**Probado:** captura de frente (comparada con la referencia). En Play con `Debug "level" 3`: la pala sale en la mano, la mano izquierda va sobre la trenza y la derecha justo debajo del collar. Captura en la mano.

## 2026-10-21 · seguo970 (Claude) · Pala 2: mango de hueso más largo
**Qué:** el mango de la pala 2 se veía corto: buena parte del largo era el cráneo, que queda por debajo de la mano. Ahora el hueso es 0,9 studs más largo entre la mano y la piedra. El antiguo collar bajo la piedra queda como una articulación a media altura, y un nudo de hueso nuevo une el mango con la piedra. El cráneo, el pico y la piedra no cambian.
**Dónde:** `ReplicatedStorage.Models.Palas.L2`:
- `Blade_Stone` sube 0,9.
- Piezas nuevas `Hueso_Extension` (cilindro de 0,3, mismo material y color que el hueso) y `Hueso_Nudo` (bola de 0,46), soldadas al `Handle`.
- Largo total: 6,5 studs.
- **Copia de antes:** `ServerStorage.CopiasPalas.L2_corta`.

**Probado:** en Play: la mano derecha agarra el hueso, ya no la base de la piedra. La piedra queda a 4,5 del ojo del cráneo (antes 3,6). Captura de la pala sola y en la mano.

## 2026-10-21 · seguo970 (Claude) · Pala 2: Pala de Hueso de Dodo importada
**Qué:** la pala 2 es ahora el modelo 3D `PalaHuesoDodo.glb`: hoja de piedra tallada gris, mango de hueso color crema, y cráneo de dodo con cuencas oscuras y pico amarillo en la punta de abajo. Va texturizada con materiales de Roblox, que se ven sin esperar a que Roblox apruebe imágenes.
**Dónde:**
- Nuevo `ReplicatedStorage.Models.Palas.L2`, a escala 1,25 (5,6 studs, como el resto de palas):
  - `Blade_Stone`: Slate `#8A8C94`.
  - `Handle_Bone`: SmoothPlastic `#E8DEC2`.
  - `Beak_Keratin`: SmoothPlastic `#E8B820`.
  - `Cavities_Dark`: SmoothPlastic `#33302E`.
- `Handle` invisible con la mano izquierda justo encima del cráneo.
- Original importado en `ServerStorage.PalaHuesoDodo`.

**Probado:** en Play con `Debug "level" 2`: la pala sale en la mano. La mano izquierda va encima del cráneo y la derecha en la base de la hoja. Captura de frente.
**Notas:** no se han hecho las animaciones del prompt: el juego ya tiene las suyas (`DigAnim`) para todas las palas. Tampoco se usa `StarterPack` ni `Tool.Grip`: el juego monta la herramienta desde `Models.Palas`.

## 2026-10-21 · seguo970 (Claude) · Pala 1: piedra, cuerda y madera con materiales de Roblox
**Qué:** la madera, la piedra y la cuerda de la pala 1 salían grises en el juego porque Roblox no había aprobado sus imágenes. Ahora usan materiales propios de Roblox, que siempre se ven: madera marrón con vetas, piedra gris con textura de roca y cuerda beige de tela. El helecho sigue con su textura, que sí carga.
**Dónde:** `ReplicatedStorage.Models.Palas.L1`: sin `SurfaceAppearance` en `Mango` (Wood, 150/95/52), `HojaPiedra` (Slate, 135/135/140) y `Cuerda` (Fabric, 214/190/138).
**Probado:** captura en Play con la pala en la mano.

## 2026-10-21 · seguo970 (Claude) · Pala 1: Pala de Rama de Helecho importada y texturizada
**Qué:** la pala 1 es ahora el modelo 3D de `PalaRamaHelecho.glb`: palo de madera torcido, cuerda beige, hoja de piedra gris y un helecho enrollado. Lleva las texturas del archivo (color + relieve) en las 5 piezas, sin animación, como pide el prompt.
**Dónde:**
- Nuevo `ReplicatedStorage.Models.Palas.L1`: 5 piezas a escala 1 (5,4 studs) con su `SurfaceAppearance` creado por el importador, `RenderFidelity` Precise, y material y color de respaldo (Wood, Slate, Fabric, Grass) por si falla la textura.
- `Handle` invisible: deja la mano izquierda por debajo del helecho y la derecha junto a la cuerda.
- Original importado en `ServerStorage.PalaRamaHelecho`. Archivos en `tools/modelos/L1/`.
- Las texturas también se han subido aparte (IDs en `tools/modelos/L1/texturas/IDS.txt`), de reserva.

**Probado:** en Play con `Debug "level" 1`: la pala sale en la mano, sin errores, con la mano izquierda a 0,26 de la base y la derecha a 3,09 (en la cuerda). La forma y el helecho verde se ven bien. **La madera y la piedra salían grises:** sus imágenes, recién subidas, aún no las servía Roblox (están en revisión, unos minutos). No se ha podido volver a mirar porque la vista 3D de Studio dejó de dibujar.
**Notas:** no se usa `StarterPack` ni `Tool.Grip` como dice el prompt: el juego monta la herramienta desde `Models.Palas.L1` y `DigAnim` coloca las manos. No probado con avatar R6 (el juego usa R15).

## 2026-10-21 · seguo970 (Claude) · Pala 29: huella de T-Rex detallada y destello arcoíris al cavar
**Qué:** el efecto al cavar de la pala 29 tiene ahora:
- **La huella:** misma forma que el dibujo de referencia de seguo970 (talón ancho y tres dedos con garras en gancho). Rellena de bandas de arcoíris desde el borde hacia dentro, con borde blanco y un brillo alrededor. Mide 5,2 × 6,5 studs, el doble que antes.
- **Cómo aparece:** sale de golpe con un pequeño rebote, y un «eco» de la huella crece y se desvanece.
- **Al golpear, un destello arcoíris:** brillo blanco, un anillo arcoíris que se abre y chispas de todos los colores. No hay rayo ni columna de luz.

Como antes, mira hacia donde mira el jugador, se pega al suelo y todo desaparece en 0,5 s.
**Dónde:**
- `StarterPlayerScripts.ShovelFx`: `trexPrint` reescrita. Usa un `Decal` en una pieza plana invisible, girada para que las garras queden delante.
- Imagen generada por `tools/modelos/L29/huella.ps1` (contorno a mano + distancia al borde) y subida como `rbxassetid://73572332203778` (en `texturas/IDS.txt`).

**Probado:** en Play: dirección comprobada con una huella fija (las garras hacia delante) y captura de una huella real con su eco y el anillo. Sin errores.

## 2026-10-21 · seguo970 (Claude) · Pala 29: huella arcoíris de T-Rex al cavar
**Qué:** al dar un palazo al suelo con la pala 29 aparece en el suelo una huella de tiranosaurio (talón y tres dedos con garras, de unos 4 studs) en arcoíris: rojo en el borde y violeta en el centro. Apunta hacia donde mira el jugador, aparece de golpe y se desvanece en 0,5 s. Sustituye a la explosión arcoíris, que no gustó.
**Dónde:** `StarterPlayerScripts.ShovelFx`: función `trexPrint` (7 capas de 7 óvalos, SmoothPlastic para que no se vea blanca por el brillo del Neon) en lugar de `rainbowDig`; `DIG_FX.L29 = trexPrint`. La llamada del efecto pasa ahora también el personaje y la normal del suelo (los otros efectos lo ignoran).
**Probado:** en Play: cada golpe crea las 49 piezas de la huella. Captura de una huella congelada y de una real desvaneciéndose. Sin errores.

## 2026-10-21 · seguo970 (Claude) · Pala 29: explosión arcoíris al cavar
**Qué:** al dar un palazo al suelo con la pala 29 ya no sale la pequeña explosión rosa-lila de la pala 28, sino una más grande de arcoíris:
- un destello blanco;
- 7 anillos de colores que se abren por el suelo hasta unos 22 studs;
- una columna de luz de 7 colores;
- más de 100 estrellas de todos los colores que saltan y caen.

La pala 28 sigue con su efecto.
**Dónde:** `StarterPlayerScripts.ShovelFx`: función nueva `rainbowDig` y `DIG_FX.L29 = rainbowDig`.
**Probado:** en Play con la pala 29: cada golpe crea las 15 piezas del efecto. Captura del estallido. Sin errores.

## 2026-10-21 · seguo970 (Claude) · Pala 29: aliento de nebulosa por la boca
**Qué:** la calavera de la pala 29 echa por la boca un aliento de galaxia: una nube rosa → violeta → azul con estrellitas blancas, que sale entre los dientes, se abre y se desvanece. «Respira»: sale más y menos cada 2,5 s, el mismo ritmo que la mandíbula. No se ha cambiado nada más de la pala.
**Dónde:**
- `ReplicatedStorage.Models.Palas.L29`: attachment nuevo `Craneo_Oro.Aliento`, delante de la boca y mirando hacia fuera, con los emisores `Nebulosa` (humo tintado, tamaño de 0,5 a 2,4) y `EstrellasAliento`. Los dos llevan la etiqueta `ShovelPulse` (`Min`/`Max` = partículas por segundo).
- `ShovelFx`: `ShovelPulse` admite también `ParticleEmitter` (pulsa `Rate`, solo en pasos enteros: si se cambia en cada fotograma el emisor deja de echar partículas).
- **Copia de antes:** `ServerStorage.CopiasPalas.L29_prototipo` (la pala tal como estaba al darla por buena).

**Probado:** en Play el emisor funciona y da 18 partículas/s en el pico, sin errores. No se ha podido ver la nube en las capturas, porque Studio en segundo plano no avanza las partículas continuas; con una ráfaga manual sí se ve la nube rosa en la boca. Falta mirarlo en pantalla.

## 2026-10-21 · seguo970 (Claude) · Pala 29: destello arcoíris centrado en los ojos
**Qué:** el destello arcoíris de la pala 29 estaba centrado en el halo dorado, por encima y detrás de la cabeza. Ahora está centrado entre los dos ojos del cráneo y ya no gira con el halo.
**Dónde:** `ReplicatedStorage.Models.Palas.L29`: el `BillboardGui` `Destello` pasa del attachment `Halo.HaloCenter` (borrado) a uno nuevo, `Craneo_Oro.OjosCentro`, en el punto medio de `Ojo_Izq` y `Ojo_Der`. Mismo tamaño e imagen.
**Probado:** captura en Play mirando el cráneo de frente.

## 2026-10-21 · seguo970 (Claude) · Pala 29: aros del mango centrados
**Qué:** los tres aros que rodean el mango de la pala 29 estaban descentrados: el del collar hacia un lado y los dos del mango hacia el otro. Ahora los tres quedan centrados, con el mango en medio. Sus planetas giran igual que antes, ahora alrededor del mango.
**Dónde:** `ReplicatedStorage.Models.Palas.L29`: `Anillo_Collar` (+ `Planeta_Tierra`), `Anillo_Mango_1` (+ `Planeta_Morado_1`) y `Anillo_Mango_2` (+ `Planeta_Morado_2`) se desplazan hasta el eje del mango. Antes estaban 0,23, 0,37 y 0,39 studs fuera del eje. Se actualiza `C0` de sus Motor6D; el centro de la órbita se mueve con ellos.
**Probado:** los tres a 0,00 del eje y captura en la mano.

## 2026-10-21 · seguo970 (Claude) · Pala 29: cráneo y mango de galaxia
**Qué:** en la pala 29, la parte de arriba del cráneo, el mango y el cuello pasan de cristal (diamante) a la misma tela de galaxia que la capa. Siguen de diamante la punta del final del mango y la mandíbula. Las constelaciones del mango desaparecen con el cambio.
**Dónde:** `ReplicatedStorage.Models.Palas.L29`: `Craneo_Cristal`, `Mango_Cristal` y `Cuello_Cristal` llevan el `SurfaceAppearance` de la capa (nebulosa con brillo 0,6), material Fabric, sin transparencia. `Punta_Cristal` y `Mandibula_Cristal` sin tocar. **Copia de antes del cambio:** `ServerStorage.CopiasPalas.L29_antes_galaxia` (para volver atrás, sustituir `L29` por esa copia renombrada a `L29`).
**Probado:** captura en Play con la pala en la mano.

## 2026-10-21 · seguo970 (Claude) · Pala 29: capa más baja, colgada de un broche de oro
**Qué:** la capa de la pala 29 cuelga 0,15 studs más abajo, sin cambiarle la forma ni la animación. La capa ya estaba en el punto más bajo del cráneo, así que para que no quede flotando cuelga de un broche de oro que va a lo largo de su borde de arriba. El broche está medio metido en el cráneo y medio en la capa.
**Dónde:** `ReplicatedStorage.Models.Palas.L29`:
- `Capa`, `Cadenas_*` y `Estrellas_Colgantes` bajan 0,15 hacia «abajo en la mano» (se actualiza `C0`).
- Piezas nuevas `Broche_Capa_0`…`3` (cilindros) y `Broche_Capa_Nudo0`…`4` (bolas): oro Foil de 0,2 de grosor, que siguen la curva del cráneo y van soldadas a `Capa`.

**Probado:** el hueco entre el cráneo y la capa es de 0,12 y el broche se mete 0,04 en cada lado. Captura de cerca en la mano. Antes se comprobó con rayos que no había otra zona del cráneo (ni la mandíbula) más baja donde colgarla.

## 2026-10-21 · seguo970 (Claude) · Pala 29: capa centrada bajo el cráneo
**Qué:** la capa de la pala 29 quedaba un poco hacia un lado del cráneo. Ahora sale del centro de la parte de abajo del cráneo, sin dejar de estar pegada a su superficie.
**Dónde:** `ReplicatedStorage.Models.Palas.L29`: `Capa`, `Cadenas_*` y `Estrellas_Colgantes` se mueven 0,2 studs hacia el plano central del cráneo. Después se vuelve a ajustar el hueso de arriba de cada tira a la superficie (0,03 dentro) y las cadenas y estrellas siguen la media.
**Probado:** el centro de la capa queda a 0,07 del plano central del cráneo (antes 0,27) y las 5 tiras a 0,03 bajo la superficie. Captura mirando al cráneo de frente, en Play.

## 2026-10-21 · seguo970 (Claude) · Pala 29: capa girada 90° y saliendo de la superficie del cráneo
**Qué:** la capa de la pala 29 se ha girado 90°. Ahora su borde de arriba va a lo largo de la parte de abajo del cráneo, no de lado a lado. Ya no está metida dentro: cada tira sale justo de la superficie exterior del cráneo, sin ninguna parte flotando.
**Dónde:** `ReplicatedStorage.Models.Palas.L29`:
- `Capa`, `Cadenas_*` y `Estrellas_Colgantes` giran 90° alrededor de la dirección de caída.
- El hueso superior de cada tira (`Capa_C0_B0`…`Capa_C4_B0`) se mueve hasta la superficie del cráneo, medida con rayos contra la malla y dejándolo 0,03 dentro. Así el borde sigue la curva del cráneo.
- Las cadenas y las estrellas se mueven 0,37, la media de las tiras.
- El balanceo de conjunto baja a ±4°, para que los extremos no se despeguen.
- Atributo `CapeFrom` = "skull surface".

**Probado:** después del ajuste, las 5 tiras quedan a 0,03 bajo la superficie. Captura en la mano y sin errores en Play.

## 2026-10-21 · seguo970 (Claude) · Pala 29: la capa sale de dentro del cráneo
**Qué:** con los cambios anteriores, la capa de la pala 29 quedaba flotando, separada de la pala. Ahora su borde de arriba está metido en la parte trasera del cráneo, de lado a lado de la cabeza, y la capa cae hacia el suelo cuando se lleva la pala. Al ondear gira sobre ese borde, así que nunca se despega.
**Dónde:** `ReplicatedStorage.Models.Palas.L29`: `Capa`, `Cadenas_Guirnaldas`, `Cadenas_Colgantes` y `Estrellas_Colgantes` se recolocan desde su posición original del modelo. El borde superior va al punto (2,2; 3,3; 0) del manifest y la caída va hacia «abajo» medido en la mano. Motor6D con `Pivot` en el borde y `Axis` a lo ancho de la cabeza. Atributo `CapeFrom` = "skull" en el modelo. Sustituye a los ajustes anteriores de la capa del mismo día.
**Probado:** los 3 huesos centrales del borde quedan dentro de la caja del cráneo y los 2 de los extremos justo en su superficie. Captura en la mano: la capa sale del cráneo. Sin errores.

## 2026-10-21 · seguo970 (Claude) · Pala 29: la capa sale desde detrás del cráneo
**Qué:** la capa de la pala 29 sale ahora de debajo de la parte trasera del cráneo y cae por debajo del mango hacia el cuerpo, un poco más baja, como en el dibujo de seguo970.
**Dónde:** `ReplicatedStorage.Models.Palas.L29`: `Capa`, `Cadenas_Guirnaldas`, `Cadenas_Colgantes` y `Estrellas_Colgantes` se desplazan 0,8 studs hacia el cráneo a lo largo del mango y 0,2 más lejos del mango. Se actualizan `C0` y `Pivot` de sus Motor6D.
**Probado:** en Play con la pala en la mano: el centro de la capa queda a 2,4 del agarre y 1,1 por debajo del mango. Captura de frente.

## 2026-10-21 · seguo970 (Claude) · Pala 29: capa centrada bajo el mango
**Qué:** en la mano, la capa de la pala 29 quedaba por encima del mango, hacia la cabeza del personaje. Ahora cuelga por debajo del mango, entre el collar y el centro de la empuñadura. La animación no cambia.
**Dónde:** `ReplicatedStorage.Models.Palas.L29`. `Capa`, `Cadenas_Guirnaldas`, `Cadenas_Colgantes` y `Estrellas_Colgantes` giran 180° alrededor del eje del mango y se desplazan 0,6 studs hacia el agarre; se actualizan sus Motor6D (`C0`, `Pivot`, `Axis`). Atributo `CapeFlip` en el modelo.
**Probado:** en Play con la pala en la mano: el centro de la capa queda 0,8 studs por debajo del mango y a 1,6 del agarre (antes 0,8 por encima y a 2,2). Captura de frente.

## 2026-10-21 · seguo970 (Claude) · Pala 29: capa a lo largo del mango y con más movimiento
**Qué:** en la mano, la capa de la pala 29 sobresalía en diagonal. Ahora cae a lo largo del mango, hacia el pomo, y se mueve más: la tela ondea más rápido y más amplio, y el balanceo de conjunto pasa de ±6° a ±9°.
**Dónde:** `ReplicatedStorage.Models.Palas.L29`. `Capa`, `Cadenas_Guirnaldas`, `Cadenas_Colgantes` y `Estrellas_Colgantes` giran −38,4° (de «hacia abajo» a «a lo largo del mango») alrededor del centro de la línea donde cuelga la capa; se actualizan sus Motor6D (`C0`, `Pivot`, `Axis`, `Swing` 9). Huesos de la capa: `Amp` de 0,022 a 0,21 rad y `Speed` 2,8. Atributo `CapeTurn` en el modelo con el giro aplicado.
**Probado:** en Play con la pala en la mano: captura de frente con la capa paralela al mango, sin errores.

## 2026-10-21 · seguo970 (Claude) · Pala 29: la capa se mueve como tela
**Qué:** la capa de la pala 29 ondea como una tela: la parte de arriba queda fija al cuello y el movimiento crece hacia el borde de abajo, con una onda que baja y cruza la capa. Sigue además el balanceo de conjunto que comparte con las cadenas y las estrellas colgantes.
**Dónde:** en `ReplicatedStorage.Models.Palas.L29` se cambia la pieza `Capa` por la de `Pala29_Capa_Rig.glb`, con sus 31 huesos (5 tiras × 6). Conserva la textura, las partículas y el Motor6D `ShovelOrbit`. Los huesos llevan la etiqueta `ShovelBone` (`Mode` swing, eje a lo ancho de la capa, `Amp` de 0,015 a 0,14 rad de arriba a abajo, `Speed` 2,4 y `Phase` desfasada por fila y columna). Original importado en `ServerStorage.Pala29_Capa_Rig`.
**Probado:** en Play: los huesos se mueven, la parte de arriba coincide con la línea de anclaje del manifest y en la captura cuelga y se curva bien. Sin errores. No probado en móvil (skinning de 31 huesos).

## 2026-10-21 · seguo970 (Claude) · Pala 29 nueva: Rey Galáctico texturizada y animada
**Qué:** la pala 29 es el modelo nuevo de `Pala29_ReyGalactico.glb` (cráneo de T-Rex de oro y cristal), montado así:
- **Materiales:** oro Foil en cráneo, dientes, cuernos, mango, cuello, halo, pomo y cadenas. Cristal lavanda en el cráneo, la mandíbula, el cuello y la punta. Mango de cristal con constelaciones blancas que brillan. Ojos Neon amarillos. Anillos con degradado rosa↔cian que brilla. Capa de tela galáctica. Planetas con textura.
- **Animación:** el halo gira con sus estrellas y sus dos planetas. Los 5 anillos giran, cada uno a su velocidad y algunos al revés, y sus planetas orbitan girando sobre sí mismos. La corona del pomo gira más despacio. La mandíbula «respira» (cierra 0-8° cada 2,5 s) y al cavar **muerde** (cierra hasta 29° en 0,12 s). La capa se balancea con sus cadenas y estrellas.
- **Efectos:** luz cálida que late en los ojos y chispas doradas, destello arcoíris con rayos en el centro del halo, destellos blancos sobre el cráneo y las constelaciones, polvo estelar cayendo de la capa, chispas rosa/cian en el anillo grande. Al cavar, el estallido de estrellas de la pala 28 y todo gira ×3 medio segundo.
**Dónde:** nuevo `ReplicatedStorage.Models.Palas.L29` (escala 1, la del modelo; original importado en `ServerStorage.Pala29`). `ShovelFx`: atributos nuevos en `ShovelOrbit`: `Offset` (vaivén hacia un solo lado) y `Bite` (giro extra al cavar, con el atributo local `FxDigAt` de la herramienta). Además `DIG_FX.L29` y búsqueda de `Craneo_Oro` para el efecto. Texturas nuevas en `tools/modelos/L29/` (`texturas.ps1`, IDs en `texturas/IDS.txt`); planetas, capa y halo reutilizan las de la pala 28. Los archivos de la pala 29 anterior se han sustituido en el repositorio por los nuevos.
**Probado:** en Play con `Debug "level" 29`: las manos caen en el mango (izquierda junto al agarre, derecha en el collar), la mandíbula va de 0 a 8° y al cavar llega a 29°, la capa se balancea ±7°, los planetas orbitan, sin errores. Capturas en Edit (pose de la referencia) y en la mano cavando.
**Notas:** la capa con huesos (`Pala29_Capa_Rig.glb`) no se importó, así que la capa se balancea entera desde la línea donde cuelga (la opción de último recurso del prompt). Si se importa el rig, se puede animar tela por tela con la etiqueta `ShovelBone`. No se usa `StarterPack` ni `Tool.Grip`: el juego monta la herramienta desde `Models.Palas.L29`. En `ServerStorage` queda un modelo vacío `animacion cabar2` del intento de importar el FBX; se puede borrar.

## 2026-10-21 · seguo970 (Claude) · Animación nueva de cavar, copiada fotograma a fotograma del .blend
**Qué:** al cavar, el personaje hace la animación nueva de seguo970: levanta la pala por encima de la cabeza, se agacha, la clava, saca la tierra y la lanza (26 fotogramas). La postura al llevar la pala es su primer fotograma.
**Dónde:** `ReplicatedStorage.DigAnim`: tabla `FRAMES` nueva y momentos del golpe (`IMPACT_AT` 0,6; `SCOOP_AT` 0,68; `TOSS_AT` 0,78, sacados de la altura de la pala en cada fotograma). Herramientas en `tools/animacion cavar/`: el `.blend` (rig MrXen0 R15, acción `Higgsfield_Motion.005_retarget`, 26 fotogramas a 20 fps), `exportar_cavar.py` (Blender en modo consola calcula cada hueso con IK incluido) y `convertir_cavar.ps1` (lo pasa a las articulaciones de Roblox).
**Probado:** en Play, congelando la animación con el atributo `DebugDigF`: las articulaciones dan los mismos ángulos que Blender en cada fotograma; capturas del fotograma 12 (pala arriba) y 15 (agachado, pala clavada). Sin errores. No probado cavando de verdad ni con otro jugador.
**Notas:** el FBX `animacion cabar2.fbx` no traía animación; por eso se sacó del `.blend`. Se usó Blender 5.2.2 portable descargado en `C:\bl52` (se puede borrar). Se mantiene `LEFT_GRIP` (la pala en la mano izquierda); el primer fotograma coincide con el de la animación anterior.

## 2026-10-21 · seguo970 (Claude) · Pala 29: borrado todo para volver a empezar
**Qué:** se quita la pala 29 importada (Rey Galáctico) para poner un modelo nuevo más adelante. Mientras tanto, la pala 29 vuelve a ser el diseño de bloques de `ShovelLook`.
**Dónde:** borrados `ReplicatedStorage.Models.Palas.L29`, `ServerStorage.Pala del Rey Galactico` (importación GLB), `Workspace.Pala_del_Rey_Galactico` (importación FBX) y las 4 entradas de la pala en `ServerStorage.RBX_ANIMSAVES` («Rey», «Automatic Save»). En `ShovelFx` se quita `DIG_FX.L29` y la búsqueda de la pieza `Craneo`.
**Probado:** comprobado que no queda ninguna instancia con «Rey Galactico» ni `L29`. No probado en Play.
**Notas:** se mantienen en el repositorio `tools/modelos/L29/` (archivos originales) y las texturas subidas a Roblox (galaxia y arcoíris); no estorban. Las etiquetas `ShovelAnim` y `ShovelColor` de `ShovelFx` siguen ahí por si las usa el modelo nuevo. Sobre la animación nueva de cavar: `animacion cabar2.fbx` no trae animación (solo el esqueleto en una postura), así que no se ha cambiado. Para leer FBX binarios hay una herramienta nueva: `tools/fbx/fbxanim.ps1`.

## 2026-10-21 · seguo970 (Claude) · Pala 28: la Pala Galáctica importada, texturizada y animada
**Qué:** la pala 28 es ahora el modelo 3D de `PalaGalactica_Roblox.zip`, montado así:
- **Texturas propias:** galaxia espiral en la hoja con un remolino brillante encima que gira, nebulosa dentro del mango de cristal, 8 planetas (Tierra, gigantes con bandas, violeta con cráteres, vetas rosas/rubí, zafiro con nubes), anillos de planeta, 3 anillos de energía (rosa, violeta-azul, oro-cian) y auroras.
- **Materiales:** oro Foil, cristal y estrellas Neon.
- **Animación:** los 6 planetas de la hoja orbitan la galaxia y giran sobre sí mismos. Los del mango y el del pomo orbitan a su ritmo. Los anillos de energía giran y laten, el halo de estrellas gira, la nebulosa gira dentro del mango y las auroras se balancean.
- **Efectos:** luz rosa-violeta que respira en el núcleo, chispas en el remolino, destello en la estrella grande, cometas, polvo de estrellas, halo arcoíris con rayos dorados detrás de la hoja y luz dorada en el pomo.
- **Al cavar:** estallido de estrellas rosas, azules y doradas con onda violeta, y todo gira ×3 durante medio segundo.
**Dónde:** nuevo `ReplicatedStorage.Models.Palas.L28` (escala 0,6, ~6,8 studs; original importado en `ServerStorage.PalaGalactica`). `ShovelFx`: etiquetas nuevas `ShovelOrbit` (Motor6D, en PreSimulation) y `ShovelPulse` (luces y piezas), `DIG_FX.L28` y aceleración al cavar (atributo local `FxBoostUntil` en la herramienta). Texturas: `tools/modelos/L28/texturas.ps1`, IDs en `tools/modelos/L28/texturas/IDS.txt` (subidas con la cuenta de seguo970).
**Probado:** en Play con `Debug "level" 28`: los planetas se mueven (cada anillo de planeta pegado a su planeta), los anillos giran, la luz y la transparencia laten, al cavar se acelera, sin errores en la consola. Las manos caen en el mango (izquierda encima del pomo, derecha al inicio del cuello): con escala 0,55 y el agarre del manifest la derecha caía en la hoja, por eso escala 0,6 y agarre más bajo. **No visto en pantalla:** la vista 3D de Studio no dibujaba durante la prueba.
**Notas:** no se usa `StarterPack` ni `Tool.Grip` como dice el prompt del zip: el juego monta la herramienta desde `Models.Palas.L28` y `DigAnim` coloca las manos. Del prompt no se ha hecho el «aparecer» de anillos y halo al sacarla ni la flotación de ±0,05.

## 2026-10-21 · seguo970 (Claude) · Pala 29: arreglado que la calavera no se moviera en la mano
**Qué:** en la mano, la mandíbula, el cráneo, el halo y una parte de la capa de la pala 29 estaban quietos. Solo se movían los huesos finos (capa, cadenas, anillos, planetas). Ahora la boca muerde de verdad y el cráneo y el halo se balancean como en la animación.
**Dónde:** `StarterPlayerScripts.ShovelFx`: las animaciones `ShovelAnim` se aplican en `RunService.PreSimulation` (antes iban en Heartbeat). El `Transform` de un Motor6D solo mueve la pieza si la física lo ve, y escrito en Heartbeat el Animator del personaje lo borraba antes del siguiente paso de física. A los huesos no les pasa porque se dibujan directamente desde su `Transform`.
**Probado:** en Play con la pala 29 en la mano, midiendo la posición real de las piezas: la boca va 0 → 30° → 0 dos veces cada 6 s, `Mandibula2` la sigue, el cráneo y el halo no se separan (3,3-3,6 studs de la mano) y los planetas siguen girando. No lo he visto en captura (los efectos tapan la calavera).
**Notas:** los Motor6D de las palas importadas leídos con `.Transform` parecen moverse aunque la pieza no se mueva; para comprobarlo hay que mirar el `CFrame` de las piezas.

## 2026-10-21 · seguo970 (Claude) · Pala 29: la boca se abre y se cierra como en el vídeo
**Qué:** la calavera de la pala 29 ahora muerde: abre la boca hasta 30° y la cierra de golpe, dos veces en cada vuelta de 6 s (como en `Pala_Rey_Galactico_preview`). Además, todas las piezas del cráneo, la mandíbula y el halo se mueven juntas. Antes solo se movía la pieza principal de cada una y el resto (cristal de la mandíbula, dientes, ojos, partes del cráneo y del halo) se quedaba quieto, así que la boca casi no parecía abrirse.
**Dónde:** `ReplicatedStorage.Models.Palas.L29`. Motor6D de `Craneo2-5`, `Ojos`, `Ojos2` y `Dientes` ahora cuelgan de `Craneo`; `Mandibula2` de `Mandibula`; `Halo2-5` de `Halo` (antes de `RootPart`). En `L29.ShovelAnim`, la pista `Mandibula` está hecha a mano (giro en Z de 0 a 30°); el resto sigue siendo la animación «Rey» del .glb.
**Probado:** en Play con `Debug "level" 29` la mandíbula va 0 → 30° → 0 dos veces cada 6 s y `Mandibula2` la sigue. Capturas en Edit de la boca abierta a 23°, 30° y 37° (con 37° la mandíbula se mete en la capa; por eso 30°). Sin errores. No mirado de cerca en la mano (los efectos tapan la calavera).
**Notas:** para cambiar cuánto abre, regenerar la pista `Mandibula` del módulo (valor `OPEN`, 61 fotogramas cada 0,1 s, rotación solo en el 6.º número de cada fotograma).

## 2026-10-21 · seguo970 (Claude) · Pala 29: probada la animación publicada, se queda la de antes
**Qué:** se probó la animación publicada por bbogatell (`103511085846454`, la «Rey» del Animation Editor) en la pala 29. Tiene sus 145 fotogramas, pero al reproducirla con un Animator **el cráneo, la mandíbula, el halo y la capa se separan de la pala** varios studs (también en el modelo original sin escalar). Por eso la pala 29 sigue con su animación horneada (`ShovelAnim`), que es la misma animación pero bien convertida. Para el jugador no cambia nada.
**Dónde:** `ReplicatedStorage.Models.Palas.L29` y `ShovelFx` quedan igual que antes. Borradas del workspace la copia `Pala del Rey Galactico` y `Rey_publicar`, que se pusieron solo para poder publicar.
**Probado:** en Play con `Debug "level" 29`: el Animator la reproduce, pero el cráneo y el halo flotan lejos del mango (captura). Después se dejó todo como estaba.
**Notas:** el fallo viene del importador. Convirtió en Motor6D los huesos `Craneo`, `Mandibula`, `Halo` y `Capa2`, que se llaman igual que una malla, y la animación «Rey» que creó no encaja con esos Motor6D. Además, en la mano las piezas están directamente dentro del `Tool`, que tiene escala 1, así que un Animator movería las piezas 2,4 veces de más (la pala está a escala 0,409). Sigue en `workspace` la importación FBX `Pala_del_Rey_Galactico` (a y=261); se puede borrar si ya no hace falta.

## 2026-10-20 · seguo970 (Claude) · Pala 29: el modelo del Rey Galáctico con su animación exacta y texturas
**Qué:** la pala 29 (Pala del Rey Galáctico) es ahora el modelo 3D que hizo otro Claude (`tools/modelos/L29/Pala_del_Rey_Galactico.glb`), con:
- **Su animación «Rey» exacta** (6 s en bucle): mandíbula, cráneo, capa, cadenas, halo, planetas, 3 anillos y 3 destellos. Roblox la descartaba al importar («no compatible»); se ha sacado del archivo y se reproduce por código, sin publicar nada. Se deja fuera el hueso que hacía flotar toda la pala (en la mano se movería sola).
- **Texturas y materiales:** la galaxia (capa, cráneo, mango, corona, halo) y el arcoíris (destellos) subidos a Roblox; oro metálico, cristal del cráneo y de la punta, zafiro y amatista, y Neon en ojos, constelaciones, anillos y halo (Roblox no importa los colores ni el brillo del glTF, solo imágenes).
- **Efectos** del `EfectosReyGalactico.lua`: ojos que laten, anillos que cambian de tono rosa, destellos y luz en el cráneo, polvo galáctico en la capa, destellos en halo y planetas. Y el efecto al cavar de las Divinas (columna de luz, onda y arcoíris).
**Dónde:** nuevo `ReplicatedStorage.Models.Palas.L29` (escala 0,409, `Handle` encima de la corona, módulo `ShovelAnim`). `ShovelFx`: reproduce módulos con la etiqueta `ShovelAnim` (fotogramas de `Transform` por hueso o Motor6D, en Heartbeat), colores animados con la etiqueta `ShovelColor` (atributos `ColorMode` pulse/hue…), `DIG_FX.L29`. Imágenes: galaxia `rbxassetid://106543189759352`, arcoíris `rbxassetid://99409713783326` (subidas con la cuenta de seguo970). Original importado en `ServerStorage.Pala del Rey Galactico`. Guía y herramientas: `docs/IMPORTAR_MODELOS.md` y `tools/glb/`.
**Probado:** en Play: `Debug "level" 29` da la pala; la animación se ve al dibujar (mandíbula y anillos moviéndose); captura en la mano; cavando sale el efecto. Sin errores. No probado: en móvil, con otro jugador mirando y en la tienda.
**Notas:** el importador convirtió los huesos `Craneo`, `Mandibula`, `Halo` y `Capa2` en Motor6D porque se llaman igual que una malla; la animación los mueve igual. Los colores de cada trozo de malla se asignaron por el orden de los materiales del archivo: si algún trozo sale de un color raro, se cambia en `L29`.

## 2026-10-20 · seguo970 (Claude) · Pala 30: el modelo importado, con materiales, animación y efectos
**Qué:** la pala 30 (Pala Divina del Diamante) es ahora **el modelo 3D que se importó** (`ServerStorage.Pala Divina del Diamante`, el `.glb` de `tools/modelos/L30`), con:
- **Materiales y colores** (venían en gris): diamante de cristal, gema interior azul brillante, oro metálico en mango, cuello y corona, cadenas doradas, cristal verdoso, gemas moradas, halos de luz dorada y ojos amarillos del T-Rex. Las alas, los anillos, los orbes y el T-Rex conservan su textura importada.
- **Animación con sus huesos:** los 4 anillos y los 2 halos giran, el T-Rex da vueltas alrededor (hueso `Orbita`), las alas aletean, las 6 cadenas se balancean y el T-Rex mueve la cola y la mandíbula.
- **10 emisores de partículas** (arcoíris y polvo de diamante en la hoja, destello, neblina rosa y azul, chispas doradas en la corona, plumas de luz que caen de las alas, estela del T-Rex, estrellas en los anillos) y 2 luces.
- **Al cavar con ella:** columna de luz, onda blanca y destello arcoíris en el suelo (lo ven todos los que estén cerca).
Se usa igual en la mano, en la tienda y en el cartel de la pala del carril. Del mismo tamaño que las demás palas.
(Antes, el mismo día, se había rehecho la pala con piezas en `ShovelLook`; eso **se ha deshecho**: `L[30]` de `ShovelLook` vuelve a ser el diseño de antes y solo se usa si falta el modelo.)
**Dónde:** nuevo `ReplicatedStorage.Models.Palas.L30` (copia preparada del importado: escala 0,406, pieza `Handle` en la mano justo encima de la corona y soldada a `RootPart`, sin `InitialPoses`, `AnimSaves` ni `AnimationController`). `ShovelLook.build`: si existe `ReplicatedStorage.Models.Palas.L<n>` con `Handle`, usa ese modelo. `ShovelFx`: huesos con la etiqueta `ShovelBone` (atributos `Mode` = spin/swing, `Axis` en el espacio del hueso, `Speed`, `Amp`, `Phase`), animados en **Heartbeat** (en RenderStepped el Animator del personaje los volvía a poner a cero), y efecto al cavar `DIG_FX.L30` (busca `Blade` u `Hoja`). `Menus` (vista previa de la tienda): el cristal se dibuja liso, porque los ViewportFrame no pintan `Glass`.
**Probado:** en Play: `Debug "level" 30` da la pala; los huesos giran y aletean (comprobado al dibujar); captura en la mano; cavando en la parcela 1 sale el efecto en cada palada; tienda con la tarjeta de la pala 30. Sin errores. No probado: en móvil y con otro jugador mirando.
**Notas:** el original importado sigue en `ServerStorage` sin tocar. Para animar otro modelo con huesos: etiqueta `ShovelBone` en el hueso y sus atributos. En la tienda la pala 30 se ve algo pálida sobre el fondo claro de su tarjeta.

## 2026-10-20 · bbogatell (Claude) · Todos los bichos animados con huesos (optimización)

- **Qué:** todos los bichos (los hechos y los que vendrán) se animan ya con **huesos**, como explica la guía. Cambios:
  - El rig `Generic` agrupa las piezas por `Role`: cuerpo, cabeza (+ `Snack`), mandíbula, cola, un ala por `WingPivot`, una pata por `Side` + `LegPivot` y abrazo (`Hug`). Los ojos se quedan anclados porque parpadean. Las animaciones especiales siguen igual: saltitos, bostezo, masticar, estiramiento, mirada pilla, tiritar, chillido, cabezazo y correr en el sitio. Diferencia visible: la respiración es un sube y baja del cuerpo.
  - El Mecha Krakenoide usa la versión con huesos que se probó lado a lado. La de antes se ha borrado, y también la carpeta de prueba `PruebaKraken` del mapa.
  - `CreatureAnim`: solo anima los bichos a menos de 120 studs (antes 180) **y** en pantalla. Entre 60 y 120 studs los anima un frame de cada dos. Nuevo atributo de prueba `workspace.PauseCreatureAnim`, que lo para todo.
  - Si un rig se inicia dos veces sobre el mismo modelo, primero deshace los huesos viejos (`resetBones`).
- **Dónde:** `ReplicatedStorage.CreatureRigs` (rig `Generic`, `MechaKrakenoide`, helpers `newBone` / `attach` / `resetBones`), `StarterPlayerScripts.CreatureAnim`. Docs: `GUIA_BICHOS.md`.
- **Probado:** en Play con `/llenar 13` salen los 13 bichos hechos en las 8 bases, todos montados bien (capturas de cerca) y sin errores. Rendimiento con `/llenar 20` (160 bichos, unas 16.600 piezas), en Studio:

| Vista | Antes (pieza a pieza) | Ahora (huesos + distancia) | Bichos quietos (referencia) |
|---|---|---|---|
| Desde arriba, todas las bases | 20 FPS | 58-60 FPS | 60 FPS |
| Dentro de una base | 16 FPS | 49-50 FPS | 60 FPS |

- **Notas:** Studio ejecuta servidor y cliente a la vez, así que en un jugador real debería ir algo mejor. Si hace falta más margen, se pueden bajar `MAX_DIST` o `HALF_DIST` en `CreatureAnim`.

## 2026-10-20 · bbogatell (Claude) · Guía: animación optimizada con huesos

- **Qué:** nueva sección «Animación optimizada: huesos (OBLIGATORIO para todos los bichos)» en la guía de los bichos. Explica por qué se hace, con los datos de la prueba de rendimiento, y cómo funciona: el cliente agrupa las piezas en huesos invisibles anclados, suelda el resto con `WeldConstraint` y cada frame solo mueve los huesos con `BulkMoveTo`. Incluye la tabla de grupos del rig `Generic` por `Role`, las reglas para hacer bichos (todo lo que se mueva distinto necesita su `Role`, solo los `Eye` cambian de tamaño, no soldar en el constructor...), cómo hacer un rig propio con huesos y cómo comprobarlo con `/llenar`.
- **Dónde:** `docs/GUIA_BICHOS.md` (sección 3).
- **Notas:** el siguiente paso es pasar el rig `Generic` y el del Mecha Krakenoide a este sistema.

## 2026-10-20 · bbogatell (Claude) · Prueba: Mecha Krakenoide con animación optimizada (comparativa)

- **Qué:** versión de prueba de la animación del Mecha Krakenoide que mueve «huesos» en vez de piezas. El cliente agrupa las 293 piezas en 85 grupos: cuerpo, cabeza, mandíbula, cada velocidad de anillo, cada segmento de tentáculo y cada garra. Cada grupo tiene una pieza invisible anclada, y el resto de piezas del grupo se desanclan y se sueldan a ella con `WeldConstraint`, solo en el cliente. Cada frame solo se mueven los huesos y los ojos (87 en vez de 293). Diferencias: la respiración es un pequeño sube y baja de todo el cuerpo en vez de hincharse, y las antenas no vibran. Se mantienen los rayos y el pulso.
- **Dónde:** `ReplicatedStorage.CreatureRigs` (nuevo rig `MechaKrakenoideFast`); `StarterPlayerScripts.CreatureAnim` (rayos y pulso también para el rig nuevo). En el mapa, carpeta `Workspace.PruebaKraken` delante del spawn: dos Krakenoides lado a lado con cartel, «NORMAL» (rig de siempre) y «OPTIMIZADO» (`Rig = "MechaKrakenoideFast"`). **Hay que borrar esta carpeta antes de publicar.**
- **Probado:** en Play, los dos se mueven (tentáculos y cabeza) y no hay errores. Coste de una llamada a la animación: normal 0,58 ms, optimizado 0,14 ms (4,2 veces menos). Falta probar con muchos a la vez (`/llenar`) y decidir si se pasa a todos los bichos.

## 2026-10-20 · bbogatell (Claude) · Comando /llenar para pruebas de rendimiento

- **Qué:** comando de prueba `/llenar [cantidad] [id]`. Llena las 8 bases del lobby con esa cantidad de bichos cada una (por defecto 12), alternando los bichos ya hechos a mano (`ServerStorage.Models.Bichos`), o solo el bicho `id` (p. ej. `/llenar 20 191`). Los bichos pasean como los de verdad. Solo se ven: no se guarda nada ni cambia los datos de nadie. `/llenar 0` los quita. Máximo 60 por base.
- **Dónde:** `ServerScriptService.DiamondServer.Main` (junto a `/bicho` y `/abrir`; los bichos van a la carpeta `workspace.PruebaBichos`). Docs: `PRUEBAS.md`.
- **Probado:** en Play, `/llenar` pone 96 bichos (8 × 12) y `/llenar 0` los quita. Sin errores.

## 2026-10-20 · bbogatell (Claude) · Archie con brazos + prueba de rendimiento de los bichos

- **Qué:**
  - **Archie (12):** ahora tiene brazos visibles. De cada hombro baja un brazo hasta delante del pecho, con una mano y sus 3 garras blancas, como en la hoja; antes las garras estaban en mitad del ala y no se veían los brazos. Tiene 137 piezas.
  - **Prueba de rendimiento:** se llenaron las 8 bases del lobby con bichos ya hechos (1-12 y 191, mezclados) en Play, y se midió el cliente en Studio con dos vistas: desde arriba viendo todas las bases y dentro de una base.

| Bichos por base | Total | Piezas | FPS (arriba / en base) | Animación (ms por frame) |
|---|---|---|---|---|
| 1 | 8 | 615 | 60 / 60 | 1,2 |
| 5 | 40 | 3.595 | 60 / 50 | 9 |
| 10 | 80 | 7.572 | 36 / 23 | 21-26 |
| 20 (bases llenas) | 160 | 14.983 | 20 / 16 | 42 |

- **Conclusión:** el cuello de botella es la animación (`CreatureAnim` mueve cada pieza cada frame: unos 2,8 µs por pieza), no el dibujado (CPU de render 6-18 ms, GPU 4-10 ms). Con un servidor lleno (8 jugadores × 20 bichos) bajaría a unos 16-20 FPS. Propuesta: animar por grupos soldados (un «hueso» por cabeza, cola, cada pata y cada ala, con el resto de piezas unidas con `WeldConstraint`) y no animar los bichos lejanos o fuera de cámara.
- **Dónde:** `ServerStorage.CreatureBuilders.Archie` → `Models.Bichos["12"]`. La prueba de rendimiento se hizo con código temporal en Play (no queda nada en el juego).
- **Probado:** vista previa de Archie de frente y en 3/4; medidas de la tabla tomadas en Play.

## 2026-10-20 · bbogatell (Claude) · Bicho 12 · Archie hecho a mano

- **Qué:** modelo hecho a mano del bicho 12 (Archie, Archaeopteryx, Raro, 4,8 studs, 127 piezas), fiel a su hoja de ChatGPT (comparado de frente y en 3/4). Es mitad ave, mitad dinosaurio, negro azabache e inclinado hacia delante. Tiene las alas muy abiertas y levantadas, de plumas negras con una franja verde tornasol (metálica) y puntas blancas en las de fuera, y 3 garras blancas en cada muñeca. El hocico es largo y está abierto (boca roja, dientes blancos). Tiene ojo dorado, cresta de plumas en punta y gorguera verde, garras blancas en los pies y una cola de reptil con plumas a los dos lados con la punta blanca. Le caen plumas negras (ritmo 4) y suelta destellos verdes (ritmo 4). Da saltitos aleteando, mueve la cola y pasea. Sin sonidos.
- **Dónde:** `ServerStorage.CreatureBuilders.Archie` → `ServerStorage.Models.Bichos["12"]` (sin cambios en el rig: usa `Hop` + `WingFlap`/`WingSpeed`).
- **Probado:** en Play, con `/bicho 12 base` + `/abrir`: salta (0,38 studs), aletea, pasea 1,7 studs y están los dos emisores. Sin errores en la consola.
- **Notas:** la primera cuenta de ChatGPT se quedó sin imágenes gratis; esta hoja se hizo con otra cuenta. El siguiente es el 13 (Dilo Abanico, Raro, 5,8 studs).

## 2026-10-20 · bbogatell (Claude) · Bichos 9, 10 y 11 hechos a mano (Dimorfo Bocazas, Cabezón Pachy, Galli Avestruz)

- **Qué:** los tres primeros Raros, cada uno fiel a su hoja de ChatGPT (comparados de frente, de lado y en 3/4). Sin sonidos.
  - **9 · Dimorfo Bocazas** (4,8 studs, 85 piezas): pterosaurio gris oscuro de pie, con alas de membrana morada abiertas hacia arriba (triángulos hechos con cuñas), un pico enorme de frailecillo a franjas negro, amarillo y naranja, abierto y con dientes blancos de dos tamaños, ojo amarillo, cresta naranja y cola fina acabada en un rombo morado. Le caen plumitas moradas de las alas (ritmo 5, textura `rbxassetid://242842525`). Chilla abriendo y cerrando el pico, aletea suave y pasea.
  - **10 · Cabezón Pachy** (5,6 studs, 73 piezas): bípedo robusto verde oliva inclinado para embestir, con una cúpula crema enorme rodeada de pinchos grises y un vendaje blanco con cruz roja, ojos amarillos, hocico y barriga color tostado y cola gruesa. Polvo en los pies (ritmo 5). Cada pocos segundos da un cabezazo y salen 3 estrellitas amarillas.
  - **11 · Galli Avestruz** (6,2 studs, 59 piezas): dinosaurio-avestruz de patas larguísimas gris oscuro (una levantada, corriendo), cuerpo beige con rayas marrones en el lomo, cuello largo blanco por delante, ojo amarillo grande y pico negro. Líneas de velocidad blancas hacia atrás (ritmo 8) y polvo en los pies (ritmo 5). Corre en el sitio de vez en cuando.
- **Dónde:** `ServerStorage.CreatureBuilders.DimorfoBocazas`, `CabezonPachy` y `GalliAvestruz` → `ServerStorage.Models.Bichos["9"]`, `["10"]` y `["11"]`. `ReplicatedStorage.CreatureRigs` (Generic): nuevos atributos `Scream`, `Headbutt` (+ emisor `Stars`) y `Jog`. Docs: `GUIA_BICHOS.md`, `BICHOS_DINOSAURIOS.md`.
- **Probado:** en Play, con `/bicho 9 base`, `/bicho 10 base`, `/bicho 11 base` + `/abrir`: los tres pasean. El Dimorfo abre el pico, el Pachy se inclina 0,35 rad en el cabezazo y el Galli mueve las patas. Todos los emisores están. Sin errores en la consola.
- **Notas:** el siguiente es el 12 (Archie, Raro, 4,8 studs).

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

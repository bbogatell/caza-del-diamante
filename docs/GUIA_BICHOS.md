# Guía para hacer los bichos (para Claude)

Así se han hecho los bichos 1 (Dodo Corriente), 2 (Compi), 3 (Proto Bebé) y 191 (Mecha Krakenoide). Sigue los pasos en este orden, **un bicho cada vez y por orden de la lista** (`BICHOS_DINOSAURIOS.md`). El siguiente es el **25**.

Reglas del repo: haz `git pull` antes de empezar, añade una entrada al principio del `CHANGELOG.md` por cada bicho, haz commit y push (formato en `CLAUDE.md`). Escribe al usuario en español.

---

## 0. Antes de empezar

- **Studio:** llama a `list_roblox_studios` (el `studio_id` cambia en cada sesión). Todo se hace en el sitio «💎ENCUENTRA EL DIAMANTE💎».
- **Lee la ficha del bicho** en `docs/BICHOS_DINOSAURIOS.md` (`grep -n -A4 "^\*\*N\. "`) y la **guía de estilo** del principio del documento: la parte común (studs, Neon solo en lo que brilla, ojos cartoon, Root, animación en reposo y **animación de caminar**), las proporciones (chibi SOLO los Comunes y los bebés) y la fila de su rareza en la tabla «Escalada por rareza» (número de piezas, pose y número/ritmo de partículas). **La altura es la de su ficha** (`- **Altura:** N studs`), no la del rango de la rareza.
- **Nunca pongas sonidos** en los bichos (ni aunque la ficha diga «zumbido» o «rugido»: hazlo visual). `Looks.creature` borra cualquier `Sound` por si acaso.

## 1. La imagen de referencia en ChatGPT

1. Abre el **navegador integrado** (herramientas `mcp__Claude_Browser__*`) en `https://chatgpt.com/` con `preview_start` / `navigate`.
2. Si sale la pantalla de iniciar sesión, **pide al usuario que entre él con su cuenta** en ese panel (tú no escribes contraseñas). Espera a que te diga que ya está.
3. Empieza un **chat nuevo** (navega a `https://chatgpt.com/`), haz clic en el cuadro de texto, escribe el prompt de abajo y pulsa Enter.
4. Espera ~40-60 s (varias esperas de 10 s) y haz `screenshot`; luego `zoom` sobre la imagen (parte de arriba y parte de abajo) para ver los detalles.
5. Si ChatGPT dice que **se han agotado las imágenes gratuitas**, avisa al usuario: tiene que esperar o entrar con otra cuenta.

**Prompt (rellena lo que va entre «»; copia modelo, colores y efectos de la ficha):**

> Genera una imagen tipo FICHA DE PERSONAJE para un videojuego de Roblox (estilo cartoon de bloques, como "Roba un huevo"), con fondo de isla Roblox desenfocado y paneles oscuros azul marino con bordes redondeados, todo en español. Bicho: "«Nombre»" («especie»), «N» $/s, rareza «Rareza» (color «color de la rareza»). Distribución: arriba a la izquierda el título "«Nombre»" con "«N» $/s"; en el centro el bicho grande sobre un pedestal «de piedra sencillo / acorde a su tema», con una flecha vertical que indique "«altura de su ficha» studs (altura)"; arriba a la derecha un panel con "«N» $/s", "«Rareza»", "Modelo:" («texto del modelo de la ficha»), "Colores:" («colores de la ficha») y "Partículas («n»):" («lista de la ficha» o "ninguna"). Debajo, una fila con 4 vistas del bicho: Frente, Lado, Espalda y 3/4. Debajo, una fila "Animaciones" con viñetas unidas por flechas: Respira (escala 1 → 1,03 en 2 s), Parpadea (cada 3-5 s), Balancea la cola, «su animación propia de la ficha», Camina («patas alternas / se desliza / vuela», según el bicho). «Si tiene partículas: Debajo, una fila "Partículas" con un icono de cada una y su ritmo.» El bicho debe verse hecho con piezas sencillas (bloques, esferas, cuñas, cilindros) con textura de studs de LEGO, fácil de modelar, «proporciones chibi (cabeza enorme, cuerpo rechoncho, patas cortitas) — SOLO Comunes y bebés — / proporciones de dinosaurio real exageradas en cartoon, más robusto cuanto más rara la rareza». «Sin partículas ni efectos brillantes» (solo si no tiene).

**Fidelidad a la imagen (lo pide el usuario):** para verla grande, busca la imagen con `javascript_tool` (`img` con `naturalWidth > 1000`), dibújala en un `canvas` a pantalla completa recortando zonas (pose principal, vistas, animaciones) y haz `screenshot`. Luego compara capturas del modelo **desde los mismos ángulos que las vistas** (frente, lado, 3/4) y corrige hasta que se parezca: formas (bloques o redondeado), proporciones, número de patas, tamaño de ojos, accesorios.

Mira la imagen y fíjate en: silueta y pose, proporciones, colores exactos, dónde van rayas/manchas, ojos, accesorios, qué hace en cada animación.

## 2. El modelo (en Studio, con código)

Los modelos se construyen con un **módulo constructor** por bicho en `ServerStorage.CreatureBuilders.<NombreSinEspacios>` que usa `ServerStorage.CreatureBuilders.Kit`, y se guardan en `ServerStorage.Models.Bichos["<id>"]`. `Looks.creature` ya usa esa carpeta si el modelo existe (si no, saca un bicho genérico).

### Convenciones
- `Kit.new(id)` devuelve `m, part, count`. El modelo tiene una `Root` invisible en (0,0,0) = **centro de la base, en el suelo**. **El frente del bicho mira a −Z**, +Y arriba. Las patas tocan y = 0.
- `part(nombre, tamaño, CFrame, color, opciones)` crea una pieza anclada sin colisión. Opciones: `studs = true` (textura de studs, para el cuerpo; no en ojos/dientes/garras/Neon), `ellipsoid = true` (esfera deformable con SpecialMesh: cuerpos redondos, ojos que parpadean), `shape = Enum.PartType.Ball/Cylinder` (el cilindro va a lo largo del eje X: gíralo con `CFrame.Angles(0, 0, math.pi/2)` para ponerlo vertical o `CFrame.Angles(0, math.pi/2, 0)` para que vaya hacia delante), `wedge = true` (cuña: dientes, garras, picos; gírala con `CFrame.Angles(math.pi,0,0)` para que apunte abajo o `(0, math.pi, 0)` para que mire al frente), `neon = true`, `metal = true`, `transparency = n`, `parent = otroModelo`, `attr = {...}` (atributos para la animación, ver abajo). Trucos útiles de los bichos hechos: una función `bar(nombre, a, b, ancho)` que pone una pieza entre dos puntos con `CFrame.lookAt` (patas largas, cuellos, colas curvas; mira `GalliAvestruz`) y una `tri(a, b, c)` con dos cuñas para triángulos (membranas de alas; mira `DimorfoBocazas`).
- Al final: `local _, size = m:GetBoundingBox(); m:ScaleTo(«altura» / size.Y)` para dejarlo a la altura de su ficha (`Altura`; mide el tamaño **antes** de añadir piezas invisibles de efectos que sobresalgan, como una nube de copos encima de la cabeza, o contarán en la altura), y `Kit.finish(m, "Generic")` (o el nombre de su rig propio). Kit lo guarda, le pone la etiqueta `CreatureRig`, el atributo `Rig` y `ModelStreamingMode = Atomic`.
- Construye con **todas las piezas que pida la rareza** (tabla de escalada), con la silueta clara y los rasgos exagerados.

### Plantilla de constructor
```lua
-- N · Nombre (Rareza, altura, piezas, partículas). Rig: Generic (+ lo que tenga).
-- Run: require(game.ServerStorage.CreatureBuilders.Nombre)()
return function()
local Kit = require(game.ServerStorage.CreatureBuilders.Kit) -- (ruta completa: script.Parent no sirve al clonar)
local C = Color3.fromRGB
local m, part, count = Kit.new(N)
local H, E, T, J = {Role = "Head"}, {Role = "Eye"}, {Role = "Tail"}, {Role = "Jaw"}
-- patas (cada pieza de una pata con Role "Leg", Side y LegPivot = la cadera)
for sx = -1, 1, 2 do
	local L = {Role = "Leg", Side = sx, LegPivot = Vector3.new(sx * 0.45, 1.05, 0.25)}
	part("Thigh", Vector3.new(0.55, 0.65, 0.75), CFrame.new(sx * 0.45, 0.85, 0.3), COLOR, {studs = true, attr = L})
	part("Foot", Vector3.new(0.5, 0.2, 0.8), CFrame.new(sx * 0.45, 0.1, 0.02), COLOR, {attr = L})
end
-- cuerpo, cabeza (attr = H), ojos (attr = E: blanco + pupila + brillo), cola (attr = T), mandíbula (attr = J)...
m:SetAttribute("HeadPivot", Vector3.new(0, 2.0, -0.45)) -- cuello (gira la cabeza alrededor)
m:SetAttribute("TailPivot", Vector3.new(0, 1.5, 0.7))   -- base de la cola
m:SetAttribute("TailSway", 0.35)
m:SetAttribute("HeadTilt", 0.2)
local _, size = m:GetBoundingBox()
m:ScaleTo(3.6 / size.Y)
Kit.finish(m, "Generic")
return m, count()
end
```
Ejemplos completos: `CreatureBuilders.DodoCorriente`, `CreatureBuilders.Compi`, `CreatureBuilders.ProtoBebe` (rig genérico) y `CreatureBuilders.MechaKrakenoide` (rig propio y 12 efectos).

### Crear el módulo y ejecutarlo (con `execute_luau` en Edit)
```lua
local folder = game.ServerStorage.CreatureBuilders
local old = folder:FindFirstChild("Nombre"); if old then old:Destroy() end
local b = Instance.new("ModuleScript"); b.Name = "Nombre"; b.Source = [==[ ...código... ]==]; b.Parent = folder
local m, n = require(b:Clone())() -- OJO: require cachea; usa siempre :Clone() para ejecutar la versión nueva
```
Para verlo: clónalo a `workspace` (p. ej. `c:PivotTo(CFrame.new(0, 18, -150) * CFrame.Angles(0, math.rad(150), 0))`), pon la cámara (`workspace.CurrentCamera.CFrame = CFrame.lookAt(...)`) y haz `screen_capture`. Compara con la imagen de ChatGPT y corrige (colores, tamaños, posición de ojos/pico...) hasta que se parezca. Borra la copia de `workspace` al acabar.

## 3. Animaciones

Las hace cada cliente: `StarterPlayerScripts.CreatureAnim` anima todos los modelos con la etiqueta `CreatureRig`, usando la lógica de `ReplicatedStorage.CreatureRigs[atributo Rig]`. **No hay que tocar nada para que el bicho camine**: CreatureAnim ya lo hace pasear por la base (círculo de 2,5-7 studs alrededor de donde se dejó, se gira hacia donde va, se para unos segundos) y pone `st.walking = true` mientras anda.

### Rig `Generic` (para casi todos)
Las piezas se marcan con el atributo `Role`:
- `"Head"`: gira alrededor de `HeadPivot` (mira alrededor, tuerce la cabeza `HeadTilt`).
- `"Eye"`: va con la cabeza y **parpadea** (se aplasta en Y): pon blanco, pupila y brillo como `Eye` (con `ellipsoid`).
- `"Jaw"`: va con la cabeza y se abre alrededor de `JawPivot` si el bicho bosteza.
- `"Tail"`: se balancea alrededor de `TailPivot` (`TailSway` = radianes).
- `"Wing"`: aletea alrededor de su propio atributo `WingPivot` (y más rápido al caminar).
- `"Leg"`: se balancea alrededor de su `LegPivot` (cadera) al caminar. `Side` = 1 o −1: en bípedos una pata cada lado; **en cuadrúpedos, las patas en diagonal comparten Side** (delantera izquierda y trasera derecha = 1, las otras = −1).
- Lo demás va con el cuerpo: respira (sube y baja un poco cada 2 s) y, al caminar, sube/baja y se bambolea.
- Cada grupo se mueve como un bloque rígido (ver «Animación optimizada: huesos» más abajo).

Atributos del modelo: `HeadPivot`, `TailPivot`, `TailSway` (0,35), `HeadTilt` (0,35; 0 = nada), `StepRate` (10; patas cortas = 12-13), `Waddle` (0,08; gordos 0,14), `Hop` (altura de saltitos nerviosos, p. ej. 0,35; nil = no), `Yawn` (ángulo del bostezo, p. ej. 0,6) + `JawPivot`, `Chew` (ángulo de la mandíbula al masticar, p. ej. 0,35; las piezas con `Role = "Snack"`, como una hojita, solo se ven mientras mastica), `Stretch` (inclinación hacia delante del estiramiento de corredor, p. ej. 0,6) + `BodyPivot` (las caderas), `WingFlap` (amplitud del aleteo de las piezas `Role = "Wing"`, 0,12 por defecto; p. ej. 0,22) y `WingSpeed` (velocidad del aleteo, 2,2 por defecto), `Sneak` (giro de cabeza, p. ej. 0,65, de la mirada pilla a un lado y a otro cada pocos segundos; las piezas con `Role = "Hug"`, como unos brazos abrazando un huevo, giran al revés alrededor de `BodyPivot`, como escondiéndolo), `Shiver` (cuánto se sacude de lado al tiritar de frío, p. ej. 0,06; un `ParticleEmitter` llamado `Breath` con `Rate = 0` en la boca echa vaho al tiritar y de vez en cuando), `Scream` (ángulo de la mandíbula al chillar: levanta la cabeza y abre y cierra el pico 3 veces; usa `Role = "Jaw"` y `JawPivot`), `Headbutt` (inclinación del cabezazo alrededor de `BodyPivot`; un `ParticleEmitter` llamado `Stars` con `Rate = 0` suelta 3 estrellitas al golpear) `Jog` (segundos que corre en el sitio, moviendo las patas sin avanzar) y `Frill` (cuánto se pliega hacia atrás cada mitad de una gola cuando está cerrada, p. ej. 1,25; las piezas con `Role = "Frill"` llevan `FrillPivot` y `Side` = 1 / −1 y se construyen **abiertas**; de vez en cuando la gola se abre de golpe, abre la boca, echa la cabeza adelante y un `ParticleEmitter` llamado `Spit` con `Rate = 0` escupe una bola), `ArmRaise` (ángulo que suben los brazos cada pocos segundos, p. ej. 0,55: piezas con `Role = "Arm"`, `ArmPivot` = hombro y `Side`; van con el cuerpo) y `Leap` (altura de un salto en arco cada pocos segundos: el cuerpo sube, levanta el morro y luego lo baja alrededor de `BodyPivot`, como un delfín). `HeadSnap` (ángulo máximo de los giros de cabeza a saltitos de un cazador al acecho, p. ej. 0,6: cada 0,5-1,3 s la cabeza salta a otra dirección y se queda quieta) y `TailWhip` (ángulo de un coletazo fuerte cada pocos segundos: 3 sacudidas rápidas de lado a lado, p. ej. 0,55). `Stomp` (ángulo que levanta la pata `Side = 1` antes de golpear el suelo cada pocos segundos; un `ParticleEmitter` llamado `StompFx` con `Rate = 0` revienta al golpear, p. ej. 0,75) y `Trumpet` (ángulo que levanta la cabeza para tocar, p. ej. 0,55; los `ParticleEmitter` llamados `TrumpetFx` con `Rate = 0` revientan dos veces mientras toca). `TailSlam` (ángulo que baja la cola para golpear el suelo con una maza: primero la levanta y luego la estampa; los `ParticleEmitter` llamados `SlamFx` con `Rate = 0` revientan al golpear, p. ej. 0,95). **Piezas que brillan:** cualquier pieza con el atributo `GlowColor` (Color3) se enciende hacia ese color (y pasa a Neon) cada pocos segundos durante ~1,6 s; los `ParticleEmitter` llamados `GlowFx` con `Rate = 0` revientan al empezar. Las piezas con `Role = "Base"` (una ola, una roca sobre la que está el bicho) **no se mueven nunca**. Los pivotes se dan en las coordenadas del constructor (antes del `ScaleTo`): el rig ya tiene en cuenta la escala.

**Animación propia de la ficha:** si es tuerce la cabeza / saltitos / bostezo, ya existe (HeadTilt / Hop / Yawn). Si es otra cosa (p. ej. «agita las alas», «golpea el suelo», «ruge»), **añádela al rig Generic** como opción nueva con su atributo (mira cómo están hechos Hop y Yawn en `CreatureRigs`) y documenta el atributo en el comentario de arriba del Generic.

**Caminar según el tipo** (ver la guía común del documento): con patas → `Role = "Leg"`; voladores → `Wing` (ya baten más al caminar); sin patas (serpientes, peces, tentáculos, orugas) → no pongas `Leg`: se desliza solo; si quieres que algo ondule más al moverse, haz un rig propio.

### Rig propio (bichos complicados)
Para cosas que el Generic no hace (tentáculos articulados, piezas que orbitan, rayos entre piezas...), añade en `ReplicatedStorage.CreatureRigs` una tabla `Rigs.MiRig = {init = function(model) ... end, animate = function(model, st, t) ... end}` y pon `Kit.finish(m, "MiRig")`. Mira `Rigs.MechaKrakenoide`: `init` agrupa las piezas en **huesos** (ver la sección siguiente) y `animate` calcula dónde va cada hueso y los mueve todos a la vez con `workspace:BulkMoveTo`. Usa `st.walking` y `st.dt` (los pone CreatureAnim). Los rayos en zigzag y las ondas del Krakenoide están en `CreatureAnim` (bloque «extras of the Mecha Krakenoide»).

### Animación optimizada: huesos (OBLIGATORIO para todos los bichos)

**Por qué:** antes cada rig movía **todas las piezas una a una en cada frame**. En la prueba de rendimiento (8 bases llenas con `/llenar`), eso costaba unos 2,8 µs por pieza: con 20 bichos por base (160 bichos, unas 15.000 piezas) la animación se comía 42 ms por frame y el juego bajaba a 16-20 FPS. Ahora se mueven **huesos**: unas pocas piezas invisibles por bicho, y el motor arrastra el resto. Con el Mecha Krakenoide, la animación pasó de 0,58 ms a 0,14 ms por frame (293 piezas movidas → 87).

**Cómo funciona (lo hace el rig en el cliente, en `init`; el constructor no tiene que soldar nada):**
1. Para cada **grupo** de piezas que se mueven juntas, el rig crea un **hueso**: una `Part` invisible, anclada y sin colisión llamada `Bone`, puesta en el pivote del grupo (`HeadPivot`, `TailPivot`, cada `WingPivot`, cada `LegPivot`...).
2. Las piezas del grupo se **desanclan** (`Anchored = false`) y se **sueldan** a su hueso con un `WeldConstraint`. Todo esto solo en el cliente: en el servidor el modelo sigue anclado y sin huesos.
3. En cada frame, `animate` calcula solo el CFrame de cada hueso y los mueve todos juntos con `workspace:BulkMoveTo(huesos, cframes, Enum.BulkMoveMode.FireCFrameChanged)`. Las piezas soldadas van detrás solas.

**Grupos del rig `Generic`** (salen solos del atributo `Role` de cada pieza):

| Grupo (un hueso) | Piezas | Pivote del hueso | Cómo se mueve |
|---|---|---|---|
| Cuerpo | sin `Role` (y lo que no sea de otro grupo) | la Root | respira (sube y baja un poco), se bambolea al andar, saltitos, tiritar, cabezazo, estiramiento |
| Cabeza | `Head` y `Snack` | `HeadPivot` | va con el cuerpo y gira (mira, tuerce, chilla, mirada pilla) |
| Mandíbula | `Jaw` | `JawPivot` | va con la cabeza y se abre (bostezo, masticar, chillido) |
| Cola | `Tail` | `TailPivot` | va con el cuerpo y se balancea |
| Un ala por cada `WingPivot` distinto | `Wing` | su `WingPivot` | va con el cuerpo y aletea |
| Una pata por cada `Side` + `LegPivot` distinto | `Leg` | su `LegPivot` | se balancea al andar (no respira ni se bambolea) |
| Abrazo | `Hug` | `BodyPivot` | va con el cuerpo y gira al revés que la cabeza en la mirada pilla |
| Un brazo por cada `Side` + `ArmPivot` | `Arm` | su `ArmPivot` | va con el cuerpo y sube (ArmRaise) |
| Base | `Base` | la Root | no se mueve (solo sigue a la Root) |
| Una mitad de gola por cada `Side` | `Frill` | su `FrillPivot` | va con la cabeza y se pliega hacia atrás (eje vertical) cuando está cerrada |
| **Ojos** (no son hueso) | `Eye` | — | **se quedan anclados** y se mueven uno a uno con la cabeza, porque parpadean cambiando de tamaño |

**Reglas al hacer un bicho:**
- **Todo lo que tenga que moverse distinto del resto necesita su propio `Role` y su pivote.** Ya no hay movimiento pieza a pieza: las piezas de un mismo grupo se mueven como un bloque rígido. Una cola larga que se dobla en curva no puede ser un solo grupo `Tail`: haz un rig propio con un hueso por segmento (como los tentáculos del Krakenoide).
- **Solo las piezas `Eye` pueden cambiar de tamaño** durante la animación (las demás van soldadas). Si una pieza tiene que encogerse, latir o cambiar de forma, hazla `Eye` o ponla en un rig propio que la deje anclada y la mueva aparte.
- Cambiar `Transparency` o `Color` de piezas soldadas sí se puede (lo hacen las `Snack` y el núcleo del Krakenoide).
- No llames `Bone` a ninguna pieza del modelo, y no sueldes ni desanclas nada en el constructor: lo hace el rig en el cliente.
- Los `ParticleEmitter`, luces y `Beam` van en piezas normales y siguen al grupo de su pieza.
- La respiración es un pequeño **sube y baja** de todo el cuerpo (antes cada pieza se separaba un poco del centro). No intentes imitar el hinchado pieza a pieza.

**Rig propio con huesos** (mira `Rigs.MechaKrakenoide`):
- En `init`, crea los huesos con `newBone(model, cframe)` y suelda cada pieza con `attach(bone, part)`. Pon cada hueso donde la pieza estaría con el desplazamiento 0: si una pieza va en `hueso * Off`, el hueso es `pieza.CFrame * Off:Inverse()` (con `Off` escalado por `model:GetScale()`).
- En `animate`, mete en la lista de `BulkMoveTo` **solo los huesos** (y las piezas que se queden ancladas a propósito, como los ojos).
- Los cálculos van a escala 1 y relativos a la Root: multiplica las posiciones por `model:GetScale()` (helper `scaled(cf, s)`) antes de mover.

**Distancia y cámara:** `CreatureAnim` solo anima los bichos que están a menos de **120 studs** de la cámara (`MAX_DIST`) **y** dentro de la pantalla (con margen). Entre 60 y 120 studs (`HALF_DIST`) se animan **un frame de cada dos**, cada bicho en un frame distinto para repartir el trabajo. Los demás se quedan quietos en su última pose hasta que vuelven a verse.

**Si el rig vuelve a arrancar** con un modelo que ya tenía huesos, `init` primero borra los huesos viejos y vuelve a anclar las piezas (`resetBones`). Así no quedan piezas soldadas a dos huesos, que hunde los FPS.

**Cómo comprobarlo:** en Play, `/llenar 20` (8 bases × 20 bichos) y mide desde el cliente los FPS (`RenderStepped`) y `Stats.RenderCPUFrameTime` / `RenderGPUFrameTime`. Para comparar con los bichos quietos, pon en el cliente `workspace:SetAttribute("PauseCreatureAnim", true)` (y `nil` para volver). `/llenar 0` los quita. Ojo: si la ventana de Studio no tiene el foco, Studio baja a ~15 FPS con la GPU casi parada; esas medidas no valen, repítelas. Resultados de referencia en `CHANGELOG.md` («Todos los bichos animados con huesos»).

## 4. Partículas y efectos

Según la tabla de su rareza (Común: ninguna; luego cada vez más) y la lista de la ficha. Ponlas en el constructor como `ParticleEmitter`, `PointLight`, `Beam`, `Highlight` (contorno: p. ej. morado en los Mutante) sobre las piezas que toque. Texturas que funcionan:
- `rbxasset://textures/particles/sparkles_main.dds` (brillo/chispas), `rbxasset://textures/particles/fire_main.dds`, `rbxasset://textures/particles/smoke_main.dds`
- Zarpazo: `rbxassetid://8175147837`. Nota musical (con `ColorSequence` arcoíris): `rbxassetid://114416793`. Aros que se expanden: el brillo `rbxassetid://242109931` con `Size` de 0,5 a 3,5 y `Transparency` de 0,4 a 1.
- Hojas de otoño: pétalo `rbxassetid://243344623` teñido de naranja. Signo «?»: `rbxassetid://119971175`. Copo de nieve: `rbxassetid://1190797289`. Pluma: `rbxassetid://242842525`.
- De la Creator Store (ya probadas): corazón `rbxassetid://241778280`, calavera `242223105`, fantasma `242213983`, flor `289092690`, pétalo `243344623`, burbuja `242214111`, estrella `1079347435`, nota musical `114416793`, rayo blanco `243098098`, rayo rojo `567502351`, bola eléctrica `1252044337`, copo/brillo `242109931`.
- Las imágenes de la Creator Store se usan con el id del decal **menos 1, 2 o 3** (pruébalas en un `ImageLabel` antes). Las imágenes subidas hace poco no se pueden cargar por script.

Ritmos orientativos en la tabla de la rareza. Ver `CreatureBuilders.MechaKrakenoide` como ejemplo de 12 efectos.

## 5. Probarlo en el juego

1. En Edit: `workspace:SetAttribute("NoTutorial", true)` (si no, sale el tutorial en cada Play).
2. `start_stop_play` (true). Espera ~8 s.
3. En el chat del juego (`user_keyboard_input`: tecla `Slash`, espera 800-900 ms, `textInput`, `Return`): **`/bicho N base`** y luego **`/abrir`**. A veces el primer comando se pierde: comprueba con un script de servidor que el bicho existe (`CollectionService:GetTagged("BaseCreature")`, atributo `CreatureId`) y si no, repite `/abrir`.
4. Cierra la ventana del diario si tapa (pon `Visible = false` a los `Frame` `Daily` y `Dim` de `PlayerGui.Menus`).
5. Comprueba con un script de cliente que **se mueve** (la posición de la `PrimaryPart` cambia en ~12 s), que **parpadea** (el tamaño de `Eye` baja) y su animación propia; y haz una captura cerca (la cámara Scriptable se reinicia sola, así que pon la cámara y captura en el mismo turno). Mira que el letrero salga con el nombre en el color de su rareza.
6. `get_console_output`: que no haya errores de `CreatureAnim:` ni de scripts.
7. Para Play (`start_stop_play` false) y en Edit quita `NoTutorial` (`workspace:SetAttribute("NoTutorial", nil)`). **El Edit no está disponible mientras hay Play.**

## 6. Registrarlo

- En `docs/BICHOS_DINOSAURIOS.md`, añade el número a «Proceso para hacer un bicho (hechos: ...)».
- Entrada en `CHANGELOG.md` (arriba): «## fecha · tu nombre (Claude) · Bicho N · Nombre hecho a mano» con **Qué** (modelo, colores, piezas, altura, partículas, animación propia), **Dónde** (`CreatureBuilders.X`, `Models.Bichos["N"]`, cambios en `CreatureRigs` si los hay), **Probado** y notas.
- Commit con `Co-Authored-By` y push. Los scripts viven en Studio (Team Create); no copies scripts enteros al repo.
- Avisa al usuario de qué bicho has hecho y pregunta si sigue con el siguiente.

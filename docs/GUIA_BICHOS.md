# Guía para hacer los bichos (para Claude)

Así se han hecho los bichos 1 (Dodo Corriente), 2 (Compi), 3 (Proto Bebé) y 191 (Mecha Krakenoide). Sigue los pasos en este orden, **un bicho cada vez y por orden de la lista** (`BICHOS_DINOSAURIOS.md`). El siguiente es el **5**.

Reglas del repo: haz `git pull` antes de empezar, añade una entrada al principio del `CHANGELOG.md` por cada bicho, haz commit y push (formato en `CLAUDE.md`). Escribe al usuario en español.

---

## 0. Antes de empezar

- **Studio:** llama a `list_roblox_studios` (el `studio_id` cambia en cada sesión). Todo se hace en el sitio «💎ENCUENTRA EL DIAMANTE💎».
- **Lee la ficha del bicho** en `docs/BICHOS_DINOSAURIOS.md` (`grep -n -A4 "^\*\*N\. "`) y la **guía de estilo** del principio del documento: la parte común (studs, Neon solo en lo que brilla, ojos cartoon, Root, animación en reposo y **animación de caminar**), las proporciones (chibi SOLO los Comunes y los bebés) y la fila de su rareza en la tabla «Escalada por rareza» (altura en studs, número de piezas, pose y número/ritmo de partículas).
- **Nunca pongas sonidos** en los bichos (ni aunque la ficha diga «zumbido» o «rugido»: hazlo visual). `Looks.creature` borra cualquier `Sound` por si acaso.

## 1. La imagen de referencia en ChatGPT

1. Abre el **navegador integrado** (herramientas `mcp__Claude_Browser__*`) en `https://chatgpt.com/` con `preview_start` / `navigate`.
2. Si sale la pantalla de iniciar sesión, **pide al usuario que entre él con su cuenta** en ese panel (tú no escribes contraseñas). Espera a que te diga que ya está.
3. Empieza un **chat nuevo** (navega a `https://chatgpt.com/`), haz clic en el cuadro de texto, escribe el prompt de abajo y pulsa Enter.
4. Espera ~40-60 s (varias esperas de 10 s) y haz `screenshot`; luego `zoom` sobre la imagen (parte de arriba y parte de abajo) para ver los detalles.
5. Si ChatGPT dice que **se han agotado las imágenes gratuitas**, avisa al usuario: tiene que esperar o entrar con otra cuenta.

**Prompt (rellena lo que va entre «»; copia modelo, colores y efectos de la ficha):**

> Genera una imagen tipo FICHA DE PERSONAJE para un videojuego de Roblox (estilo cartoon de bloques, como "Roba un huevo"), con fondo de isla Roblox desenfocado y paneles oscuros azul marino con bordes redondeados, todo en español. Bicho: "«Nombre»" («especie»), «N» $/s, rareza «Rareza» (color «color de la rareza»). Distribución: arriba a la izquierda el título "«Nombre»" con "«N» $/s"; en el centro el bicho grande sobre un pedestal «de piedra sencillo / acorde a su tema», con una flecha vertical que indique "«altura de su rareza» studs (altura)"; arriba a la derecha un panel con "«N» $/s", "«Rareza»", "Modelo:" («texto del modelo de la ficha»), "Colores:" («colores de la ficha») y "Partículas («n»):" («lista de la ficha» o "ninguna"). Debajo, una fila con 4 vistas del bicho: Frente, Lado, Espalda y 3/4. Debajo, una fila "Animaciones" con viñetas unidas por flechas: Respira (escala 1 → 1,03 en 2 s), Parpadea (cada 3-5 s), Balancea la cola, «su animación propia de la ficha», Camina («patas alternas / se desliza / vuela», según el bicho). «Si tiene partículas: Debajo, una fila "Partículas" con un icono de cada una y su ritmo.» El bicho debe verse hecho con piezas sencillas (bloques, esferas, cuñas, cilindros) con textura de studs de LEGO, fácil de modelar, «proporciones chibi (cabeza enorme, cuerpo rechoncho, patas cortitas) — SOLO Comunes y bebés — / proporciones de dinosaurio real exageradas en cartoon, más robusto cuanto más rara la rareza». «Sin partículas ni efectos brillantes» (solo si no tiene).

**Fidelidad a la imagen (lo pide el usuario):** para verla grande, busca la imagen con `javascript_tool` (`img` con `naturalWidth > 1000`), dibújala en un `canvas` a pantalla completa recortando zonas (pose principal, vistas, animaciones) y haz `screenshot`. Luego compara capturas del modelo **desde los mismos ángulos que las vistas** (frente, lado, 3/4) y corrige hasta que se parezca: formas (bloques o redondeado), proporciones, número de patas, tamaño de ojos, accesorios.

Mira la imagen y fíjate en: silueta y pose, proporciones, colores exactos, dónde van rayas/manchas, ojos, accesorios, qué hace en cada animación.

## 2. El modelo (en Studio, con código)

Los modelos se construyen con un **módulo constructor** por bicho en `ServerStorage.CreatureBuilders.<NombreSinEspacios>` que usa `ServerStorage.CreatureBuilders.Kit`, y se guardan en `ServerStorage.Models.Bichos["<id>"]`. `Looks.creature` ya usa esa carpeta si el modelo existe (si no, saca un bicho genérico).

### Convenciones
- `Kit.new(id)` devuelve `m, part, count`. El modelo tiene una `Root` invisible en (0,0,0) = **centro de la base, en el suelo**. **El frente del bicho mira a −Z**, +Y arriba. Las patas tocan y = 0.
- `part(nombre, tamaño, CFrame, color, opciones)` crea una pieza anclada sin colisión. Opciones: `studs = true` (textura de studs, para el cuerpo; no en ojos/dientes/garras/Neon), `ellipsoid = true` (esfera deformable con SpecialMesh: cuerpos redondos, ojos que parpadean), `shape = Enum.PartType.Ball/Cylinder` (el cilindro va a lo largo del eje X: gíralo con `CFrame.Angles(0, 0, math.pi/2)` para ponerlo vertical o `CFrame.Angles(0, math.pi/2, 0)` para que vaya hacia delante), `wedge = true` (cuña: dientes, garras, picos; gírala con `CFrame.Angles(math.pi,0,0)` para que apunte abajo o `(0, math.pi, 0)` para que mire al frente), `neon = true`, `metal = true`, `transparency = n`, `parent = otroModelo`, `attr = {...}` (atributos para la animación, ver abajo).
- Al final: `local _, size = m:GetBoundingBox(); m:ScaleTo(«altura» / size.Y)` para dejarlo a la altura de su rareza, y `Kit.finish(m, "Generic")` (o el nombre de su rig propio). Kit lo guarda, le pone la etiqueta `CreatureRig`, el atributo `Rig` y `ModelStreamingMode = Atomic`.
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
- Lo demás respira con el cuerpo (1 → 1,03 en 2 s) y, al caminar, sube/baja y se bambolea.

Atributos del modelo: `HeadPivot`, `TailPivot`, `TailSway` (0,35), `HeadTilt` (0,35; 0 = nada), `StepRate` (10; patas cortas = 12-13), `Waddle` (0,08; gordos 0,14), `Hop` (altura de saltitos nerviosos, p. ej. 0,35; nil = no), `Yawn` (ángulo del bostezo, p. ej. 0,6) + `JawPivot`, `Chew` (ángulo de la mandíbula al masticar, p. ej. 0,35; las piezas con `Role = "Snack"`, como una hojita, solo se ven mientras mastica). Los pivotes se dan en las coordenadas del constructor (antes del `ScaleTo`): el rig ya tiene en cuenta la escala.

**Animación propia de la ficha:** si es tuerce la cabeza / saltitos / bostezo, ya existe (HeadTilt / Hop / Yawn). Si es otra cosa (p. ej. «agita las alas», «golpea el suelo», «ruge»), **añádela al rig Generic** como opción nueva con su atributo (mira cómo están hechos Hop y Yawn en `CreatureRigs`) y documenta el atributo en el comentario de arriba del Generic.

**Caminar según el tipo** (ver la guía común del documento): con patas → `Role = "Leg"`; voladores → `Wing` (ya baten más al caminar); sin patas (serpientes, peces, tentáculos, orugas) → no pongas `Leg`: se desliza solo; si quieres que algo ondule más al moverse, haz un rig propio.

### Rig propio (bichos complicados)
Para cosas que el Generic no hace (tentáculos articulados, piezas que orbitan, rayos entre piezas...), añade en `ReplicatedStorage.CreatureRigs` una tabla `Rigs.MiRig = {init = function(model) ... end, animate = function(model, st, t) ... end}` y pon `Kit.finish(m, "MiRig")`. Mira `Rigs.MechaKrakenoide`: `init` guarda la posición de reposo de cada pieza relativa a la Root dividida por `model:GetScale()`; `animate` calcula los CFrames y los mueve todos con `workspace:BulkMoveTo`. Usa `st.walking` y `st.dt` (los pone CreatureAnim). Los rayos en zigzag y las ondas del Krakenoide están en `CreatureAnim` (bloque «extras of the Mecha Krakenoide»).

## 4. Partículas y efectos

Según la tabla de su rareza (Común: ninguna; luego cada vez más) y la lista de la ficha. Ponlas en el constructor como `ParticleEmitter`, `PointLight`, `Beam`, `Highlight` (contorno: p. ej. morado en los Mutante) sobre las piezas que toque. Texturas que funcionan:
- `rbxasset://textures/particles/sparkles_main.dds` (brillo/chispas), `rbxasset://textures/particles/fire_main.dds`, `rbxasset://textures/particles/smoke_main.dds`
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

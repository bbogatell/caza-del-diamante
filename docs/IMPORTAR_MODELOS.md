# Meter en el juego un modelo .glb con texturas y animación

> Cómo se hicieron las palas 29 y 30 a partir de los `.glb` que hizo otro Claude. Herramientas en `tools/glb/`.

## Por qué Roblox los importa «sin animación y sin texturas»

- **Texturas:** el importador solo aprovecha las **imágenes** de textura. Los materiales que solo son un color (`baseColorFactor`) salen grises, y las extensiones avanzadas de glTF (cristal *transmission/ior/volume*, *iridescence*, *dispersion*, brillo *emissive_strength*) se ignoran. Hay que poner a mano Material (Foil, Glass, Neon…), Color y, en las piezas con imagen, un `SurfaceAppearance.ColorMap` con la imagen subida.
- **Animación:** el importador de Roblox apenas admite animaciones en glTF/GLB (con FBX va mejor) y la descarta («no compatible»). La animación del archivo está bien: se extrae y se reproduce por código.
- **Ojo con los nombres:** si un hueso se llama igual que una malla (p. ej. `Craneo`), el importador lo convierte en un `Motor6D` que mueve esa pieza en vez de un `Bone`. Se puede animar igual (los dos tienen `.Transform`).

## Pasos

1. **Ver qué trae:** `tools/glb/glbinfo.ps1 -Path archivo.glb` (materiales, imágenes, huesos, canales de la animación).
2. **Sacar imágenes y animación:** `tools/glb/glbextract.ps1 -Path archivo.glb -OutDir carpeta` → los `.png` y `anim.json`.
3. **Subir las imágenes:** servirlas con `tools/glb/servedir.ps1 -Dir carpeta` y usar `upload_image` del MCP con `http://localhost:8766/<nombre>.png` (salen a nombre de quien tenga abierto Studio).
4. **Importar el `.glb` en Studio** (Importar 3D) a `ServerStorage` (sale gris y sin animación: normal).
5. **Preparar la pala** como `ReplicatedStorage.Models.Palas.L<n>`: copia sin `InitialPoses`/`AnimSaves`/`AnimationController`, materiales por pieza (las mallas con varios materiales salen partidas: `Craneo`, `Craneo2`… en el orden de los materiales del archivo), `ScaleTo` para que mida ~5,6 studs de la empuñadura a la punta, pieza `Handle` en la mano (justo encima de la empuñadura, su +Y hacia la empuñadura) soldada a `RootPart`.
6. **Animación:** `tools/glb/anim2lua.ps1 -Json anim.json -Out anim.lua -Step 3` (10 fps, sin el hueso `Float`, que haría flotar la pala en la mano). En Studio, con esos datos, se calcula para cada hueso / Motor6D el `Transform` de cada fotograma (compensando el giro del importador, la orientación de reposo de cada hueso y la escala) y se guarda en un ModuleScript `ShovelAnim` dentro de la pala con la etiqueta `ShovelAnim`. `ShovelFx` lo reproduce en bucle.
7. **Efectos:** partículas y luces en las piezas o en los huesos (así siguen la animación); colores animados con la etiqueta `ShovelColor`; efecto al cavar añadiendo la pala a `DIG_FX` en `ShovelFx`.

Datos de la pala 29 ya extraídos en `tools/modelos/L29/` (`animacion_Rey.json` y `.lua`).

## Modelos sin huesos ni texturas (pala 28)

La pala 28 (`tools/modelos/L28/`) llegó como 36 mallas sueltas con un manifest (`PalaGalactica_manifest.json`: centros, ejes y velocidades de cada órbita y puntos para efectos).
- **Texturas:** las genera `tools/modelos/L28/texturas.ps1` (C# dentro de PowerShell; no hace falta Python). IDs subidos en `texturas/IDS.txt`. Se ponen con `SurfaceAppearance` (`AlphaMode = Transparency` en las que llevan transparencia, `EmissiveStrength` + `EmissiveMaskContent` para que brillen).
- **Ejes:** el importador gira el modelo 180° sobre Y, así que un punto o eje `(x, y, z)` del manifest es `(-x, y, -z)` en Studio (y se multiplica por la escala).
- **Agarre:** en la mano, la izquierda queda ~0,68 studs por debajo del `Handle` y la derecha 2,8 studs más arriba (pose de `DigAnim`). Con un mango corto hay que bajar el `Handle` para que la mano derecha no caiga en la hoja.
- **Animación:** sin huesos; cada pieza que se mueve va con un Motor6D al `Handle` con la etiqueta `ShovelOrbit` (ver `docs/ARQUITECTURA.md`).

# Crea el caparazón de la pala 4 en espejo (para la cara de detrás), con Blender en modo consola:
#   blender -b --python espejo_caparazon.py -- PalaCaparazon.glb PalaCaparazon_Espejo.glb
# Refleja las 5 piezas de la cara de delante en el eje de grosor (Z del archivo) por el plano medio del
# reverso, les da la vuelta a las normales y las exporta con el sufijo _Atras.
import bpy, sys
src, dst = sys.argv[sys.argv.index("--") + 1:][:2]
bpy.ops.wm.read_factory_settings(use_empty=True)
bpy.ops.import_scene.gltf(filepath=src)
FRONT = ["Blade_Base", "Blade_ScutesGreen", "Blade_MarginalBrown", "Blade_MarginalTan", "Blade_MarginalOlive"]
under = bpy.data.objects["Blade_Underside"]
# mid-plane of the shell (Blender axes: the file's Z becomes Blender's -Y)
ws = [under.matrix_world @ v.co for v in under.data.vertices]
mid = (min(w.y for w in ws) + max(w.y for w in ws)) / 2
keep = []
for name in FRONT:
    ob = bpy.data.objects[name]
    ob.data = ob.data.copy()
    mw = ob.matrix_world.copy()
    for v in ob.data.vertices:
        w = mw @ v.co
        w.y = 2 * mid - w.y
        v.co = mw.inverted() @ w
    ob.data.flip_normals()
    ob.data.update()
    ob.name = name + "_Atras"
    keep.append(ob)
for ob in list(bpy.data.objects):
    if ob not in keep:
        bpy.data.objects.remove(ob, do_unlink=True)
bpy.ops.export_scene.gltf(filepath=dst, export_format="GLB")
print("OK", [o.name for o in keep], "mid", mid)

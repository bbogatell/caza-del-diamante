# Convierte un .obj con varios objetos en un .glb con una malla por objeto (el importador de Roblox junta
# los objetos de un .obj en una sola pieza). Uso:
#   blender -b --python obj_a_glb.py -- entrada.obj salida.glb
import bpy, sys
src, dst = sys.argv[sys.argv.index("--") + 1:][:2]
bpy.ops.wm.read_factory_settings(use_empty=True)
bpy.ops.wm.obj_import(filepath=src, forward_axis="NEGATIVE_Z", up_axis="Y")
names = [o.name for o in bpy.data.objects if o.type == "MESH"]
bpy.ops.export_scene.gltf(filepath=dst, export_format="GLB", export_yup=True)
print("OK", len(names), names)

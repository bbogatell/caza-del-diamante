# Pala 22: adelgaza la lengua de Mouth_Interior (el tubo que sale de la garganta hacia la punta de la boca), encoge la
# bola de la garganta hacia el fondo de la boca y exporta solo esa pieza a un .glb para reimportarla en Studio. Los
# orificios de la nariz no cambian. Imprime la caja nueva (en el espacio del archivo) para colocarla en Studio.
# Uso: blender -b --python lengua_fina.py -- Pala22_GuardianRex.glb salida.glb [grosor=0.45] [ancho=0.6] [garganta=0.5]
import bpy, bmesh, sys
from mathutils import Vector
args = sys.argv[sys.argv.index("--") + 1:]
src, dst = args[0], args[1]
k_thick = float(args[2]) if len(args) > 2 else 0.45  # vertical (eje Y del archivo)
k_wide = float(args[3]) if len(args) > 3 else 0.6    # de lado a lado (eje Z del archivo)
k_throat = float(args[4]) if len(args) > 4 else 0.5  # tamaño de la bola de la garganta
bpy.ops.wm.read_factory_settings(use_empty=True)
bpy.ops.import_scene.gltf(filepath=src)
o = bpy.data.objects["Mouth_Interior"]
for x in list(bpy.data.objects):
    if x is not o and x.type == "MESH":
        bpy.data.objects.remove(x)
bm = bmesh.new()
bm.from_mesh(o.data)
bmesh.ops.remove_doubles(bm, verts=bm.verts, dist=0.002)
bm.verts.ensure_lookup_table()
# islands
seen, islands = set(), []
for v in bm.verts:
    if v.index in seen:
        continue
    stack, isl = [v], []
    seen.add(v.index)
    while stack:
        a = stack.pop()
        isl.append(a)
        for e in a.link_edges:
            b = e.other_vert(a)
            if b.index not in seen:
                seen.add(b.index)
                stack.append(b)
    islands.append(isl)
mw = o.matrix_world
def file_co(v):  # blender Z-up -> file Y-up
    p = mw @ v.co
    return Vector((p.x, p.z, -p.y))
# the tongue: the island that reaches furthest along +X
tongue = max(islands, key=lambda isl: max(file_co(v).x for v in isl))
pts = [file_co(v) for v in tongue]
xmin, xmax = min(p.x for p in pts), max(p.x for p in pts)
L = xmax - xmin
root = [p for p in pts if p.x < xmin + 0.15 * L]
tip = [p for p in pts if p.x > xmax - 0.15 * L]
A = sum(root, Vector()) / len(root)
B = sum(tip, Vector()) / len(tip)
axis = (B - A).normalized()
up = Vector((0, 1, 0))
side = axis.cross(up).normalized()
up = side.cross(axis).normalized()
inv = mw.inverted()
for v in tongue:
    p = file_co(v)
    t = (p - A).dot(axis)
    c = A + axis * t
    d = p - c
    q = c + up * (d.dot(up) * k_thick) + side * (d.dot(side) * k_wide)
    v.co = inv @ Vector((q.x, -q.z, q.y))
# the throat: the biggest of the other islands. It shrinks towards the back of the mouth (its -X side), at the height
# of the tongue, so the root of the tongue stays inside it
throat = max((isl for isl in islands if isl is not tongue), key=len)
tp = [file_co(v) for v in throat]
anchor = Vector((min(p.x for p in tp), A.y, 0))
for v in throat:
    p = file_co(v)
    q = anchor + (p - anchor) * k_throat
    v.co = inv @ Vector((q.x, -q.z, q.y))
bm.to_mesh(o.data)
bm.free()
o.data.update()
print("LENGUA", len(tongue), "vertices, eje", tuple(round(c, 3) for c in axis))
allp = [file_co(v) for v in o.data.vertices]
lo = Vector((min(p.x for p in allp), min(p.y for p in allp), min(p.z for p in allp)))
hi = Vector((max(p.x for p in allp), max(p.y for p in allp), max(p.z for p in allp)))
print("CAJA centro", tuple(round(c, 4) for c in (lo + hi) / 2), "tamano", tuple(round(c, 4) for c in hi - lo))
for x in bpy.data.objects:
    x.select_set(x is o)
bpy.ops.export_scene.gltf(filepath=dst, export_format="GLB", use_selection=True, export_yup=True)

# Saca de un .blend la animación de un rig R15, fotograma a fotograma, con Blender en modo consola:
#   blender -b archivo.blend --python exportar_cavar.py -- salida.json
# Para cada fotograma guarda la matriz en el mundo de cada hueso R15 (después de IK y restricciones) y,
# aparte, la de reposo. También los objetos que cuelgan de un hueso (p. ej. la pala) y su hueso padre.
import bpy, json, sys

R15 = ["HumanoidRootPart", "LowerTorso", "UpperTorso", "Head",
       "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand",
       "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"]

out_path = sys.argv[sys.argv.index("--") + 1]
scene = bpy.context.scene

def mat(m):
    return [list(r) for r in m]

info = {"scene": {"start": scene.frame_start, "end": scene.frame_end, "fps": scene.render.fps / scene.render.fps_base},
        "objects": [], "actions": []}
for a in bpy.data.actions:
    info["actions"].append({"name": a.name, "range": list(a.frame_range), "users": a.users})

arm = None
for ob in scene.objects:
    entry = {"name": ob.name, "type": ob.type, "parent": ob.parent.name if ob.parent else None,
             "parent_type": ob.parent_type, "parent_bone": ob.parent_bone,
             "action": ob.animation_data.action.name if ob.animation_data and ob.animation_data.action else None}
    info["objects"].append(entry)
    if ob.type == "ARMATURE" and all(n in ob.data.bones for n in ("LowerTorso", "LeftUpperArm")):
        if arm is None or (ob.animation_data and ob.animation_data.action):
            arm = ob

info["armature"] = arm.name if arm else None
if arm:
    act = arm.animation_data.action if arm.animation_data else None
    start, end = (int(act.frame_range[0]), int(act.frame_range[1])) if act else (scene.frame_start, scene.frame_end)
    info["range"] = [start, end]
    info["rest"] = {n: mat(arm.matrix_world @ arm.data.bones[n].matrix_local) for n in R15 if n in arm.data.bones}
    # objects hanging from a bone of the rig (props like the shovel)
    # props: meshes that are not body parts but hang from the rig or from a body part (e.g. "Cube" = shovel)
    props = [ob for ob in scene.objects if ob.type == "MESH" and ob.name not in R15 and ob.parent is not None
             and (ob.parent == arm or ob.parent.name in R15)]
    info["props"] = {ob.name: {"parent": ob.parent.name, "dimensions": list(ob.dimensions),
                               "bbox": [list(c) for c in ob.bound_box]} for ob in props}
    frames = []
    for f in range(start, end + 1):
        scene.frame_set(f)
        bpy.context.view_layer.update()
        fr = {"frame": f, "bones": {}, "props": {}}
        for n in R15:
            pb = arm.pose.bones.get(n)
            if pb:
                fr["bones"][n] = mat(arm.matrix_world @ pb.matrix)
        for ob in props:
            fr["props"][ob.name] = mat(ob.matrix_world)
        frames.append(fr)
    info["frames"] = frames

with open(out_path, "w") as fh:
    json.dump(info, fh)
print("OK", info.get("armature"), info.get("range"), len(info.get("frames", [])))

"""Fossil Machine for «La Caza del Diamante», built from code (no Blender).
Units = studs, Y up, front = +Z. One mesh per material group so Roblox imports one MeshPart per group
(named Purple, Gold, Glass...) and the materials (Neon, Glass...) are set in Studio.
Usage: python build_machine.py <out_dir>"""
import math
import sys
import numpy as np
import trimesh
from trimesh.creation import box, cylinder, icosphere

OUT = sys.argv[1]
groups = {}  # name -> list of meshes
COLORS = {
    "Purple": (122, 60, 196), "PurpleDark": (78, 36, 130), "Gold": (240, 180, 40), "Steel": (150, 150, 160),
    "Base": (60, 60, 68), "Dirt": (110, 70, 40), "Glass": (190, 230, 255), "Screen": (20, 25, 30),
    "Neon": (200, 120, 255), "Black": (25, 25, 28), "Yellow": (250, 200, 30), "Bone": (225, 200, 150),
    "Belt": (45, 45, 50),
}


def add(group, mesh):
    groups.setdefault(group, []).append(mesh)


def bx(group, size, pos, rot=None):
    m = box(extents=size)
    if rot is not None:
        m.apply_transform(rot)
    m.apply_translation(pos)
    add(group, m)
    return m


def cyl(group, r, h, pos, axis="y", sections=24):
    m = cylinder(radius=r, height=h, sections=sections)  # along Z
    if axis == "y":
        m.apply_transform(trimesh.transformations.rotation_matrix(math.pi / 2, [1, 0, 0]))
    elif axis == "x":
        m.apply_transform(trimesh.transformations.rotation_matrix(math.pi / 2, [0, 1, 0]))
    m.apply_translation(pos)
    add(group, m)
    return m


def sph(group, r, pos, scale=(1, 1, 1), sub=2):
    m = icosphere(subdivisions=sub, radius=r)
    m.apply_scale(scale)
    m.apply_translation(pos)
    add(group, m)
    return m


def hull(group, pts):
    m = trimesh.convex.convex_hull(np.array(pts))
    add(group, m)
    return m


def tube(group, path, radii, sides=10):
    """sweep a circle along a polyline (radius per point)"""
    path = np.array(path, float)
    verts, faces = [], []
    n = len(path)
    for i in range(n):
        t = path[min(i + 1, n - 1)] - path[max(i - 1, 0)]
        t /= np.linalg.norm(t)
        a = np.array([0, 1, 0]) if abs(t[1]) < 0.9 else np.array([1, 0, 0])
        u = np.cross(t, a); u /= np.linalg.norm(u)
        v = np.cross(t, u)
        for k in range(sides):
            ang = 2 * math.pi * k / sides
            verts.append(path[i] + radii[i] * (math.cos(ang) * u + math.sin(ang) * v))
    for i in range(n - 1):
        for k in range(sides):
            a, b = i * sides + k, i * sides + (k + 1) % sides
            c, d = a + sides, b + sides
            faces += [[a, c, b], [b, c, d]]
    # caps
    for end, flip in ((0, True), (n - 1, False)):
        center = len(verts)
        verts.append(path[end])
        for k in range(sides):
            a, b = end * sides + k, end * sides + (k + 1) % sides
            faces.append([center, b, a] if flip else [center, a, b])
    m = trimesh.Trimesh(np.array(verts), np.array(faces), process=True)
    m.fix_normals()
    add(group, m)
    return m


def gear(group, r, thick, pos, teeth=10, axis="z"):
    parts = [cylinder(radius=r, height=thick, sections=20)]
    for k in range(teeth):
        ang = 2 * math.pi * k / teeth
        t = box(extents=(r * 0.42, r * 0.42, thick))
        t.apply_transform(trimesh.transformations.rotation_matrix(ang, [0, 0, 1]))
        t.apply_translation((math.cos(ang) * r, math.sin(ang) * r, 0))
        parts.append(t)
    hub = cylinder(radius=r * 0.3, height=thick * 1.6, sections=16)
    parts.append(hub)
    m = trimesh.util.concatenate(parts)
    m.apply_translation(pos)
    add(group, m)


def ammonite(group, center, size, normal="z", turns=2.6):
    pts, rad = [], []
    steps = 46
    thmax = turns * 2 * math.pi
    for i in range(steps):
        th = turns * 2 * math.pi * i / (steps - 1)
        rr = size * 0.55 * math.exp(0.3 * (th - thmax))  # outer whorl ~ size / 2
        pts.append((math.cos(th) * rr, math.sin(th) * rr, 0))
        rad.append(rr * 0.45 + size * 0.015)
    pts = np.array(pts)
    
    tmp = []
    tube_m = tube("__tmp", pts, rad)
    groups["__tmp"].remove(tube_m)
    # ribs
    rib_parts = [tube_m]
    for i in range(6, steps, 4):
        th = turns * 2 * math.pi * i / (steps - 1)
        rib = trimesh.creation.torus(major_radius=rad[i] * 1.0, minor_radius=rad[i] * 0.12, major_sections=14, minor_sections=6) if hasattr(trimesh.creation, "torus") else None
        if rib is not None:
            rib.apply_transform(trimesh.transformations.rotation_matrix(math.pi / 2, [1, 0, 0]))
            rib.apply_transform(trimesh.transformations.rotation_matrix(th + math.pi / 2, [0, 0, 1]))
            rib.apply_translation(pts[i])
            rib_parts.append(rib)
    m = trimesh.util.concatenate(rib_parts)
    if normal == "y":
        m.apply_transform(trimesh.transformations.rotation_matrix(-math.pi / 2, [1, 0, 0]))
    m.apply_translation(center)
    add(group, m)


def skull(group, center, s, yaw=0.0):
    parts = []
    head = icosphere(subdivisions=2, radius=s); head.apply_scale((1.0, 0.8, 0.9)); parts.append(head)
    snout = box(extents=(s * 1.6, s * 0.7, s * 0.9)); snout.apply_translation((s * 1.2, -s * 0.15, 0)); parts.append(snout)
    jaw = box(extents=(s * 1.5, s * 0.25, s * 0.75)); jaw.apply_translation((s * 1.1, -s * 0.65, 0)); parts.append(jaw)
    for z in (-0.35, 0.35):
        horn = trimesh.creation.cone(radius=s * 0.18, height=s * 0.8)
        horn.apply_transform(trimesh.transformations.rotation_matrix(-0.5, [0, 0, 1]))
        horn.apply_translation((-s * 0.2, s * 0.7, z * s)); parts.append(horn)
    for k in range(5):  # teeth
        t = box(extents=(s * 0.12, s * 0.25, s * 0.12)); t.apply_translation((s * (0.6 + k * 0.3), -s * 0.45, s * 0.38)); parts.append(t)
    m = trimesh.util.concatenate(parts)
    m.apply_transform(trimesh.transformations.rotation_matrix(yaw, [0, 1, 0]))
    m.apply_translation(center)
    add(group, m)


def bone(group, a, b, r):
    a, b = np.array(a, float), np.array(b, float)
    tube(group, [a, (a + b) / 2, b], [r, r * 0.8, r])
    for p in (a, b):
        for off in (-1, 1):
            d = (b - a) / np.linalg.norm(b - a)
            side = np.cross(d, [0, 1, 0]); side = side / (np.linalg.norm(side) + 1e-9)
            sph(group, r * 1.25, p + side * off * r * 0.9, sub=2)


# ===================== the machine =====================
# base plinth with hazard stripes
bx("Base", (18, 1.2, 15), (0, 0.6, 0))
bx("Gold", (18.3, 0.25, 15.3), (0, 1.25, 0))
for i in range(18):  # hazard band on the front and sides of the plinth
    x = -8.5 + i
    bx("Yellow" if i % 2 == 0 else "Black", (1.0, 0.7, 0.1), (x, 0.6, 7.55), trimesh.transformations.shear_matrix(0.0, [1, 0, 0], [0, 0, 0], [0, 1, 0]) if False else None)
for i in range(15):
    z = -7 + i
    for sx in (-1, 1):
        bx("Yellow" if i % 2 == 0 else "Black", (0.1, 0.7, 1.0), (sx * 9.05, 0.6, z))

# main body (stepped)
bx("Purple", (15, 6.6, 11), (0, 1.4 + 3.3, -0.5))
bx("PurpleDark", (15.4, 0.5, 11.4), (0, 1.6, -0.5))
bx("Gold", (15.6, 0.5, 11.6), (0, 8.0, -0.5))
bx("Purple", (14.6, 0.6, 10.6), (0, 8.55, -0.5))
for sx in (-1, 1):
    for sz in (-1, 1):
        bx("Gold", (0.6, 6.6, 0.6), (sx * 7.5, 4.7, -0.5 + sz * 5.5))  # corner posts
# front ledge with hazard panels
bx("Purple", (15, 2.6, 1.6), (0, 2.7, 5.6))
bx("Gold", (15.2, 0.3, 1.8), (0, 4.05, 5.6))
for sx in (-1, 1):
    for i in range(6):
        bx("Yellow" if i % 2 == 0 else "Black", (0.55, 1.8, 0.08), (sx * 5.1 + (i - 2.5) * 0.55, 2.6, 6.45))
# small panel blocks on the body (studded feel)
for sx, sy in ((-6, 6.8), (6, 6.8), (-6, 5.2), (6, 5.2)):
    bx("PurpleDark", (2.2, 1.2, 0.3), (sx, sy, 5.1))

# output tunnel + conveyor tray with an ammonite
bx("Black", (5.4, 3.0, 1.0), (0, 2.9, 5.95))
bx("Gold", (6.2, 0.4, 1.2), (0, 4.6, 6.0))
for sx in (-1, 1):
    bx("Gold", (0.4, 3.2, 1.2), (sx * 2.9, 2.9, 6.0))
bx("Gold", (6.4, 0.6, 5.6), (0, 1.6, 8.6))
bx("Belt", (5.4, 0.35, 5.2), (0, 2.0, 8.6))
for i in range(9):
    bx("Black", (5.3, 0.12, 0.18), (0, 2.22, 6.4 + i * 0.55))
for sx in (-1, 1):
    bx("Gold", (0.35, 0.7, 5.6), (sx * 3.05, 2.2, 8.6))
ammonite("Bone", (0, 3.75, 9.3), 3.4, normal="z")

# screen TIERRA -> FÓSIL (text added in Studio over the Screen part)
bx("Gold", (5.6, 3.6, 0.5), (0.3, 6.1, 5.2))
bx("Screen", (4.8, 2.8, 0.12), (0.3, 6.1, 5.48))

# vents on the right of the screen
bx("Gold", (2.4, 2.6, 0.4), (4.7, 6.1, 5.15))
for i in range(4):
    bx("Black", (1.9, 0.28, 0.1), (4.7, 5.3 + i * 0.52, 5.38))

# lever on the right side
bx("PurpleDark", (1.0, 2.4, 2.2), (7.9, 6.2, 2.5))
bx("Gold", (1.2, 0.4, 2.4), (7.95, 7.5, 2.5))
lever = cylinder(radius=0.2, height=3.2, sections=12)
lever.apply_transform(trimesh.transformations.rotation_matrix(math.pi / 2, [1, 0, 0]))
lever.apply_transform(trimesh.transformations.rotation_matrix(0.35, [1, 0, 0]))
lever.apply_translation((8.3, 8.6, 2.9))
add("Steel", lever)
sph("Purple", 0.65, (8.3, 10.15, 3.45))

# hopper tower (left) with dirt
bx("Purple", (5.2, 3.2, 5.2), (-4.4, 10.4, -1.5))
bx("Gold", (5.6, 0.4, 5.6), (-4.4, 12.1, -1.5))
lo, hi = 2.6, 3.8
cx, cz = -4.4, -1.5
hull("Purple", [(cx + sx * lo, 12.3, cz + sz * lo) for sx in (-1, 1) for sz in (-1, 1)] + [(cx + sx * hi, 15.0, cz + sz * hi) for sx in (-1, 1) for sz in (-1, 1)])
for sx in (-1, 1):  # gold rim
    bx("Gold", (0.5, 0.6, 2 * hi + 0.5), (cx + sx * hi, 15.15, cz))
    bx("Gold", (2 * hi + 0.5, 0.6, 0.5), (cx, 15.15, cz + sx * hi))
bx("Dirt", (2 * hi - 0.3, 0.5, 2 * hi - 0.3), (cx, 15.0, cz))
rng = np.random.default_rng(3)
for _ in range(24):
    p = (cx + rng.uniform(-3, 3), 15.25 + rng.uniform(0, 0.5), cz + rng.uniform(-3, 3))
    sph("Dirt", rng.uniform(0.35, 0.8), p, scale=(1, 0.6, 1), sub=1)
bx("Gold", (1.8, 1.8, 0.25), (cx, 13.6, cz + 3.25), trimesh.transformations.rotation_matrix(-0.42, [1, 0, 0]))
bx("Black", (1.2, 1.2, 0.1), (cx, 13.63, cz + 3.4), trimesh.transformations.rotation_matrix(-0.42, [1, 0, 0]))

# pipe down the left side + couplings
pipe = [(-6.8, 11.0, -1.5), (-8.0, 11.0, -1.5), (-8.6, 10.6, -1.5), (-8.8, 9.8, -1.5), (-8.8, 4.0, -1.5), (-8.6, 3.2, -1.5), (-8.0, 2.8, -1.5), (-7.2, 2.8, -1.5)]
tube("Purple", pipe, [0.75] * len(pipe))
for p in ((-8.8, 9.0, -1.5), (-8.8, 5.0, -1.5)):
    cyl("Gold", 0.95, 0.5, p)
cyl("Gold", 0.95, 0.5, (-7.4, 11.0, -1.5), axis="x")

# gears on the front left
gear("Gold", 1.6, 0.5, (-5.6, 6.2, 5.3), teeth=11)
gear("Steel", 1.0, 0.45, (-3.2, 5.4, 5.35), teeth=8)

# dome (right): gold base, purple band with neon lights, gold ring, glass dome, knob
dx, dz = 3.6, -1.0
cyl("Gold", 3.9, 0.8, (dx, 9.25, dz), sections=36)
cyl("Purple", 3.6, 1.3, (dx, 10.3, dz), sections=36)
for k in range(8):
    ang = 2 * math.pi * k / 8
    bx("Neon", (0.9, 0.35, 0.2), (dx + math.cos(ang) * 3.62, 10.3, dz + math.sin(ang) * 3.62), trimesh.transformations.rotation_matrix(-ang + math.pi / 2, [0, 1, 0]))
cyl("Gold", 3.85, 0.45, (dx, 11.15, dz), sections=36)
dome = icosphere(subdivisions=3, radius=3.4)
dome = dome.slice_plane([0, 0, 0], [0, 1, 0], cap=True)
dome.apply_translation((dx, 11.35, dz))
add("Glass", dome)
cyl("Gold", 0.45, 0.6, (dx, 14.9, dz))
sph("Gold", 0.5, (dx, 15.4, dz))
# fossils inside the dome
cyl("PurpleDark", 3.2, 0.3, (dx, 11.45, dz), sections=40)
skull("Bone", (dx - 1.0, 12.9, dz + 0.5), 0.95, yaw=0.3)
skull("Bone", (dx + 1.1, 13.1, dz - 0.7), 1.0, yaw=2.6)
ammonite("Bone", (dx + 0.6, 12.8, dz + 1.6), 1.7, normal="z")
ammonite("Bone", (dx - 1.5, 12.6, dz - 1.4), 1.4, normal="z")
bone("Bone", (dx - 1.5, 11.9, dz + 1.6), (dx + 1.0, 11.9, dz + 2.3), 0.16)
bone("Bone", (dx + 0.2, 11.9, dz - 2.0), (dx + 2.2, 11.9, dz - 0.6), 0.16)

# ===================== export =====================
groups.pop("__tmp", None)
scene = trimesh.Scene()
merged = {}
for name, ms in groups.items():
    m = trimesh.util.concatenate(ms)
    c = COLORS[name]
    m.visual = trimesh.visual.ColorVisuals(m, face_colors=np.tile([c[0], c[1], c[2], 255], (len(m.faces), 1)))
    mat = trimesh.visual.material.PBRMaterial(name=name, baseColorFactor=[c[0] / 255, c[1] / 255, c[2] / 255, 1.0], metallicFactor=0.0, roughnessFactor=0.8)
    m.visual = trimesh.visual.TextureVisuals(material=mat)
    merged[name] = m
    scene.add_geometry(m, node_name=name, geom_name=name)
scene.export(f"{OUT}/MaquinaFosiles.glb")
scene.export(f"{OUT}/MaquinaFosiles.obj")
total = sum(len(m.faces) for m in merged.values())
lo_, hi_ = scene.bounds
print("groups", len(merged), "tris", total, "bounds", np.round(lo_, 2), np.round(hi_, 2))

# ===================== preview renders (own z-buffer rasterizer) =====================
from PIL import Image
print({n: len(m.faces) for n, m in merged.items()})


def render(path, yaw_deg, pitch_deg, W=900, H=900):
    yaw, pitch = math.radians(yaw_deg), math.radians(pitch_deg)
    center = np.array([0, 7.5, 1.5])
    fwd = np.array([math.sin(yaw) * math.cos(pitch), -math.sin(pitch), -math.cos(yaw) * math.cos(pitch)])
    eye = center - fwd * 40
    right = np.cross(fwd, [0, 1, 0]); right /= np.linalg.norm(right)
    up = np.cross(right, fwd)
    zbuf = np.full((H, W), np.inf)
    img = np.zeros((H, W, 3)); img[:] = (0.86, 0.87, 0.9)
    light = np.array([0.45, 0.8, 0.5]); light /= np.linalg.norm(light)
    f = 1.9
    order = sorted(merged.items(), key=lambda kv: kv[0] == "Glass")  # glass last (blended)
    for name, m in order:
        V = m.vertices - eye
        cx_, cy_, cz_ = V @ right, V @ up, V @ fwd
        sx = W / 2 + f * W / 2 * cx_ / cz_
        sy = H / 2 - f * W / 2 * cy_ / cz_
        base = np.array(COLORS[name]) / 255
        n = m.face_normals
        shade = 0.4 + 0.6 * np.clip(n @ light, 0, 1)
        glass = name == "Glass"
        for t, (a, b, c) in enumerate(m.faces):
            if glass and n[t] @ fwd > 0:
                continue
            xs = np.array([sx[a], sx[b], sx[c]]); ys = np.array([sy[a], sy[b], sy[c]]); zs = np.array([cz_[a], cz_[b], cz_[c]])
            x0, x1 = max(int(xs.min()), 0), min(int(xs.max()) + 1, W - 1)
            y0, y1 = max(int(ys.min()), 0), min(int(ys.max()) + 1, H - 1)
            if x0 > x1 or y0 > y1:
                continue
            den = (ys[1] - ys[2]) * (xs[0] - xs[2]) + (xs[2] - xs[1]) * (ys[0] - ys[2])
            if abs(den) < 1e-9:
                continue
            X, Y = np.meshgrid(np.arange(x0, x1 + 1) + 0.5, np.arange(y0, y1 + 1) + 0.5)
            w0 = ((ys[1] - ys[2]) * (X - xs[2]) + (xs[2] - xs[1]) * (Y - ys[2])) / den
            w1 = ((ys[2] - ys[0]) * (X - xs[2]) + (xs[0] - xs[2]) * (Y - ys[2])) / den
            w2 = 1 - w0 - w1
            inside = (w0 >= 0) & (w1 >= 0) & (w2 >= 0)
            if not inside.any():
                continue
            Z = w0 * zs[0] + w1 * zs[1] + w2 * zs[2]
            sub = zbuf[y0:y1 + 1, x0:x1 + 1]
            mask = inside & (Z < sub)
            col = base * shade[t]
            if glass:
                img[y0:y1 + 1, x0:x1 + 1][mask] = img[y0:y1 + 1, x0:x1 + 1][mask] * 0.75 + np.array([0.85, 0.95, 1.0]) * 0.25
            else:
                sub[mask] = Z[mask]
                img[y0:y1 + 1, x0:x1 + 1][mask] = col
    Image.fromarray((np.clip(img, 0, 1) * 255).astype(np.uint8)).save(path)


render(f"{OUT}/preview_front.png", -35, 18)
render(f"{OUT}/preview_side.png", 50, 22)
print("done")

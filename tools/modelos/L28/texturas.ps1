# Genera las texturas de la pala 28 (Pala Galactica) de forma procedural.
# Uso: .\texturas.ps1 -OutDir carpeta   (por defecto, la carpeta "texturas" junto a este script)
param([string]$OutDir = (Join-Path $PSScriptRoot "texturas"))
New-Item -ItemType Directory -Force $OutDir | Out-Null
Add-Type -ReferencedAssemblies System.Drawing -TypeDefinition @'
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

public static class Tex {
    // ---------- helpers ----------
    static double Clamp(double x, double a, double b) { return x < a ? a : (x > b ? b : x); }
    static double Smooth(double e0, double e1, double x) { double t = Clamp((x - e0) / (e1 - e0), 0, 1); return t * t * (3 - 2 * t); }
    static double[] Hex(string h) { int v = Convert.ToInt32(h.TrimStart('#'), 16); return new double[] { ((v >> 16) & 255) / 255.0, ((v >> 8) & 255) / 255.0, (v & 255) / 255.0 }; }
    static double[] Mix(double[] a, double[] b, double t) { t = Clamp(t, 0, 1); return new double[] { a[0] + (b[0] - a[0]) * t, a[1] + (b[1] - a[1]) * t, a[2] + (b[2] - a[2]) * t }; }
    static double[] Add(double[] a, double[] b, double k) { return new double[] { a[0] + b[0] * k, a[1] + b[1] * k, a[2] + b[2] * k }; }
    static double[] Mul(double[] a, double k) { return new double[] { a[0] * k, a[1] * k, a[2] * k }; }

    static uint Hash(int x, int y, int s) { unchecked { uint h = (uint)(x * 374761393 + y * 668265263 + s * 2147483647); h = (h ^ (h >> 13)) * 1274126177; return h ^ (h >> 16); } }
    static double Rnd(int x, int y, int s) { return (Hash(x, y, s) & 0xFFFFFF) / (double)0xFFFFFF; }
    static int Mod(int a, int m) { int r = a % m; return r < 0 ? r + m : r; }
    // value noise, periodic with period px (x) and py (y) in lattice cells (0 = not periodic)
    static double VNoise(double x, double y, int px, int py, int seed) {
        int xi = (int)Math.Floor(x), yi = (int)Math.Floor(y);
        double fx = x - xi, fy = y - yi;
        fx = fx * fx * (3 - 2 * fx); fy = fy * fy * (3 - 2 * fy);
        int x0 = px > 0 ? Mod(xi, px) : xi, x1 = px > 0 ? Mod(xi + 1, px) : xi + 1;
        int y0 = py > 0 ? Mod(yi, py) : yi, y1 = py > 0 ? Mod(yi + 1, py) : yi + 1;
        double a = Rnd(x0, y0, seed), b = Rnd(x1, y0, seed), c = Rnd(x0, y1, seed), d = Rnd(x1, y1, seed);
        return (a + (b - a) * fx) + ((c + (d - c) * fx) - (a + (b - a) * fx)) * fy;
    }
    // fbm on [0,1)^2 coordinates, periodic in u (and v if tileV)
    static double Fbm(double u, double v, int baseFreq, int oct, bool tileU, bool tileV, int seed) {
        double sum = 0, amp = 0.5, norm = 0; int f = baseFreq;
        for (int i = 0; i < oct; i++) {
            sum += amp * VNoise(u * f, v * f, tileU ? f : 0, tileV ? f : 0, seed + i * 31);
            norm += amp; amp *= 0.5; f *= 2;
        }
        return sum / norm;
    }

    static void Save(double[][] rgb, double[] alpha, int w, int h, string path) {
        var bmp = new Bitmap(w, h, PixelFormat.Format32bppArgb);
        var data = bmp.LockBits(new Rectangle(0, 0, w, h), ImageLockMode.WriteOnly, PixelFormat.Format32bppArgb);
        var buf = new byte[w * h * 4];
        for (int i = 0; i < w * h; i++) {
            double[] c = rgb[i];
            buf[i * 4 + 0] = (byte)(Clamp(c[2], 0, 1) * 255);
            buf[i * 4 + 1] = (byte)(Clamp(c[1], 0, 1) * 255);
            buf[i * 4 + 2] = (byte)(Clamp(c[0], 0, 1) * 255);
            buf[i * 4 + 3] = (byte)(Clamp(alpha == null ? 1 : alpha[i], 0, 1) * 255);
        }
        Marshal.Copy(buf, 0, data.Scan0, buf.Length);
        bmp.UnlockBits(data);
        bmp.Save(path, ImageFormat.Png);
        bmp.Dispose();
    }

    // sprinkle stars (into rgb); mask(u,v) says where they may go
    static void Stars(double[][] rgb, int w, int h, int count, int seed, double maxR, Func<double, double, bool> mask) {
        var r = new Random(seed);
        double[][] tints = { Hex("#FFFFFF"), Hex("#FFF6E0"), Hex("#9FD4FF"), Hex("#FFB8F0") };
        for (int s = 0; s < count; s++) {
            double cx = r.NextDouble() * w, cy = r.NextDouble() * h;
            if (!mask(cx / w, cy / h)) continue;
            double rad = 0.6 + Math.Pow(r.NextDouble(), 4) * maxR;
            double[] tint = tints[r.Next(tints.Length)];
            double bright = 0.5 + r.NextDouble() * 0.6;
            int ri = (int)Math.Ceiling(rad * 3);
            for (int dy = -ri; dy <= ri; dy++) for (int dx = -ri; dx <= ri; dx++) {
                int x = Mod((int)cx + dx, w), y = (int)cy + dy;
                if (y < 0 || y >= h) continue;
                double d2 = (dx * dx + dy * dy) / (rad * rad);
                double k = Math.Exp(-d2 * 1.5) * bright;
                // little cross flare on the big ones
                if (rad > 2.2 && (dx == 0 || dy == 0)) k = Math.Max(k, Math.Exp(-Math.Abs(dx + dy) / (rad * 1.6)) * bright * 0.7);
                rgb[y * w + x] = Add(rgb[y * w + x], tint, k);
            }
        }
    }

    // ---------- galaxy of the blade (planar, centre 0.5,0.5) ----------
    public static void Galaxy(string path, int n) {
        var rgb = new double[n * n][];
        double[] deep = Hex("#140A3A"), purple = Hex("#3A1A8C"), violet = Hex("#7B3FE4"), pink = Hex("#FF4FD8"), blue = Hex("#3FA9FF"), cyan = Hex("#5FF5E0"), core = Hex("#FFF6E0"), gold = Hex("#FFE29A");
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            double u = (x + 0.5) / n, v = (y + 0.5) / n;
            double dx = u - 0.5, dy = v - 0.5;
            double r = Math.Sqrt(dx * dx + dy * dy) / 0.42, th = Math.Atan2(dy, dx);
            double warp = Fbm(u, v, 6, 5, false, false, 11) - 0.5;
            double ph = 2 * th + 5.2 * Math.Log(r + 0.04) + warp * 2.2;
            double arm = Math.Pow(0.5 + 0.5 * Math.Cos(ph), 2.2);
            double arm2 = Math.Pow(0.5 + 0.5 * Math.Cos(ph + Math.PI * 0.55), 6) * 0.45;
            double dust = Fbm(u, v, 14, 4, false, false, 23);
            double[] bg = Mix(deep, purple, 0.55 + 0.6 * (Fbm(u, v, 4, 4, false, false, 5) - 0.5) - 0.25 * r);
            double[] armCol = r < 0.5 ? Mix(pink, violet, r / 0.5) : (r < 0.95 ? Mix(violet, blue, (r - 0.5) / 0.45) : Mix(blue, cyan, (r - 0.95) / 0.4));
            armCol = Mix(armCol, pink, 0.35 * Smooth(0.5, 0.8, dust));
            double fade = 1 - Smooth(0.85, 1.25, r);
            double a = (arm * (0.55 + 0.6 * dust) + arm2) * fade;
            double[] c = Mix(bg, armCol, a * 0.95);
            c = Add(c, pink, 0.25 * Math.Exp(-r * r / 0.18) * (0.6 + dust));
            double coreK = Math.Exp(-r * r / 0.012);
            c = Add(c, gold, 0.6 * Math.Exp(-r * r / 0.05));
            c = Mix(c, core, coreK);
            rgb[y * n + x] = c;
        }
        Stars(rgb, n, n, 2600, 7, 2.8, (uu, vv) => true);
        Save(rgb, null, n, n, path);
    }

    // ---------- spiral overlay with alpha (radial disk, edge = inscribed circle) ----------
    public static void Swirl(string path, int n) {
        var rgb = new double[n * n][]; var al = new double[n * n];
        double[] pink = Hex("#FF4FD8"), cyan = Hex("#5FF5E0"), white = Hex("#FFF6E0"), violet = Hex("#B98CFF");
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            double u = (x + 0.5) / n, v = (y + 0.5) / n;
            double dx = u - 0.5, dy = v - 0.5;
            double r = Math.Sqrt(dx * dx + dy * dy) / 0.5, th = Math.Atan2(dy, dx);
            // noise sampled in polar coords so the pattern keeps the 2-fold symmetry
            double nz = Fbm((th / (2 * Math.PI) + 0.5) * 2 % 1.0, r, 8, 4, true, false, 41) - 0.5;
            double ph = 2 * th + 6.0 * Math.Log(r + 0.05) + nz * 1.6;
            double arm = Math.Pow(0.5 + 0.5 * Math.Cos(ph), 5);
            double thin = Math.Pow(0.5 + 0.5 * Math.Cos(ph * 1.0 + 1.9), 14) * 0.6;
            double fade = Smooth(0.06, 0.22, r) * (1 - Smooth(0.78, 0.98, r));
            double a = Clamp((arm + thin) * fade * (0.75 + 0.6 * nz + 0.25), 0, 1);
            double[] c = Mix(Mix(pink, violet, Smooth(0.3, 0.6, r)), cyan, Smooth(0.55, 0.95, r));
            c = Mix(c, white, Math.Pow(arm, 3) * 0.55);
            rgb[y * n + x] = c; al[y * n + x] = a;
        }
        Save(rgb, al, n, n, path);
    }

    // ---------- nebula of the shaft (tileable both ways) ----------
    public static void Nebula(string path, int n) {
        var rgb = new double[n * n][];
        double[] deep = Hex("#1A0B4A"), violet = Hex("#7B3FE4"), pink = Hex("#FF4FD8"), blue = Hex("#3FA9FF");
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            double u = (x + 0.5) / n, v = (y + 0.5) / n;
            double a = Fbm(u, v, 4, 5, true, true, 3), b = Fbm(u, v, 3, 5, true, true, 17), c2 = Fbm(u, v, 8, 3, true, true, 29);
            double[] c = Mix(deep, violet, Smooth(0.35, 0.7, a));
            c = Mix(c, pink, Smooth(0.55, 0.8, b) * 0.85);
            c = Mix(c, blue, Smooth(0.6, 0.85, c2) * 0.7);
            rgb[y * n + x] = c;
        }
        Stars(rgb, n, n, 500, 13, 2.0, (uu, vv) => true);
        Save(rgb, null, n, n, path);
    }

    // ---------- energy ring band (U along the ring, tileable; V across) ----------
    public static void Energy(string path, string edgeA, string edgeB, int w, int h, int seed) {
        var rgb = new double[w * h][]; var al = new double[w * h];
        double[] ea = Hex(edgeA), eb = Hex(edgeB), white = Hex("#FFFFFF");
        for (int y = 0; y < h; y++) for (int x = 0; x < w; x++) {
            double u = (x + 0.5) / w, v = (y + 0.5) / h;
            double dv = v - 0.5;
            double flow = Fbm(u, v, 6, 4, true, false, seed) - 0.5;
            double core = Math.Exp(-Math.Pow((dv + flow * 0.12) / 0.09, 2));
            double glow = Math.Exp(-Math.Pow((dv + flow * 0.2) / 0.3, 2));
            // bright pulses travelling along the ring (integer frequencies so it tiles)
            double pulse = Math.Pow(0.5 + 0.5 * Math.Cos(2 * Math.PI * (u * 3 + flow * 0.3)), 8);
            double[] edge = Mix(ea, eb, Clamp(v + flow * 0.5, 0, 1));
            double[] c = Mix(edge, white, Clamp(core * (0.8 + 0.4 * pulse), 0, 1));
            rgb[y * w + x] = c;
            al[y * w + x] = Clamp(glow * 0.9 + core * 0.3 + pulse * glow * 0.3, 0, 1) * (1 - Smooth(0.42, 0.5, Math.Abs(dv)));
        }
        Stars(rgb, w, h, 90, seed + 5, 1.6, (uu, vv) => Math.Abs(vv - 0.5) < 0.3);
        Save(rgb, al, w, h, path);
    }

    // ---------- aurora ribbon (U along, V across) ----------
    public static void Aurora(string path, int w, int h) {
        var rgb = new double[w * h][]; var al = new double[w * h];
        double[][] stops = { Hex("#5FF5E0"), Hex("#6CFF9E"), Hex("#FF4FD8"), Hex("#7B3FE4") };
        for (int y = 0; y < h; y++) for (int x = 0; x < w; x++) {
            double u = (x + 0.5) / w, v = (y + 0.5) / h;
            double t = u * 3; int i = Math.Min(2, (int)t);
            double[] c = Mix(stops[i], stops[i + 1], t - i);
            double streak = Fbm(u * 6, v * 0.25, 4, 4, false, false, 61);
            c = Mix(c, Hex("#FFFFFF"), Math.Pow(streak, 3) * 0.5);
            double a = Math.Pow(Math.Sin(Math.PI * v), 1.4) * Math.Pow(Math.Sin(Math.PI * u), 0.6) * (0.45 + 0.7 * streak);
            rgb[y * w + x] = c; al[y * w + x] = Clamp(a, 0, 1);
        }
        Save(rgb, al, w, h, path);
    }

    // ---------- planet ring (U radial, V angle) ----------
    public static void PlanetRing(string path, string colA, string colB, int w, int h) {
        var rgb = new double[w * h][]; var al = new double[w * h];
        double[] a = Hex(colA), b = Hex(colB);
        for (int y = 0; y < h; y++) for (int x = 0; x < w; x++) {
            double u = (x + 0.5) / w, v = (y + 0.5) / h;
            double bands = Fbm(u, 0.5, 24, 3, false, false, 71);
            double gap = Smooth(0.3, 0.55, bands);
            rgb[y * w + x] = Mix(a, b, Fbm(u, v * 0.1, 10, 3, false, false, 73));
            al[y * w + x] = Clamp(gap * (Smooth(0.0, 0.08, u) * (1 - Smooth(0.9, 1.0, u))) * 0.95, 0, 1);
        }
        Save(rgb, al, w, h, path);
    }

    // ---------- halo behind the blade: golden rays + soft rainbow ring (alpha) ----------
    public static void Halo(string path, int n) {
        var rgb = new double[n * n][]; var al = new double[n * n];
        double[] gold = Hex("#FFD86B"), white = Hex("#FFF6E0");
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            double dx = (x + 0.5) / n - 0.5, dy = (y + 0.5) / n - 0.5;
            double r = Math.Sqrt(dx * dx + dy * dy) / 0.5, th = Math.Atan2(dy, dx);
            double rays = Math.Pow(0.5 + 0.5 * Math.Cos(th * 14 + Math.Sin(th * 5) * 0.8), 3) * 0.6 + Math.Pow(0.5 + 0.5 * Math.Cos(th * 7 + 1.3), 5) * 0.4;
            double rayA = rays * Math.Exp(-r * 2.0) * (1 - Smooth(0.8, 1.0, r));
            double ring = Math.Exp(-Math.Pow((r - 0.76) / 0.13, 2));
            double hue = Clamp((r - 0.58) / 0.36, 0, 1);
            double[] rb = HueCol(hue * 0.83);
            double glow = Math.Exp(-r * r / 0.12) * 0.55;
            double[] c = Mix(gold, white, glow);
            c = Mix(c, rb, Clamp(ring * 1.2, 0, 1));
            rgb[y * n + x] = c;
            al[y * n + x] = Clamp(rayA + ring * 0.55 + glow, 0, 1) * (1 - Smooth(0.92, 1.0, r));
        }
        Save(rgb, al, n, n, path);
    }
    static double[] HueCol(double h) {
        double r = Clamp(Math.Abs(h * 6 - 3) - 1, 0, 1), g = Clamp(2 - Math.Abs(h * 6 - 2), 0, 1), b = Clamp(2 - Math.Abs(h * 6 - 4), 0, 1);
        return Mix(new double[] { r, g, b }, new double[] { 1, 1, 1 }, 0.25);
    }

    // ---------- planets (equirectangular, u periodic) ----------
    public static void Planet(string path, string kind, string c1, string c2, string c3, int seed) {
        int w = 512, h = 256;
        var rgb = new double[w * h][];
        double[] a = Hex(c1), b = Hex(c2), c = Hex(c3), white = Hex("#FFFFFF");
        var rnd = new Random(seed);
        double[][] craters = new double[18][];
        for (int i = 0; i < craters.Length; i++) craters[i] = new double[] { rnd.NextDouble(), 0.2 + rnd.NextDouble() * 0.6, 0.02 + rnd.NextDouble() * 0.05 };
        for (int y = 0; y < h; y++) for (int x = 0; x < w; x++) {
            double u = (x + 0.5) / w, v = (y + 0.5) / h;
            double n1 = Fbm(u, v, 6, 5, true, false, seed), n2 = Fbm(u, v, 12, 4, true, false, seed + 9);
            double[] col;
            if (kind == "earth") {
                double land = Smooth(0.5, 0.56, n1);
                col = Mix(Mix(a, Mix(a, white, 0.15), n2), Mix(b, c, Smooth(0.55, 0.75, n2)), land);
                double cloud = Smooth(0.55, 0.75, Fbm(u + 0.3, v, 8, 4, true, false, seed + 50));
                col = Mix(col, white, cloud * 0.75);
                double polar = Smooth(0.86, 0.95, Math.Abs(v - 0.5) * 2);
                col = Mix(col, white, polar);
            } else if (kind == "bands") {
                double band = 0.5 + 0.5 * Math.Sin(v * 26 + (n1 - 0.5) * 4 + Math.Sin(v * 7) * 1.5);
                col = Mix(Mix(a, b, band), c, Smooth(0.6, 0.9, n2) * 0.5);
            } else if (kind == "craters") {
                col = Mix(a, b, n1);
                foreach (var cr in craters) {
                    double du = Math.Abs(u - cr[0]); du = Math.Min(du, 1 - du) * 2; double dv = v - cr[1];
                    double d = Math.Sqrt(du * du + dv * dv) / cr[2];
                    if (d < 1.15) col = Mix(col, d < 0.85 ? Mul(c, 0.8) : Mix(c, white, 0.5), d < 0.85 ? 0.6 : 0.5);
                }
            } else if (kind == "veins") {
                double ridge = 1 - Math.Abs(Fbm(u, v, 5, 5, true, false, seed + 3) - 0.5) * 2;
                col = Mix(Mix(a, b, n1), c, Math.Pow(ridge, 8));
            } else { // clouds
                col = Mix(a, b, n1);
                double cloud = Smooth(0.5, 0.75, Fbm(u + 0.1, v * 1.6, 6, 5, true, false, seed + 20));
                col = Mix(col, Mix(c, white, 0.5), cloud * 0.8);
            }
            rgb[y * w + x] = col;
        }
        Save(rgb, null, w, h, path);
    }
}
'@
$o = $OutDir
[Tex]::Galaxy("$o\galaxia.png", 1024)
[Tex]::Swirl("$o\remolino.png", 1024)
[Tex]::Nebula("$o\nebulosa.png", 512)
[Tex]::Energy("$o\energia_rosa.png", "#FF4FD8", "#C23BFF", 1024, 128, 101)
[Tex]::Energy("$o\energia_violeta.png", "#7B3FE4", "#3FA9FF", 1024, 128, 202)
[Tex]::Energy("$o\energia_oro.png", "#FFC44D", "#5FF5E0", 1024, 128, 303)
[Tex]::Aurora("$o\aurora.png", 1024, 256)
[Tex]::Halo("$o\halo.png", 512)
[Tex]::PlanetRing("$o\anillo_planeta.png", "#FFC44D", "#FFE29A", 256, 64)
[Tex]::Planet("$o\p_tierra.png", "earth", "#1F5FD0", "#3FA35A", "#C9B07A", 1)
[Tex]::Planet("$o\p_magenta.png", "veins", "#B0157E", "#FF4FD8", "#FFD0F4", 2)
[Tex]::Planet("$o\p_saturno_oro.png", "bands", "#E08A2A", "#FFD27A", "#FFF0C8", 3)
[Tex]::Planet("$o\p_saturno_ambar.png", "bands", "#B8561C", "#F2A54A", "#FFE0B0", 4)
[Tex]::Planet("$o\p_violeta.png", "craters", "#4B2A9E", "#8A5BEA", "#2E1770", 5)
[Tex]::Planet("$o\p_rosa.png", "veins", "#C2185B", "#FF7FB0", "#FFE0EC", 6)
[Tex]::Planet("$o\p_rubi.png", "veins", "#8E0E2E", "#E0245E", "#FF9FC0", 7)
[Tex]::Planet("$o\p_zafiro.png", "clouds", "#0F3FA0", "#3FA9FF", "#BFE6FF", 8)
Get-ChildItem $o *.png | Select-Object Name, Length

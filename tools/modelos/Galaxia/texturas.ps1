# Genera la textura de "galaxia" para el terreno de la parcela 14 (MaterialVariant Galaxia sobre Pavement, 25/11):
# fondo azul marino muy oscuro, nubes de nebulosa (morado, magenta, azul y cian) y muchas estrellas, algunas grandes
# con destello en cruz. Mosaico sin costuras (ruido periodico y estrellas que dan la vuelta por los bordes).
# Salida: gal_color.png, gal_normal.png, gal_rough.png, gal_metal.png
param([string]$OutDir = (Join-Path $PSScriptRoot "texturas"), [int]$Size = 1024, [int]$Seed = 5, [double]$Bright = 1.8, [double]$Nebula = 1.0)
# (-Nebula 0 -OutDir ..\Estrellas\texturas = only the starry night, for the top layer of plot 14, 25/11)
New-Item -ItemType Directory -Force $OutDir | Out-Null
Add-Type -ReferencedAssemblies System.Drawing -TypeDefinition @'
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

public static class GalTex {
    static double Clamp(double x, double a, double b) { return x < a ? a : (x > b ? b : x); }
    static double Smooth(double e0, double e1, double x) { double t = Clamp((x - e0) / (e1 - e0), 0, 1); return t * t * (3 - 2 * t); }
    static void Save(double[] r, double[] g, double[] b, int n, string path) {
        var bmp = new Bitmap(n, n, PixelFormat.Format32bppArgb);
        var data = bmp.LockBits(new Rectangle(0, 0, n, n), ImageLockMode.WriteOnly, PixelFormat.Format32bppArgb);
        var buf = new byte[n * n * 4];
        for (int i = 0; i < n * n; i++) {
            buf[i * 4 + 0] = (byte)(Clamp(b[i], 0, 1) * 255);
            buf[i * 4 + 1] = (byte)(Clamp(g[i], 0, 1) * 255);
            buf[i * 4 + 2] = (byte)(Clamp(r[i], 0, 1) * 255);
            buf[i * 4 + 3] = 255;
        }
        Marshal.Copy(buf, 0, data.Scan0, buf.Length);
        bmp.UnlockBits(data);
        bmp.Save(path, ImageFormat.Png);
        bmp.Dispose();
    }
    // periodic value noise (period p cells), smooth
    static double[] lattice;
    static int L = 256;
    static double Lat(int x, int y, int p) { x = ((x % p) + p) % p; y = ((y % p) + p) % p; return lattice[(y * 131 + x * 17 + p * 7) % (L * L)]; }
    static double Noise(double x, double y, int p) {
        int x0 = (int)Math.Floor(x), y0 = (int)Math.Floor(y);
        double fx = x - x0, fy = y - y0;
        fx = fx * fx * (3 - 2 * fx); fy = fy * fy * (3 - 2 * fy);
        double a = Lat(x0, y0, p), b = Lat(x0 + 1, y0, p), c = Lat(x0, y0 + 1, p), d = Lat(x0 + 1, y0 + 1, p);
        return (a * (1 - fx) + b * fx) * (1 - fy) + (c * (1 - fx) + d * fx) * fy;
    }
    // fbm over the whole tile: u, v in 0..1
    static double Fbm(double u, double v, int basePeriod, int oct, double off) {
        double s = 0, amp = 0.5, tot = 0; int p = basePeriod;
        for (int o = 0; o < oct; o++) {
            s += Noise(u * p + off, v * p + off * 0.7, p) * amp; tot += amp;
            amp *= 0.5; p *= 2;
        }
        return s / tot;
    }

    public static void Make(string dir, int n, int seed, double bright, double nebula) {
        var rnd = new Random(seed);
        lattice = new double[L * L];
        for (int i = 0; i < L * L; i++) lattice[i] = rnd.NextDouble();
        var R_ = new double[n * n]; var G_ = new double[n * n]; var B_ = new double[n * n];
        var H = new double[n * n];
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            double u = x / (double)n, v = y / (double)n;
            int i = y * n + x;
            // three nebula layers
            double a = Smooth(0.45, 0.85, Fbm(u, v, 3, 6, 0.0));    // purple / magenta clouds
            double b = Smooth(0.50, 0.90, Fbm(u, v, 4, 6, 37.0));   // blue / cyan clouds
            double c = Smooth(0.60, 0.95, Fbm(u, v, 6, 5, 91.0));   // small bright wisps
            a *= nebula; b *= nebula; c *= nebula;
            // base: deep navy
            double r = 0.03, g = 0.02, bl = 0.10;
            r += a * 0.45; g += a * 0.08; bl += a * 0.55;           // purple
            r += c * 0.35 * a; g += c * 0.05; bl += c * 0.25;        // magenta highlights inside purple
            r += b * 0.05; g += b * 0.25; bl += b * 0.55;           // blue
            g += b * c * 0.30; bl += b * c * 0.20;                  // cyan cores
            R_[i] = r; G_[i] = g; B_[i] = bl;
            H[i] = a * 0.3 + b * 0.3;
        }
        // stars: many tiny, some medium, a few big with a cross glint
        Action<double, double, double, double, double, double, bool> star = (cx, cy, rad, sr, sg, sb, cross) => {
            int r0 = (int)Math.Ceiling(rad * (cross ? 6 : 2.5));
            for (int dy = -r0; dy <= r0; dy++) for (int dx = -r0; dx <= r0; dx++) {
                int x = ((int)cx + dx) % n; if (x < 0) x += n;
                int y = ((int)cy + dy) % n; if (y < 0) y += n;
                double d = Math.Sqrt(dx * dx + dy * dy) / rad;
                double k = Math.Exp(-d * d * 1.5);
                if (cross) {
                    double ax = Math.Abs(dx) / rad, ay = Math.Abs(dy) / rad;
                    k += Math.Exp(-ay * ay * 8) * Math.Exp(-ax * 0.6) * 0.6 + Math.Exp(-ax * ax * 8) * Math.Exp(-ay * 0.6) * 0.6;
                }
                int i = y * n + x;
                R_[i] += sr * k; G_[i] += sg * k; B_[i] += sb * k;
            }
        };
        // (v3, 25/11: 4x the stars, because the tile is now 4x bigger in the world: StudsPerTile 96)
        int tiny = n * n / 300, med = n * n / 3000, big = 40;
        for (int s = 0; s < tiny; s++) { double t = rnd.NextDouble(); star(rnd.NextDouble() * n, rnd.NextDouble() * n, 0.7 + t * 0.5, 0.7 + t * 0.3, 0.75 + t * 0.25, 0.9, false); }
        for (int s = 0; s < med; s++) { double t = rnd.NextDouble(); star(rnd.NextDouble() * n, rnd.NextDouble() * n, 1.4 + t, 0.9, 0.85 + t * 0.15, 1.0, false); }
        for (int s = 0; s < big; s++) { double t = rnd.NextDouble(); star(rnd.NextDouble() * n, rnd.NextDouble() * n, 2.2 + t * 1.5, 1.0, 0.95, 1.0, true); }
        var NX = new double[n * n]; var NY = new double[n * n]; var NZ = new double[n * n];
        var RO = new double[n * n]; var ME = new double[n * n];
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            int i = y * n + x;
            double hl = H[y * n + (x - 1 + n) % n], hr = H[y * n + (x + 1) % n];
            double hu = H[((y - 1 + n) % n) * n + x], hd = H[((y + 1) % n) * n + x];
            double sx = (hr - hl) * 6, sy = (hd - hu) * 6;
            double len = Math.Sqrt(sx * sx + sy * sy + 1);
            NX[i] = 0.5 - sx / len * 0.5; NY[i] = 0.5 + sy / len * 0.5; NZ[i] = 0.5 + 0.5 / len;
            RO[i] = 0.35; ME[i] = 0.0;
        }
        // brighter (the plot is dark: 25/11 v2 x1.8 and a lifted base)
        for (int i = 0; i < n * n; i++) { R_[i] = R_[i] * bright + 0.03; G_[i] = G_[i] * bright + 0.02; B_[i] = B_[i] * bright + 0.06; }
        Save(R_, G_, B_, n, System.IO.Path.Combine(dir, "gal_color.png"));
        Save(NX, NY, NZ, n, System.IO.Path.Combine(dir, "gal_normal.png"));
        Save(RO, RO, RO, n, System.IO.Path.Combine(dir, "gal_rough.png"));
        Save(ME, ME, ME, n, System.IO.Path.Combine(dir, "gal_metal.png"));
    }
}
'@
[GalTex]::Make($OutDir, $Size, $Seed, $Bright, $Nebula)
Get-ChildItem $OutDir | Select-Object Name, Length

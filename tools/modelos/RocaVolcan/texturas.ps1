# Genera la textura de "roca volcanica" para el terreno de la parcela 7 (MaterialVariant RocaVolcan sobre Basalt,
# 25/11). Gris neutro (el color lo pone TERRAIN_COLORS.Basalt): manchas grandes y medianas de distinto tono, grano
# fino y grietas, sin formas que se noten repetidas. Mosaico sin costuras (ruido periodico).
# Salida: roca_color.png, roca_normal.png, roca_rough.png, roca_metal.png
param([string]$OutDir = (Join-Path $PSScriptRoot "texturas"), [int]$Size = 1024, [int]$Seed = 21)
New-Item -ItemType Directory -Force $OutDir | Out-Null
Add-Type -ReferencedAssemblies System.Drawing -TypeDefinition @'
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

public static class RockTex {
    static double Clamp(double x, double a, double b) { return x < a ? a : (x > b ? b : x); }
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
    static double[] lat; static int L = 512;
    static double Lat(int x, int y, int p) { x = ((x % p) + p) % p; y = ((y % p) + p) % p; return lat[((y * 1013 + x * 389 + p * 71) & 0x7fffffff) % (L * L)]; }
    static double Noise(double x, double y, int p) {
        int x0 = (int)Math.Floor(x), y0 = (int)Math.Floor(y);
        double fx = x - x0, fy = y - y0;
        fx = fx * fx * (3 - 2 * fx); fy = fy * fy * (3 - 2 * fy);
        double a = Lat(x0, y0, p), b = Lat(x0 + 1, y0, p), c = Lat(x0, y0 + 1, p), d = Lat(x0 + 1, y0 + 1, p);
        return (a * (1 - fx) + b * fx) * (1 - fy) + (c * (1 - fx) + d * fx) * fy;
    }
    static double Fbm(double u, double v, int p0, int oct, double off) {
        double s = 0, amp = 0.5, tot = 0; int p = p0;
        for (int o = 0; o < oct; o++) { s += Noise(u * p + off, v * p + off * 1.3, p) * amp; tot += amp; amp *= 0.5; p *= 2; }
        return s / tot;
    }
    public static void Make(string dir, int n, int seed) {
        var rnd = new Random(seed);
        lat = new double[L * L];
        for (int i = 0; i < L * L; i++) lat[i] = rnd.NextDouble();
        var H = new double[n * n]; var C = new double[n * n];
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            double u = x / (double)n, v = y / (double)n;
            double big = Fbm(u, v, 2, 3, 0.0);          // very large patches
            double mid = Fbm(u, v, 8, 5, 17.0);         // medium blotches (stone)
            double grain = Fbm(u, v, 64, 3, 53.0);      // fine grain
            double speck = Fbm(u, v, 128, 1, 77.0);     // pores / speckles
            // a few faint cracks
            double rn = Fbm(u, v, 5, 5, 101.0);
            double crack = Math.Exp(-Math.Pow((rn - 0.5) / 0.008, 2));
            int i = y * n + x;
            // (v2: the big dark patches were what showed the repetition: much softer now, more medium/fine detail)
            double mid2 = Fbm(u, v, 13, 4, 151.0);
            double c = 0.78 + (big - 0.5) * 0.14 + (mid - 0.5) * 0.30 + (mid2 - 0.5) * 0.22 + (grain - 0.5) * 0.18
                + (speck - 0.5) * 0.08 - crack * 0.12;
            C[i] = Clamp(c, 0.25, 1.0);
            H[i] = big * 0.4 + mid * 0.35 + grain * 0.25 - crack * 0.3;
        }
        var R = new double[n * n]; var NX = new double[n * n]; var NY = new double[n * n]; var NZ = new double[n * n];
        var RO = new double[n * n]; var ME = new double[n * n];
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            int i = y * n + x;
            double hl = H[y * n + (x - 1 + n) % n], hr = H[y * n + (x + 1) % n];
            double hu = H[((y - 1 + n) % n) * n + x], hd = H[((y + 1) % n) * n + x];
            double sx = (hr - hl) * 18, sy = (hd - hu) * 18;
            double len = Math.Sqrt(sx * sx + sy * sy + 1);
            NX[i] = 0.5 - sx / len * 0.5; NY[i] = 0.5 + sy / len * 0.5; NZ[i] = 0.5 + 0.5 / len;
            RO[i] = 0.85; ME[i] = 0.0;
        }
        Save(C, C, C, n, System.IO.Path.Combine(dir, "roca_color.png"));
        Save(NX, NY, NZ, n, System.IO.Path.Combine(dir, "roca_normal.png"));
        Save(RO, RO, RO, n, System.IO.Path.Combine(dir, "roca_rough.png"));
        Save(ME, ME, ME, n, System.IO.Path.Combine(dir, "roca_metal.png"));
    }
}
'@
[RockTex]::Make($OutDir, $Size, $Seed)
Get-ChildItem $OutDir | Select-Object Name, Length

# Genera las texturas de la Pala Robux (remolino dorado de la hoja), igual que la pala 28 pero en oro.
# Uso: .\texturas.ps1 -OutDir carpeta   (por defecto, la carpeta "texturas" junto a este script)
#  - galaxy_gold.png : fondo fijo del agujero cuadrado de la hoja (nebulosa dorada con nucleo blanco y estrellas)
#  - swirl_disc.png  : remolino de 3 brazos con alfa, en disco (gira encima del fondo, dentro del agujero)
#  - swirl_ring.png  : el mismo remolino, en anillo (gira sobre la cara de la hoja, alrededor del agujero)
param([string]$OutDir = (Join-Path $PSScriptRoot "texturas"))
New-Item -ItemType Directory -Force $OutDir | Out-Null
Add-Type -ReferencedAssemblies System.Drawing -TypeDefinition @'
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

public static class RobuxTex {
    static double Clamp(double x, double a, double b) { return x < a ? a : (x > b ? b : x); }
    static double Smooth(double e0, double e1, double x) { double t = Clamp((x - e0) / (e1 - e0), 0, 1); return t * t * (3 - 2 * t); }
    static double[] Mix(double[] a, double[] b, double t) { t = Clamp(t, 0, 1); return new double[] { a[0] + (b[0] - a[0]) * t, a[1] + (b[1] - a[1]) * t, a[2] + (b[2] - a[2]) * t }; }
    static uint Hash(int x, int y, int s) { unchecked { uint h = (uint)(x * 374761393 + y * 668265263 + s * 2147483647); h = (h ^ (h >> 13)) * 1274126177; return h ^ (h >> 16); } }
    static double Rnd(int x, int y, int s) { return (Hash(x, y, s) & 0xFFFFFF) / (double)0xFFFFFF; }
    static double VNoise(double x, double y, int seed) {
        int xi = (int)Math.Floor(x), yi = (int)Math.Floor(y);
        double fx = x - xi, fy = y - yi;
        fx = fx * fx * (3 - 2 * fx); fy = fy * fy * (3 - 2 * fy);
        double a = Rnd(xi, yi, seed), b = Rnd(xi + 1, yi, seed), c = Rnd(xi, yi + 1, seed), d = Rnd(xi + 1, yi + 1, seed);
        return (a + (b - a) * fx) + ((c + (d - c) * fx) - (a + (b - a) * fx)) * fy;
    }
    static double Fbm(double x, double y, int oct, int seed) {
        double s = 0, amp = 0.5, n = 0, f = 1;
        for (int i = 0; i < oct; i++) { s += amp * VNoise(x * f, y * f, seed + i * 31); n += amp; amp *= 0.5; f *= 2; }
        return s / n;
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

    static readonly double[] DEEP = { 0.22, 0.10, 0.02 };   // ambar oscuro
    static readonly double[] GOLD = { 1.00, 0.77, 0.30 };   // #FFC44D
    static readonly double[] PALE = { 1.00, 0.89, 0.60 };   // #FFE29A
    static readonly double[] WHITE = { 1.00, 0.97, 0.88 };  // #FFF6E0

    // nebulosa dorada que llena el cuadrado (fondo fijo)
    public static void Galaxy(string path, int n) {
        var rgb = new double[n * n][];
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            double u = (x + 0.5) / n * 2 - 1, v = (y + 0.5) / n * 2 - 1;
            double r = Math.Sqrt(u * u + v * v), th = Math.Atan2(v, u);
            double neb = Fbm(u * 3 + 10, v * 3 + 10, 5, 7);
            double arms = Math.Pow(0.5 + 0.5 * Math.Cos(th * 2 - 5 * Math.Log(r + 0.05) + neb * 2), 3) * Smooth(1.3, 0.1, r);
            double[] c = Mix(DEEP, GOLD, 0.35 * neb + 0.55 * arms);
            c = Mix(c, PALE, arms * 0.5);
            double core = Math.Exp(-r * r * 9);
            c = Mix(c, WHITE, core);
            // estrellas
            int cx = x / 6, cy = y / 6;
            if (Rnd(cx, cy, 99) > 0.93) {
                double sx = (cx + Rnd(cx, cy, 5)) * 6, sy = (cy + Rnd(cx, cy, 6)) * 6;
                double d = Math.Sqrt((x - sx) * (x - sx) + (y - sy) * (y - sy));
                c = Mix(c, WHITE, Smooth(2.2, 0.3, d));
            }
            rgb[y * n + x] = c;
        }
        Save(rgb, null, n, n, path);
    }

    // remolino de 3 brazos con alfa; rIn = radio (0..1) por dentro del cual es transparente
    public static void Swirl(string path, int n, double rIn) {
        var rgb = new double[n * n][]; var a = new double[n * n];
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            double u = (x + 0.5) / n * 2 - 1, v = (y + 0.5) / n * 2 - 1;
            double r = Math.Sqrt(u * u + v * v), th = Math.Atan2(v, u);
            double phase = th * 3 - 6.5 * Math.Log(r + 0.04);
            double arm = Math.Pow(0.5 + 0.5 * Math.Cos(phase), 5);
            double thin = Math.Pow(0.5 + 0.5 * Math.Cos(phase * 2 + 1.3), 12) * 0.5;   // brazos finos entre los gordos
            double dust = Fbm(r * 6 + 3, th * 2 + 7, 4, 11);
            double k = Clamp(arm + thin, 0, 1) * (0.7 + 0.6 * dust);
            double win = Smooth(1.0, 0.86, r) * (rIn > 0 ? Smooth(rIn, rIn + 0.1, r) : Smooth(0.0, 0.18, r) * 0.6 + 0.4);
            double[] c = Mix(GOLD, WHITE, k * 0.9);
            // chispas sobre los brazos
            int cx = x / 5, cy = y / 5;
            double spark = 0;
            if (Rnd(cx, cy, 44) > 0.90) {
                double sx = (cx + Rnd(cx, cy, 1)) * 5, sy = (cy + Rnd(cx, cy, 2)) * 5;
                double d = Math.Sqrt((x - sx) * (x - sx) + (y - sy) * (y - sy));
                spark = Smooth(1.8, 0.2, d) * arm;
            }
            c = Mix(c, WHITE, spark);
            rgb[y * n + x] = c;
            a[y * n + x] = Clamp((k * 0.95 + spark) * win, 0, 1);
        }
        Save(rgb, a, n, n, path);
    }

    // destello: estrella de 4 puntas (larga en horizontal y vertical, corta en diagonal) con halo
    public static void Glint(string path, int n) {
        var rgb = new double[n * n][]; var a = new double[n * n];
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            double u = (x + 0.5) / n * 2 - 1, v = (y + 0.5) / n * 2 - 1;
            double r = Math.Sqrt(u * u + v * v);
            double ax = Math.Exp(-Math.Abs(v) * 60) * Math.Pow(Clamp(1 - Math.Abs(u), 0, 1), 2.2);
            double ay = Math.Exp(-Math.Abs(u) * 60) * Math.Pow(Clamp(1 - Math.Abs(v), 0, 1), 2.2);
            double du = (u + v) / Math.Sqrt(2), dv = (u - v) / Math.Sqrt(2);
            double d1 = Math.Exp(-Math.Abs(dv) * 70) * Math.Pow(Clamp(1 - Math.Abs(du) * 1.8, 0, 1), 2);
            double d2 = Math.Exp(-Math.Abs(du) * 70) * Math.Pow(Clamp(1 - Math.Abs(dv) * 1.8, 0, 1), 2);
            double core = Math.Exp(-r * r * 60);
            double halo = Math.Exp(-r * r * 9) * 0.45;
            double k = Clamp(ax + ay + 0.6 * (d1 + d2) + core + halo, 0, 1);
            rgb[y * n + x] = Mix(GOLD, WHITE, Clamp(core * 1.5 + (ax + ay) * 0.6, 0, 1));
            a[y * n + x] = k * Smooth(1.0, 0.9, r);
        }
        Save(rgb, a, n, n, path);
    }
}
'@
[RobuxTex]::Galaxy((Join-Path $OutDir "galaxy_gold.png"), 512)
[RobuxTex]::Swirl((Join-Path $OutDir "swirl_disc.png"), 512, 0)
[RobuxTex]::Swirl((Join-Path $OutDir "swirl_ring.png"), 512, 0.62)
[RobuxTex]::Glint((Join-Path $OutDir "glint.png"), 256)
Get-ChildItem $OutDir | Select-Object Name, Length

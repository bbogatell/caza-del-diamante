# Genera la textura de "cuarzo rosado azulado" para el terreno de la parcela 10 (MaterialVariant CuarzoRosa sobre
# Glacier, 25/11): facetas de cristal (celdas de Voronoi en rejilla con jitter), cada una entre rosa y azul claro
# segun una mancha grande, con un brillo blanco en un lado y aristas claras. Mosaico sin costuras.
# Salida: cuarzo_color.png, cuarzo_normal.png, cuarzo_rough.png, cuarzo_metal.png
param([string]$OutDir = (Join-Path $PSScriptRoot "texturas"), [int]$Size = 1024, [int]$Seed = 31, [int]$Cells = 100)
New-Item -ItemType Directory -Force $OutDir | Out-Null
Add-Type -ReferencedAssemblies System.Drawing -TypeDefinition @'
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

public static class QuartzTex {
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
    static double[] lat; static int L = 256;
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

    public static void Make(string dir, int n, int seed, int cells) {
        var rnd = new Random(seed);
        lat = new double[L * L];
        for (int i = 0; i < L * L; i++) lat[i] = rnd.NextDouble();
        int g = (int)Math.Round(Math.Sqrt(cells)); cells = g * g;
        double cs = n / (double)g;
        var px = new double[cells]; var py = new double[cells];
        var tx = new double[cells]; var ty = new double[cells]; var tone = new double[cells];
        for (int c = 0; c < cells; c++) {
            px[c] = ((c % g) + 0.15 + rnd.NextDouble() * 0.7) * cs; py[c] = ((c / g) + 0.15 + rnd.NextDouble() * 0.7) * cs;
            double a = rnd.NextDouble() * Math.PI * 2; tx[c] = Math.Cos(a); ty[c] = Math.Sin(a);
            tone[c] = rnd.NextDouble();
        }
        // pink (1.00, 0.70, 0.86) and light blue (0.66, 0.80, 1.00)
        double pr = 1.00, pg = 0.70, pb = 0.86, br = 0.66, bg = 0.80, bb = 1.00;
        var R_ = new double[n * n]; var G_ = new double[n * n]; var B_ = new double[n * n];
        var NX = new double[n * n]; var NY = new double[n * n]; var NZ = new double[n * n];
        var RO = new double[n * n]; var ME = new double[n * n];
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            double d1 = 1e9, d2 = 1e9; int c1 = 0;
            for (int c = 0; c < cells; c++) {
                double dx = Math.Abs(x - px[c]); if (dx > n / 2.0) dx = n - dx;
                double dy = Math.Abs(y - py[c]); if (dy > n / 2.0) dy = n - dy;
                if (dx > cs * 2.2 || dy > cs * 2.2) continue;
                double d = Math.Sqrt(dx * dx + dy * dy);
                if (d < d1) { d2 = d1; d1 = d; c1 = c; } else if (d < d2) { d2 = d; }
            }
            int i = y * n + x;
            double u = x / (double)n, v = y / (double)n;
            double edge = 1 - Smooth(1.0, 4.0, d2 - d1);      // bright crystal edge
            // pink <-> blue: large patches plus each facet's own shade
            // (v2: patches of several sizes, so the tile does not show)
            double big = Fbm(u, v, 2, 3, 7.0), mid = Fbm(u, v, 5, 3, 29.0);
            double mixK = Clamp(Smooth(0.30, 0.70, big * 0.6 + mid * 0.4) * 0.8 + tone[c1] * 0.2, 0, 1);
            double r = pr + (br - pr) * mixK, gg = pg + (bg - pg) * mixK, b = pb + (bb - pb) * mixK;
            // facet shading: gradient along the facet tilt, a white glint on one side
            double ox = x - px[c1]; if (ox > n / 2.0) ox -= n; if (ox < -n / 2.0) ox += n;
            double oy = y - py[c1]; if (oy > n / 2.0) oy -= n; if (oy < -n / 2.0) oy += n;
            double grad = Clamp((ox * tx[c1] + oy * ty[c1]) / (cs * 0.6), -1, 1);
            double k = 0.90 + grad * 0.06 + (Fbm(u, v, 3, 3, 61.0) - 0.5) * 0.12;
            double glint = Smooth(0.55, 0.98, grad) * 0.22 + edge * 0.30;   // (v2: softer, the pattern shows less)
            R_[i] = r * k + (1 - r * k) * glint; G_[i] = gg * k + (1 - gg * k) * glint; B_[i] = b * k + (1 - b * k) * glint;
            double sx = tx[c1] * 0.30, sy = ty[c1] * 0.30;
            double len = Math.Sqrt(sx * sx + sy * sy + 1);
            NX[i] = 0.5 + sx / len * 0.5; NY[i] = 0.5 + sy / len * 0.5; NZ[i] = 0.5 + 0.5 / len;
            RO[i] = 0.12 + (1 - edge) * 0.08; ME[i] = 0.0;
        }
        Save(R_, G_, B_, n, System.IO.Path.Combine(dir, "cuarzo_color.png"));
        Save(NX, NY, NZ, n, System.IO.Path.Combine(dir, "cuarzo_normal.png"));
        Save(RO, RO, RO, n, System.IO.Path.Combine(dir, "cuarzo_rough.png"));
        Save(ME, ME, ME, n, System.IO.Path.Combine(dir, "cuarzo_metal.png"));
    }
}
'@
[QuartzTex]::Make($OutDir, $Size, $Seed, $Cells)
Get-ChildItem $OutDir | Select-Object Name, Length

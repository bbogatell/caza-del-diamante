# Texturas nuevas de la pala 29 (Rey Galáctico): constelaciones del mango y degradado de los anillos.
# Los planetas, la capa (nebulosa) y el halo reutilizan las de la pala 28 (tools/modelos/L28/texturas/IDS.txt).
# Uso: .\texturas.ps1 [-OutDir carpeta]
param([string]$OutDir = (Join-Path $PSScriptRoot "texturas"))
New-Item -ItemType Directory -Force $OutDir | Out-Null
Add-Type -ReferencedAssemblies System.Drawing -TypeDefinition @'
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

public static class Tex29 {
    static double Clamp(double x, double a, double b) { return x < a ? a : (x > b ? b : x); }
    static double[] Hex(string h) { int v = Convert.ToInt32(h.TrimStart('#'), 16); return new double[] { ((v >> 16) & 255) / 255.0, ((v >> 8) & 255) / 255.0, (v & 255) / 255.0 }; }
    static double[] Mix(double[] a, double[] b, double t) { t = Clamp(t, 0, 1); return new double[] { a[0] + (b[0] - a[0]) * t, a[1] + (b[1] - a[1]) * t, a[2] + (b[2] - a[2]) * t }; }
    static void Save(double[][] rgb, double[] alpha, int w, int h, string path) {
        var bmp = new Bitmap(w, h, PixelFormat.Format32bppArgb);
        var data = bmp.LockBits(new Rectangle(0, 0, w, h), ImageLockMode.WriteOnly, PixelFormat.Format32bppArgb);
        var buf = new byte[w * h * 4];
        for (int i = 0; i < w * h; i++) {
            buf[i * 4 + 0] = (byte)(Clamp(rgb[i][2], 0, 1) * 255); buf[i * 4 + 1] = (byte)(Clamp(rgb[i][1], 0, 1) * 255);
            buf[i * 4 + 2] = (byte)(Clamp(rgb[i][0], 0, 1) * 255); buf[i * 4 + 3] = (byte)(Clamp(alpha == null ? 1 : alpha[i], 0, 1) * 255);
        }
        Marshal.Copy(buf, 0, data.Scan0, buf.Length); bmp.UnlockBits(data); bmp.Save(path, ImageFormat.Png); bmp.Dispose();
    }
    static double SegDist(double px, double py, double ax, double ay, double bx, double by) {
        double dx = bx - ax, dy = by - ay, t = Clamp(((px - ax) * dx + (py - ay) * dy) / (dx * dx + dy * dy), 0, 1);
        double qx = ax + t * dx - px, qy = ay + t * dy - py; return Math.Sqrt(qx * qx + qy * qy);
    }

    // crystal with white constellations (tileable); mask = the glowing stars and lines only
    public static void Constellations(string colorPath, string maskPath, int n, int seed) {
        var r = new Random(seed);
        int count = 22; var sx = new double[count]; var sy = new double[count]; var sr = new double[count];
        for (int i = 0; i < count; i++) { sx[i] = r.NextDouble() * n; sy[i] = r.NextDouble() * n; sr[i] = 1.5 + r.NextDouble() * 3.5; }
        // lines: each star to its nearest 1-2 neighbours (with wrap)
        var lines = new System.Collections.Generic.List<double[]>();
        for (int i = 0; i < count; i++) {
            int best = -1, second = -1; double bd = 1e9, sd = 1e9; double bx = 0, by = 0, cx = 0, cy = 0;
            for (int j = 0; j < count; j++) if (j != i) for (int ox = -1; ox <= 1; ox++) for (int oy = -1; oy <= 1; oy++) {
                double x = sx[j] + ox * n, y = sy[j] + oy * n, d = Math.Sqrt((x - sx[i]) * (x - sx[i]) + (y - sy[i]) * (y - sy[i]));
                if (d < bd) { second = best; sd = bd; cx = bx; cy = by; best = j; bd = d; bx = x; by = y; } else if (d < sd) { second = j; sd = d; cx = x; cy = y; }
            }
            if (bd < n * 0.3) lines.Add(new double[] { sx[i], sy[i], bx, by });
            if (second >= 0 && sd < n * 0.22 && r.NextDouble() < 0.5) lines.Add(new double[] { sx[i], sy[i], cx, cy });
        }
        var rgb = new double[n * n][]; var al = new double[n * n]; var mk = new double[n * n][];
        double[] glass = Hex("#DCE1FF"), pink = Hex("#FFC8EE"), cyan = Hex("#BFF4FF"), white = new double[] { 1, 1, 1 };
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            double u = (double)x / n, v = (double)y / n;
            double[] c = Mix(glass, pink, 0.25 + 0.25 * Math.Sin(6.283 * (u * 2 + v)));
            c = Mix(c, cyan, 0.2 + 0.2 * Math.Sin(6.283 * (v * 3 - u)));
            double glow = 0;
            foreach (var L in lines) for (int ox = -1; ox <= 1; ox++) for (int oy = -1; oy <= 1; oy++) {
                double d = SegDist(x + ox * n, y + oy * n, L[0], L[1], L[2], L[3]);
                if (d < 2.5) glow = Math.Max(glow, (1 - d / 2.5) * 0.7);
            }
            for (int i = 0; i < count; i++) for (int ox = -1; ox <= 1; ox++) for (int oy = -1; oy <= 1; oy++) {
                double dx = x + ox * n - sx[i], dy = y + oy * n - sy[i], d = Math.Sqrt(dx * dx + dy * dy);
                double k = Math.Exp(-d * d / (sr[i] * sr[i]));
                if (Math.Abs(dx) < 0.8 || Math.Abs(dy) < 0.8) k = Math.Max(k, Math.Exp(-d / (sr[i] * 2.2)) * 0.8); // 4-point flare
                glow = Math.Max(glow, k);
            }
            int idx = y * n + x;
            rgb[idx] = Mix(c, white, glow);
            al[idx] = Clamp(0.55 + glow, 0, 1);
            mk[idx] = new double[] { glow, glow, glow };
        }
        Save(rgb, al, n, n, colorPath);
        Save(mk, null, n, n, maskPath);
    }

    // pink <-> cyan gradient around the ring (U), tileable
    public static void RingGradient(string path, int w, int h) {
        var rgb = new double[w * h][];
        double[] pink = Hex("#FF4FD8"), cyan = Hex("#5FF5E0"), violet = Hex("#B98CFF");
        for (int y = 0; y < h; y++) for (int x = 0; x < w; x++) {
            double u = (double)x / w, v = (y + 0.5) / h;
            double t = 0.5 - 0.5 * Math.Cos(u * 6.283 * 2);
            double[] c = Mix(Mix(pink, violet, Clamp(t * 2, 0, 1)), cyan, Clamp(t * 2 - 1, 0, 1));
            double core = Math.Exp(-Math.Pow((v - 0.5) / 0.22, 2));
            rgb[y * w + x] = Mix(c, new double[] { 1, 1, 1 }, core * 0.45);
        }
        Save(rgb, null, w, h, path);
    }
}
'@
[Tex29]::Constellations("$OutDir\constelaciones.png", "$OutDir\constelaciones_brillo.png", 512, 29)
[Tex29]::RingGradient("$OutDir\anillo_degradado.png", 512, 32)
Get-ChildItem $OutDir *.png | Select-Object Name, Length

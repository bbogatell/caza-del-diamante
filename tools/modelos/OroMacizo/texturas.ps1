# Genera la textura de "oro macizo brillante" para el terreno de la parcela 15 (MaterialVariant OroMacizo sobre
# Concrete, 25/11). Bloques de oro facetados (celdas de Voronoi, cada una con su inclinacion), juntas finas
# oscuras y destellos. Mosaico sin costuras.
# Salida: oro_color.png, oro_normal.png, oro_rough.png, oro_metal.png
param([string]$OutDir = (Join-Path $PSScriptRoot "texturas"), [int]$Size = 1024, [int]$Seed = 11, [int]$Cells = 70)
New-Item -ItemType Directory -Force $OutDir | Out-Null
Add-Type -ReferencedAssemblies System.Drawing -TypeDefinition @'
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

public static class GoldTex {
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

    public static void Make(string dir, int n, int seed, int cells) {
        var rnd = new Random(seed);
        // jittered grid (blocks of similar size, no slivers)
        int g = (int)Math.Round(Math.Sqrt(cells)); cells = g * g;
        double cs = n / (double)g;
        var px = new double[cells]; var py = new double[cells];
        var tx = new double[cells]; var ty = new double[cells]; var tone = new double[cells];
        for (int c = 0; c < cells; c++) {
            px[c] = ((c % g) + 0.2 + rnd.NextDouble() * 0.6) * cs; py[c] = ((c / g) + 0.2 + rnd.NextDouble() * 0.6) * cs;
            tx[c] = (rnd.NextDouble() - 0.5) * 0.9; ty[c] = (rnd.NextDouble() - 0.5) * 0.9; // facet tilt
            tone[c] = rnd.NextDouble() * 2 - 1;
        }
        var R_ = new double[n * n]; var G_ = new double[n * n]; var B_ = new double[n * n];
        var NX = new double[n * n]; var NY = new double[n * n]; var NZ = new double[n * n];
        var RO = new double[n * n]; var ME = new double[n * n];
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            // nearest and second nearest cell centre (wrapping)
            double d1 = 1e9, d2 = 1e9; int c1 = 0;
            for (int c = 0; c < cells; c++) {
                double dx = Math.Abs(x - px[c]); if (dx > n / 2.0) dx = n - dx;
                double dy = Math.Abs(y - py[c]); if (dy > n / 2.0) dy = n - dy;
                double d = Math.Sqrt(dx * dx + dy * dy);
                if (d < d1) { d2 = d1; d1 = d; c1 = c; } else if (d < d2) { d2 = d; }
            }
            double seam = 1 - Smooth(1.0, 3.5, d2 - d1);   // 1 on the thin joint between two blocks
            double bevel = 1 - Smooth(3.0, 10.0, d2 - d1);  // bright polished edge near the joint
            int i = y * n + x;
            // position inside the block, -1..1 along the facet tilt: a gradient from deep gold to a bright sheen
            double ox = x - px[c1]; if (ox > n / 2.0) ox -= n; if (ox < -n / 2.0) ox += n;
            double oy = y - py[c1]; if (oy > n / 2.0) oy -= n; if (oy < -n / 2.0) oy += n;
            double tl = Math.Sqrt(tx[c1] * tx[c1] + ty[c1] * ty[c1]) + 1e-6;
            double grad = Clamp((ox * tx[c1] + oy * ty[c1]) / tl / (cs * 0.6), -1, 1);
            double sheen = Smooth(0.1, 0.95, grad) * 0.55 + bevel * 0.25; // bright streak on one side + shiny edges
            double k = 0.97 + tone[c1] * 0.05 - Smooth(-1.0, -0.2, -grad) * 0.22 - seam * 0.65;
            // (v2, 25/11: large soft changes of tone across the tile, so the repetition does not show; whole periods = seamless)
            double uu = x / (double)n, vv = y / (double)n;
            k += 0.06 * Math.Sin(2 * Math.PI * (uu + 2 * vv) + 1.3) + 0.05 * Math.Sin(2 * Math.PI * (3 * uu - vv) + 0.4) + 0.04 * Math.Sin(2 * Math.PI * (2 * uu + 3 * vv) + 2.1);
            // gold (1, 0.74, 0.12) -> pale shine (1, 0.96, 0.62) on the sheen
            double r = 1.0, gg = 0.74 + (0.96 - 0.74) * sheen + tone[c1] * 0.03, b = 0.12 + (0.62 - 0.12) * sheen;
            R_[i] = r * k; G_[i] = gg * k; B_[i] = b * k;
            // normal: the facet tilt, plus the bevel leaning towards the joint
            double sx = tx[c1] * 0.35, sy = ty[c1] * 0.35;
            double len = Math.Sqrt(sx * sx + sy * sy + 1);
            NX[i] = 0.5 + sx / len * 0.5; NY[i] = 0.5 + sy / len * 0.5; NZ[i] = 0.5 + 0.5 / len - bevel * 0.08;
            RO[i] = 0.18 + seam * 0.5 + bevel * 0.1;
            ME[i] = 0.55 - seam * 0.4;
        }
        Save(R_, G_, B_, n, System.IO.Path.Combine(dir, "oro_color.png"));
        Save(NX, NY, NZ, n, System.IO.Path.Combine(dir, "oro_normal.png"));
        Save(RO, RO, RO, n, System.IO.Path.Combine(dir, "oro_rough.png"));
        Save(ME, ME, ME, n, System.IO.Path.Combine(dir, "oro_metal.png"));
    }
}
'@
[GoldTex]::Make($OutDir, $Size, $Seed, $Cells)
Get-ChildItem $OutDir | Select-Object Name, Length

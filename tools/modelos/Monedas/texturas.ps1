# Genera la textura de "monton de monedas de oro" para el terreno de la parcela 15 (MaterialVariant sobre Concrete).
# Mosaico sin costuras (las monedas que se salen por un borde entran por el otro).
# Salida: coins_color.png, coins_normal.png, coins_rough.png, coins_metal.png
param([string]$OutDir = (Join-Path $PSScriptRoot "texturas"), [int]$Size = 1024, [int]$Seed = 7)
New-Item -ItemType Directory -Force $OutDir | Out-Null
Add-Type -ReferencedAssemblies System.Drawing -TypeDefinition @'
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

public static class CoinTex {
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

    public static void Make(string dir, int n, int seed) {
        var rnd = new Random(seed);
        var H = new double[n * n];      // altura (0 = fondo oscuro entre monedas)
        var tone = new double[n * n];   // variacion de tono por moneda
        var face = new double[n * n];   // 1 en la cara de una moneda, 0 en el hueco
        var ring = new double[n * n];   // grabado del borde interior
        for (int i = 0; i < n * n; i++) { H[i] = 0; tone[i] = 0; face[i] = 0; ring[i] = 0; }
        int coins = (int)(n * n / 1100.0);
        for (int c = 0; c < coins; c++) {
            double cx = rnd.NextDouble() * n, cy = rnd.NextDouble() * n;
            double R = n * (0.035 + rnd.NextDouble() * 0.025);
            // tilt: ellipse squash and direction (coins lie at angles in the pile)
            double ang = rnd.NextDouble() * Math.PI, sq = 0.55 + rnd.NextDouble() * 0.45;
            double ca = Math.Cos(ang), sa = Math.Sin(ang);
            double baseH = 0.25 + c / (double)coins * 0.75;  // later coins sit on top
            double tn = rnd.NextDouble() * 2 - 1;
            double slopeX = (rnd.NextDouble() - 0.5) * 0.6, slopeY = (rnd.NextDouble() - 0.5) * 0.6;
            int r0 = (int)(R + 3);
            for (int dy = -r0; dy <= r0; dy++) for (int dx = -r0; dx <= r0; dx++) {
                double lx = dx * ca + dy * sa, ly = (-dx * sa + dy * ca) / sq;
                double d = Math.Sqrt(lx * lx + ly * ly) / R;
                if (d > 1.0) continue;
                int x = ((int)Math.Floor(cx) + dx) % n; if (x < 0) x += n;
                int y = ((int)Math.Floor(cy) + dy) % n; if (y < 0) y += n;
                double h = baseH + (dx * slopeX + dy * slopeY) / R * 0.05;
                // raised rim, a groove inside it and a slightly domed centre
                double rim = Smooth(0.80, 0.88, d) * (1 - Smooth(0.94, 1.0, d));
                double groove = Smooth(0.68, 0.72, d) * (1 - Smooth(0.74, 0.78, d));
                double edge = 1 - Smooth(0.96, 1.0, d);
                h += rim * 0.035 - groove * 0.02 + (1 - d * d) * 0.01;
                h *= edge;
                int i = y * n + x;
                if (h > H[i]) { H[i] = h; tone[i] = tn; face[i] = edge; ring[i] = groove + rim * 0.3; }
            }
        }
        var R_ = new double[n * n]; var G_ = new double[n * n]; var B_ = new double[n * n];
        var nx = new double[n * n]; var ny = new double[n * n]; var nz = new double[n * n];
        var rough = new double[n * n]; var metal = new double[n * n];
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            int i = y * n + x;
            double f = face[i];
            // gold: bright yellow with a little per-coin variation; darker in the grooves; deep shadow between coins
            double k = 0.92 + tone[i] * 0.08 - ring[i] * 0.25;
            double r = 1.00 * k, g = 0.78 * k + tone[i] * 0.03, b = 0.24 * k;
            double shade = 0.38 + 0.62 * f;
            R_[i] = r * shade; G_[i] = g * shade; B_[i] = b * shade;
            // normal from height (wraps)
            double hl = H[y * n + (x - 1 + n) % n], hr = H[y * n + (x + 1) % n];
            double hu = H[((y - 1 + n) % n) * n + x], hd = H[((y + 1) % n) * n + x];
            double sx = (hr - hl) * n * 0.08, sy = (hd - hu) * n * 0.08;
            double len = Math.Sqrt(sx * sx + sy * sy + 1);
            nx[i] = 0.5 - sx / len * 0.5; ny[i] = 0.5 + sy / len * 0.5; nz[i] = 0.5 + 0.5 / len;
            rough[i] = 0.35 + (1 - f) * 0.4 + ring[i] * 0.1;
            metal[i] = 0.1 + 0.35 * f;
        }
        Save(R_, G_, B_, n, System.IO.Path.Combine(dir, "coins_color.png"));
        Save(nx, ny, nz, n, System.IO.Path.Combine(dir, "coins_normal.png"));
        Save(rough, rough, rough, n, System.IO.Path.Combine(dir, "coins_rough.png"));
        Save(metal, metal, metal, n, System.IO.Path.Combine(dir, "coins_metal.png"));
    }
}
'@
[CoinTex]::Make($OutDir, $Size, $Seed)
Get-ChildItem $OutDir | Select-Object Name, Length



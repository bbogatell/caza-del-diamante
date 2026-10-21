# Huella arcoÃ­ris de T-Rex para el efecto al cavar de la pala 29 (forma de la imagen de referencia de seguo970).
# Rellena la silueta con bandas de arcoÃ­ris desde el borde (rojo) hacia dentro (violeta), con borde blanco y brillo.
# Uso: .\huella.ps1 [-Out ruta.png]
param([string]$Out = (Join-Path $PSScriptRoot "texturas\huella_trex.png"))
Add-Type -ReferencedAssemblies System.Drawing -TypeDefinition @'
using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

public static class Huella {
    static double Clamp(double x, double a, double b) { return x < a ? a : (x > b ? b : x); }
    static double[] Hue(double h) {
        double r = Clamp(Math.Abs(h * 6 - 3) - 1, 0, 1), g = Clamp(2 - Math.Abs(h * 6 - 2), 0, 1), b = Clamp(2 - Math.Abs(h * 6 - 4), 0, 1);
        return new double[] { r, g, b };
    }
    public static void Make(string path, int W, int H) {
        // outline in 0..1 (x right, y down): heel at the bottom, three toes up, side toes curving out with hooked claws
        double[,] pts = {
            {0.50,0.975},{0.32,0.955},{0.22,0.90},{0.17,0.80},{0.17,0.70},{0.19,0.62},
            // left toe: outer edge, claw notch, hooked tip, inner edge
            {0.13,0.55},{0.08,0.47},{0.06,0.40},{0.09,0.36},{0.06,0.33},{0.04,0.28},{0.05,0.23},{0.08,0.18},
            {0.11,0.23},{0.14,0.28},{0.17,0.31},{0.20,0.31},{0.24,0.35},{0.29,0.42},{0.34,0.50},{0.38,0.555},
            // middle toe
            {0.40,0.48},{0.39,0.38},{0.41,0.32},{0.40,0.25},{0.42,0.17},{0.46,0.10},{0.50,0.035},
            {0.54,0.10},{0.58,0.17},{0.60,0.25},{0.59,0.32},{0.61,0.38},{0.60,0.48},{0.62,0.555},
            // right toe (mirror)
            {0.66,0.50},{0.71,0.42},{0.76,0.35},{0.80,0.31},{0.83,0.31},{0.86,0.28},{0.89,0.23},{0.92,0.18},
            {0.95,0.23},{0.96,0.28},{0.94,0.33},{0.91,0.36},{0.94,0.40},{0.92,0.47},{0.87,0.55},{0.81,0.62},
            {0.83,0.70},{0.83,0.80},{0.78,0.90},{0.68,0.955}
        };
        int n = pts.GetLength(0);
        var poly = new PointF[n];
        int pad = 40;
        for (int i = 0; i < n; i++) poly[i] = new PointF((float)(pad + pts[i, 0] * (W - 2 * pad)), (float)(pad + pts[i, 1] * (H - 2 * pad)));
        var maskBmp = new Bitmap(W, H, PixelFormat.Format32bppArgb);
        using (var g = Graphics.FromImage(maskBmp)) {
            g.SmoothingMode = SmoothingMode.AntiAlias;
            g.Clear(Color.Black);
            g.FillClosedCurve(Brushes.White, poly, FillMode.Winding, 0.45f);
        }
        var inside = new bool[W * H];
        for (int y = 0; y < H; y++) for (int x = 0; x < W; x++) inside[y * W + x] = maskBmp.GetPixel(x, y).R > 127;
        maskBmp.Dispose();
        // chamfer distance to the edge, inside and outside
        double[] dIn = Dist(inside, W, H, true), dOut = Dist(inside, W, H, false);
        double maxIn = 0; foreach (var d in dIn) if (d > maxIn) maxIn = d;
        var buf = new byte[W * H * 4];
        for (int i = 0; i < W * H; i++) {
            double r, gg, b, a;
            if (inside[i]) {
                double t = dIn[i] / maxIn;                  // 0 at the edge, 1 deepest
                double[] c = Hue(Clamp(t * 1.15, 0, 1) * 0.8); // red -> violet
                double rim = Math.Exp(-dIn[i] / 3.0);       // bright white rim
                double sparkle = 0.15 * Math.Pow(0.5 + 0.5 * Math.Sin(dIn[i] * 0.9), 6); // thin light lines between bands
                r = c[0] + (1 - c[0]) * (rim + sparkle); gg = c[1] + (1 - c[1]) * (rim + sparkle); b = c[2] + (1 - c[2]) * (rim + sparkle);
                a = 1;
            } else {
                double glow = Math.Exp(-dOut[i] / 9.0);      // soft pink-white glow around
                r = 1; gg = 0.85; b = 1; a = glow * 0.75;
            }
            buf[i * 4] = (byte)(Clamp(b, 0, 1) * 255); buf[i * 4 + 1] = (byte)(Clamp(gg, 0, 1) * 255);
            buf[i * 4 + 2] = (byte)(Clamp(r, 0, 1) * 255); buf[i * 4 + 3] = (byte)(Clamp(a, 0, 1) * 255);
        }
        var bmp = new Bitmap(W, H, PixelFormat.Format32bppArgb);
        var data = bmp.LockBits(new Rectangle(0, 0, W, H), ImageLockMode.WriteOnly, PixelFormat.Format32bppArgb);
        Marshal.Copy(buf, 0, data.Scan0, buf.Length); bmp.UnlockBits(data);
        bmp.Save(path, ImageFormat.Png); bmp.Dispose();
    }
    // 5x5 chamfer distance (5-7-11, divided by 5): round enough that the bands follow the outline smoothly
    static double[] Dist(bool[] inside, int W, int H, bool measureInside) {
        var d = new double[W * H];
        const double BIG = 1e9;
        int[,] fwd = { {-1, 0, 5}, {0, -1, 5}, {-1, -1, 7}, {1, -1, 7}, {-2, -1, 11}, {2, -1, 11}, {-1, -2, 11}, {1, -2, 11} };
        for (int i = 0; i < W * H; i++) d[i] = (inside[i] == measureInside) ? BIG : 0;
        for (int y = 0; y < H; y++) for (int x = 0; x < W; x++) {
            int i = y * W + x; if (d[i] == 0) continue;
            for (int k = 0; k < 8; k++) { int nx = x + fwd[k, 0], ny = y + fwd[k, 1]; if (nx >= 0 && nx < W && ny >= 0) d[i] = Math.Min(d[i], d[ny * W + nx] + fwd[k, 2]); }
        }
        for (int y = H - 1; y >= 0; y--) for (int x = W - 1; x >= 0; x--) {
            int i = y * W + x; if (d[i] == 0) continue;
            for (int k = 0; k < 8; k++) { int nx = x - fwd[k, 0], ny = y - fwd[k, 1]; if (nx >= 0 && nx < W && ny < H) d[i] = Math.Min(d[i], d[ny * W + nx] + fwd[k, 2]); }
        }
        for (int i = 0; i < W * H; i++) d[i] /= 5.0;
        return d;
    }
}
'@
[Huella]::Make($Out, 512, 640)
Get-Item $Out | Select-Object Name, Length


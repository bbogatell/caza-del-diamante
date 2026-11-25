# Genera la textura de "ladrillos de templo de arenisca" para el terreno de la parcela 11 (MaterialVariant
# LadrilloTemplo sobre Cobblestone, 25/11): hileras de ladrillos alternados, juntas de mortero, cada ladrillo con su
# tono de arena/ocre, bordes gastados, grano y algun desconchon. Colores del bioma del templo (Config.PLOTS[11].pal).
# Mosaico sin costuras. Salida: ladrillo_color.png, ladrillo_normal.png, ladrillo_rough.png, ladrillo_metal.png
param([string]$OutDir = (Join-Path $PSScriptRoot "texturas"), [int]$Size = 1024, [int]$Seed = 3, [int]$Rows = 16, [int]$PerRow = 8)
New-Item -ItemType Directory -Force $OutDir | Out-Null
Add-Type -ReferencedAssemblies System.Drawing -TypeDefinition @'
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

public static class BrickTex {
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
    public static void Make(string dir, int n, int seed, int rows, int perRow) {
        var rnd = new Random(seed);
        lat = new double[L * L];
        for (int i = 0; i < L * L; i++) lat[i] = rnd.NextDouble();
        double bh = n / (double)rows, bw = n / (double)perRow;
        var tone = new double[rows * perRow]; var hue = new double[rows * perRow]; var tilt = new double[rows * perRow];
        for (int i = 0; i < tone.Length; i++) { tone[i] = rnd.NextDouble() * 2 - 1; hue[i] = rnd.NextDouble(); tilt[i] = (rnd.NextDouble() - 0.5) * 0.06; }
        double mortar = bh * 0.09;
        var R_ = new double[n * n]; var G_ = new double[n * n]; var B_ = new double[n * n];
        var H = new double[n * n]; var RO = new double[n * n]; var ME = new double[n * n];
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            int row = (int)(y / bh);
            double off = (row % 2) * bw * 0.5;
            double xs = (x + off) % n;
            int col = (int)(xs / bw);
            int id = row * perRow + col;
            // distance to the brick edge (wobbly, worn)
            double u = x / (double)n, v = y / (double)n;
            double wob = (Fbm(u, v, 32, 3, 5.0) - 0.5) * bh * 0.10;
            double dx = Math.Min(xs - col * bw, (col + 1) * bw - xs);
            double dy = Math.Min(y - row * bh, (row + 1) * bh - y);
            double de = Math.Min(dx, dy) + wob;
            double inBrick = Smooth(mortar * 0.6, mortar * 1.6, de);
            double bevel = Smooth(mortar, mortar * 4.5, de);
            // sandstone colours: light sand (0.86,0.77,0.58) <-> ochre (0.80,0.64,0.40) per brick
            double t = hue[id];
            double r = 0.86 + (0.80 - 0.86) * t, g = 0.77 + (0.64 - 0.77) * t, b = 0.58 + (0.40 - 0.58) * t;
            double grain = Fbm(u, v, 48, 3, 77.0) - 0.5;
            double blot = Fbm(u, v, 6, 4, 33.0) - 0.5;
            double chip = Smooth(0.70, 0.74, Fbm(u, v, 10, 4, 91.0));   // a few chipped spots
            double k = 1.0 + tone[id] * 0.07 + grain * 0.16 + blot * 0.12 - (1 - bevel) * 0.10 - chip * 0.12;
            // mortar: darker sandy grey
            double mr = 0.60, mg = 0.53, mb = 0.40;
            int i = y * n + x;
            R_[i] = (r * k) * inBrick + mr * (1 - inBrick);
            G_[i] = (g * k) * inBrick + mg * (1 - inBrick);
            B_[i] = (b * k) * inBrick + mb * (1 - inBrick);
            H[i] = inBrick * (0.6 + bevel * 0.4) + grain * 0.05 - chip * 0.15 + tilt[id] * (xs - (col + 0.5) * bw) / bw;
            RO[i] = 0.85; ME[i] = 0.0;
        }
        var NX = new double[n * n]; var NY = new double[n * n]; var NZ = new double[n * n];
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            int i = y * n + x;
            double hl = H[y * n + (x - 1 + n) % n], hr = H[y * n + (x + 1) % n];
            double hu = H[((y - 1 + n) % n) * n + x], hd = H[((y + 1) % n) * n + x];
            double sx = (hr - hl) * 6, sy = (hd - hu) * 6;
            double len = Math.Sqrt(sx * sx + sy * sy + 1);
            NX[i] = 0.5 - sx / len * 0.5; NY[i] = 0.5 + sy / len * 0.5; NZ[i] = 0.5 + 0.5 / len;
        }
        Save(R_, G_, B_, n, System.IO.Path.Combine(dir, "ladrillo_color.png"));
        Save(NX, NY, NZ, n, System.IO.Path.Combine(dir, "ladrillo_normal.png"));
        Save(RO, RO, RO, n, System.IO.Path.Combine(dir, "ladrillo_rough.png"));
        Save(ME, ME, ME, n, System.IO.Path.Combine(dir, "ladrillo_metal.png"));
    }
}
'@
[BrickTex]::Make($OutDir, $Size, $Seed, $Rows, $PerRow)
Get-ChildItem $OutDir | Select-Object Name, Length

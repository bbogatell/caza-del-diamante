# Genera la textura de "nube" para el terreno de la parcela 12 (MaterialVariant Nube sobre WoodPlanks, 25/11):
# bultos esponjosos blancos de varios tamanos, sombras suaves azuladas entre ellos y brillos. Mosaico sin costuras.
# Salida: nube_color.png, nube_normal.png, nube_rough.png, nube_metal.png
param([string]$OutDir = (Join-Path $PSScriptRoot "texturas"), [int]$Size = 1024, [int]$Seed = 9)
New-Item -ItemType Directory -Force $OutDir | Out-Null
Add-Type -ReferencedAssemblies System.Drawing -TypeDefinition @'
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

public static class CloudTex {
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
    public static void Make(string dir, int n, int seed) {
        var rnd = new Random(seed);
        lat = new double[L * L];
        for (int i = 0; i < L * L; i++) lat[i] = rnd.NextDouble();
        var H = new double[n * n];
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            double u = x / (double)n, v = y / (double)n;
            // puffs: rounded "billow" noise of three sizes (1 - |2n-1| makes round bumps)
            double a = 1 - Math.Abs(2 * Fbm(u, v, 4, 3, 0.0) - 1);
            double b = 1 - Math.Abs(2 * Fbm(u, v, 9, 3, 41.0) - 1);
            double c = 1 - Math.Abs(2 * Fbm(u, v, 20, 2, 83.0) - 1);
            H[y * n + x] = a * 0.5 + b * 0.32 + c * 0.18;
        }
        var R_ = new double[n * n]; var G_ = new double[n * n]; var B_ = new double[n * n];
        var NX = new double[n * n]; var NY = new double[n * n]; var NZ = new double[n * n];
        var RO = new double[n * n]; var ME = new double[n * n];
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++) {
            int i = y * n + x;
            double hl = H[y * n + (x - 1 + n) % n], hr = H[y * n + (x + 1) % n];
            double hu = H[((y - 1 + n) % n) * n + x], hd = H[((y + 1) % n) * n + x];
            double sx = (hr - hl) * 40, sy = (hd - hu) * 40;
            double len = Math.Sqrt(sx * sx + sy * sy + 1);
            NX[i] = 0.5 - sx / len * 0.5; NY[i] = 0.5 + sy / len * 0.5; NZ[i] = 0.5 + 0.5 / len;
            // light from the top-left: lit sides brighter, the hollows a soft sky blue
            double lit = Clamp(0.5 + (-sx - sy) * 0.35, 0, 1);
            double shade = Smooth(0.62, 0.86, H[i]);          // 0 in the hollows, 1 on top of the puffs
            double w = 0.82 + shade * 0.13 + lit * 0.07;
            R_[i] = w * (0.88 + shade * 0.12); G_[i] = w * (0.92 + shade * 0.08); B_[i] = w * 1.0;
            RO[i] = 0.95; ME[i] = 0.0;
        }
        Save(R_, G_, B_, n, System.IO.Path.Combine(dir, "nube_color.png"));
        Save(NX, NY, NZ, n, System.IO.Path.Combine(dir, "nube_normal.png"));
        Save(RO, RO, RO, n, System.IO.Path.Combine(dir, "nube_rough.png"));
        Save(ME, ME, ME, n, System.IO.Path.Combine(dir, "nube_metal.png"));
    }
}
'@
[CloudTex]::Make($OutDir, $Size, $Seed)
Get-ChildItem $OutDir | Select-Object Name, Length

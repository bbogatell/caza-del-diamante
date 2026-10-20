--[[
  Efectos de la Pala del Rey Galáctico para Roblox
  Uso: importa Pala_del_Rey_Galactico.gltf con el 3D Importer, mete este Script
  dentro del modelo importado y dale a Play.
  - Pone Neon/Glass en las piezas que brillan (Roblox no importa la emisión del glTF).
  - Ojos amarillos que laten, destellos en el cráneo, polvo de estrellas en la capa
    y anillos que cambian de tono.
  - Animación: abre el Animation Editor, carga la animación "Rey", publícala
    y pega su ID en ANIM_ID para que se reproduzca en bucle.
]]

local ANIM_ID = "" -- ejemplo: "1234567890"

local RunService = game:GetService("RunService")
local model = script.Parent

local function each(pattern, fn)
	for _, d in model:GetDescendants() do
		if d:IsA("MeshPart") and string.find(d.Name, pattern, 1, true) then
			fn(d)
		end
	end
end

local function findBone(name)
	for _, d in model:GetDescendants() do
		if d:IsA("Bone") and d.Name == name then
			return d
		end
	end
	return nil
end

local function rainbowSequence()
	return ColorSequence.new({
		ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 255, 255)),
		ColorSequenceKeypoint.new(0.25, Color3.fromRGB(255, 170, 230)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(170, 220, 255)),
		ColorSequenceKeypoint.new(0.75, Color3.fromRGB(255, 235, 150)),
		ColorSequenceKeypoint.new(1.0, Color3.fromRGB(255, 255, 255)),
	})
end

local function sparkles(parent, rate, size, colors)
	local p = Instance.new("ParticleEmitter")
	p.Name = "Destellos"
	p.Texture = "rbxasset://textures/particles/sparkles_main.dds"
	p.Rate = rate
	p.Lifetime = NumberRange.new(0.6, 1.4)
	p.Speed = NumberRange.new(0.3, 1.2)
	p.SpreadAngle = Vector2.new(180, 180)
	p.LightEmission = 1
	p.LightInfluence = 0
	p.Size = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(0.3, size),
		NumberSequenceKeypoint.new(1, 0),
	})
	p.Transparency = NumberSequence.new(0.1)
	p.Color = colors or rainbowSequence()
	p.Parent = parent
	return p
end

-- Materiales -------------------------------------------------------------
each("Craneo", function(p) p.Material = Enum.Material.Foil; p.Color = Color3.fromRGB(255, 196, 80) end)
each("Mandibula", function(p) p.Material = Enum.Material.Foil; p.Color = Color3.fromRGB(255, 196, 80) end)
each("Dientes", function(p) p.Material = Enum.Material.Foil; p.Color = Color3.fromRGB(255, 205, 95) end)
each("Cuello", function(p) p.Material = Enum.Material.Foil; p.Color = Color3.fromRGB(255, 190, 70) end)
each("Cadenas", function(p) p.Material = Enum.Material.Foil; p.Color = Color3.fromRGB(255, 196, 80) end)
each("Estrellas_Capa", function(p) p.Material = Enum.Material.Foil; p.Color = Color3.fromRGB(255, 200, 90) end)
each("Mango", function(p) p.Material = Enum.Material.Foil; p.Color = Color3.fromRGB(255, 188, 64) end)
each("Corona_Planetas", function(p) p.Material = Enum.Material.Foil; p.Color = Color3.fromRGB(255, 196, 80) end)
each("Punta_Cristal", function(p)
	p.Material = Enum.Material.Glass
	p.Color = Color3.fromRGB(225, 225, 255)
	p.Transparency = 0.25
end)
each("Capa", function(p)
	if p.Name == "Capa" then p.Material = Enum.Material.SmoothPlastic end
end)
local eyes = {}
each("Ojos", function(p)
	p.Material = Enum.Material.Neon
	p.Color = Color3.fromRGB(255, 215, 60)
	table.insert(eyes, p)
end)
each("Constelaciones", function(p)
	p.Material = Enum.Material.Neon
	p.Color = Color3.fromRGB(255, 250, 235)
end)
each("Halo", function(p)
	p.Material = Enum.Material.Neon
	p.Color = Color3.fromRGB(255, 200, 90)
end)
local rings = {}
each("Anillos", function(p)
	p.Material = Enum.Material.Neon
	p.Color = Color3.fromRGB(255, 120, 220)
	table.insert(rings, p)
end)
local flashes = {}
each("Destellos", function(p)
	p.Material = Enum.Material.Neon
	p.Transparency = 0.25
	table.insert(flashes, p)
end)

-- Luz y partículas --------------------------------------------------------
local light
each("Craneo", function(p)
	light = Instance.new("PointLight")
	light.Color = Color3.fromRGB(255, 220, 120)
	light.Range = 16
	light.Brightness = 3
	light.Shadows = false
	light.Parent = p
	sparkles(p, 12, 0.6)
end)
local skullBone = findBone("Craneo")
if skullBone then
	sparkles(skullBone, 8, 0.9, ColorSequence.new(Color3.fromRGB(255, 230, 120)))
end
for _, name in { "Capa1", "Capa2" } do
	local b = findBone(name)
	if b then
		local dust = sparkles(b, 12, 0.35, ColorSequence.new(Color3.fromRGB(200, 140, 255), Color3.fromRGB(120, 190, 255)))
		dust.Name = "PolvoGalactico"
		dust.Speed = NumberRange.new(0, 0.3)
	end
end
local halo = findBone("Halo")
if halo then
	sparkles(halo, 6, 0.5, ColorSequence.new(Color3.fromRGB(255, 225, 150)))
end
local planets = findBone("Planetas")
if planets then
	sparkles(planets, 6, 0.45)
end

-- Animación ---------------------------------------------------------------
if ANIM_ID ~= "" then
	local controller = model:FindFirstChildOfClass("AnimationController") or model:FindFirstChildOfClass("Humanoid")
	if not controller then
		controller = Instance.new("AnimationController")
		controller.Parent = model
	end
	local animator = controller:FindFirstChildOfClass("Animator")
	if not animator then
		animator = Instance.new("Animator")
		animator.Parent = controller
	end
	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://" .. ANIM_ID
	local track = animator:LoadAnimation(anim)
	track.Looped = true
	track:Play()
end

-- Ojos que laten, anillos y destellos arcoíris ----------------------------
RunService.Heartbeat:Connect(function()
	local t = os.clock()
	local pulse = 0.5 + 0.5 * math.sin(t * 4.2)
	for _, e in eyes do
		e.Color = Color3.fromRGB(255, 190 + 50 * pulse, 40 + 60 * pulse)
	end
	if light then
		light.Brightness = 2.5 + 1.5 * pulse
	end
	for i, ring in rings do
		ring.Color = Color3.fromHSV((0.88 + 0.06 * math.sin(t + i)) % 1, 0.55, 1)
	end
	for i, f in flashes do
		f.Color = Color3.fromHSV((t * 0.25 + i * 0.33) % 1, 0.5, 1)
	end
end)

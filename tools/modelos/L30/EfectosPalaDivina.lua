--[[
  Efectos de la Pala Divina del Diamante para Roblox
  Uso: importa Pala_Divina_del_Diamante.gltf con el 3D Importer, mete este Script
  dentro del modelo importado y dale a Play.
  - Pone Neon/Glass en las piezas que brillan (Roblox no importa la emisión del glTF).
  - Añade luz, destellos arcoíris en la hoja, polvo de estrellas tras el T-Rex
    y hace latir el diamante interior y cambiar de color a los anillos.
  - Animación: abre el Animation Editor, carga la animación "Divina", publícala
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
each("Hoja", function(p)
	p.Material = Enum.Material.Glass
	p.Color = Color3.fromRGB(225, 240, 255)
	p.Transparency = 0.3
	p.Reflectance = 0.35
end)
each("Cristal", function(p)
	p.Material = Enum.Material.Glass
	p.Color = Color3.fromRGB(205, 225, 255)
	p.Transparency = 0.4
end)
each("Oro_", function(p)
	p.Material = Enum.Material.Foil
	p.Color = Color3.fromRGB(255, 188, 64)
end)
each("Cadenas", function(p)
	p.Material = Enum.Material.Foil
	p.Color = Color3.fromRGB(255, 196, 80)
end)
each("Gemas", function(p)
	p.Material = Enum.Material.Glass
	p.Color = Color3.fromRGB(120, 110, 255)
	p.Transparency = 0.15
end)
each("GemaInterior", function(p)
	p.Material = Enum.Material.Neon
	p.Color = Color3.fromRGB(215, 235, 255)
end)
each("Halos", function(p)
	p.Material = Enum.Material.Neon
	p.Color = Color3.fromRGB(255, 220, 140)
end)
each("Alas", function(p)
	p.Material = Enum.Material.Neon
	p.Color = Color3.fromRGB(255, 255, 255)
	p.Transparency = 0.2
end)
local rings = {}
each("Anillos", function(p)
	p.Material = Enum.Material.Neon
	table.insert(rings, p)
end)

-- Luz y partículas --------------------------------------------------------
local light
each("Hoja", function(p)
	light = Instance.new("PointLight")
	light.Color = Color3.fromRGB(220, 235, 255)
	light.Range = 16
	light.Brightness = 3
	light.Shadows = false
	light.Parent = p
	sparkles(p, 14, 0.6)
end)

local gemBone = findBone("GemaInterior")
if gemBone then
	sparkles(gemBone, 10, 0.9, ColorSequence.new(Color3.fromRGB(220, 240, 255)))
end
local rexBone = findBone("Rex_Hips")
if rexBone then
	local trail = sparkles(rexBone, 30, 0.35, ColorSequence.new(Color3.fromRGB(190, 120, 255), Color3.fromRGB(110, 200, 255)))
	trail.Name = "PolvoGalactico"
	trail.Speed = NumberRange.new(0, 0.2)
	trail.Lifetime = NumberRange.new(0.8, 1.6)
end
for _, name in { "Halo1", "Halo2" } do
	local b = findBone(name)
	if b then
		sparkles(b, 6, 0.5, ColorSequence.new(Color3.fromRGB(255, 225, 150)))
	end
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

-- Latido del diamante y anillos arcoíris ---------------------------------
RunService.Heartbeat:Connect(function()
	local t = os.clock()
	if light then
		light.Brightness = 2.5 + 1.2 * math.sin(t * 2.9) + 1.5 * math.max(math.sin(t * 1.4), 0) ^ 30
	end
	for i, ring in rings do
		ring.Color = Color3.fromHSV((t * 0.08 + i * 0.25) % 1, 0.35, 1)
	end
end)

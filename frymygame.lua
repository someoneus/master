-- deep fry your game (loud warning)
local parentFolder = game -- Change this to target a specific folder or model

-- Function to apply earrape & deep-fried effects to a Sound
local function applyEffects(sound)
    if sound:IsA("Sound") then



        -- Distortion Effect
        local distortion = Instance.new("DistortionSoundEffect")
        distortion.Level = 0.5 -- Full distortion
        distortion.Parent = sound

        -- Equalizer Effect (Deep-Fried Simulation)
        local equalizer = Instance.new("EqualizerSoundEffect")
        equalizer.HighGain = 5  -- Boost treble
        equalizer.LowGain = 5   -- Boost bass
        equalizer.MidGain = 10  -- Cut mids (Deep-Fried Effect)
        equalizer.Parent = sound

        -- Reverb Effect (Extra Deep-Fried Echo)
        local reverb = Instance.new("ReverbSoundEffect")
        reverb.DecayTime = 6 -- Longer reverb for deep effect
        reverb.Density = 1
        reverb.DryLevel = 5
        reverb.WetLevel = 2
        reverb.Parent = sound


    end
end

local lighting = game:GetService("Lighting")

-- Clear existing effects to prevent duplicates
for _, effect in ipairs(lighting:GetChildren()) do
    if effect:IsA("PostEffect") then
        effect:Destroy()
    end
end

-- **1. Color Correction (Extreme Contrast & Saturation)**
local colorCorrection = Instance.new("ColorCorrectionEffect")
colorCorrection.Brightness = 0.2
colorCorrection.Contrast = 5 -- EXTREME contrast
colorCorrection.Saturation = 2.5 -- Max saturation for deep-fry look
colorCorrection.TintColor = Color3.fromRGB(255, 250, 50) -- Yellowish tint for fried look
colorCorrection.Parent = lighting



-- **3. SunRays (Extreme Glow)**
local sunRays = Instance.new("SunRaysEffect")
sunRays.Intensity = 0 -- Max intensity for glowing edges
sunRays.Spread = 0.5 -- Full effect spread
sunRays.Parent = lighting

-- **4. Blur (Optional for Crazy Look)**
local blur = Instance.new("BlurEffect")
blur.Size = 1 -- Light blur for a slightly distorted look
blur.Parent = lighting

-- **5. Atmosphere (Make the world more vibrant)**
local atmosphere = Instance.new("Atmosphere")
atmosphere.Density = 0 -- Thickens the air for a hazy look
atmosphere.Offset = 0
atmosphere.Color = Color3.fromRGB(255, 100, 50) -- Fried Orange Tint
atmosphere.Decay = Color3.fromRGB(255, 0, 0) -- Adds a burnt-red tone
atmosphere.Glare = 1 -- Intense glare
atmosphere.Haze = 2 -- Light haze for a dreamy effect
atmosphere.Parent = lighting

print("frymygame.com:<enjoy the best experience ever!! :D>")


-- Apply effects to all existing Sounds in descendants
for _, obj in ipairs(parentFolder:GetDescendants()) do
    applyEffects(obj)
end

-- Listen for new sounds being added dynamically
parentFolder.DescendantAdded:Connect(function(obj)
    applyEffects(obj)
end)

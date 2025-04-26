--[[

# e

]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "!n",
    Icon = "chrome", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "!n Interface",
    LoadingSubtitle = "v1.1",
    Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = true,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })
 local Tab = Window:CreateTab("dev", "file-code")
 local Section = Tab:CreateSection("do not use on highly strict security game!")

 local Divider = Tab:CreateDivider()

 local Section = Tab:CreateSection("antilag.service")
 local Section = Tab:CreateSection("once pressed is irreversible, and it will keep doing it for new instances")
 local Button = Tab:CreateButton({
    Name = "Destroy mesh textureid",
    Callback = function()
        local function clearTexture(instance)
            if instance:IsA("MeshPart") then
                instance.TextureID = ""
            elseif instance:IsA("SpecialMesh") then
                instance.TextureId = ""
            end
        end
        
        for _, v in pairs(workspace:GetDescendants()) do
            clearTexture(v)
        end
        
        workspace.DescendantAdded:Connect(clearTexture)        
    end,
 })
 local Button = Tab:CreateButton({
    Name = "Low poly baseparts",
    Callback = function()
        local function setSmooth(instance)
            if instance:IsA("BasePart") then
                instance.Material = Enum.Material.SmoothPlastic
                instance.Reflectance = 0
                for _, face in ipairs({"TopSurface","BottomSurface","FrontSurface","BackSurface","LeftSurface","RightSurface"}) do
                    instance[face] = Enum.SurfaceType.Smooth
                end
            end
        end
        
        for _, v in ipairs(workspace:GetDescendants()) do
            setSmooth(v)
        end
        
        workspace.DescendantAdded:Connect(setSmooth)
        
    end,
 })

 local clearParticleButton = Tab:CreateButton({
    Name = "Clear ParticleEmitters",
    Callback = function()
        for _, v in ipairs(workspace:GetDescendants()) do
            if v:IsA("ParticleEmitter") then v:Destroy() end
        end
        workspace.DescendantAdded:Connect(function(inst)
            if inst:IsA("ParticleEmitter") then inst:Destroy() end
        end)
    end,
})

local clearBeamButton = Tab:CreateButton({
    Name = "Clear Beams",
    Callback = function()
        for _, v in ipairs(workspace:GetDescendants()) do
            if v:IsA("Beam") then v:Destroy() end
        end
        workspace.DescendantAdded:Connect(function(inst)
            if inst:IsA("Beam") then inst:Destroy() end
        end)
    end,
})

local clearFireButton = Tab:CreateButton({
    Name = "Clear Fire",
    Callback = function()
        for _, v in ipairs(workspace:GetDescendants()) do
            if v:IsA("Fire") then v:Destroy() end
        end
        workspace.DescendantAdded:Connect(function(inst)
            if inst:IsA("Fire") then inst:Destroy() end
        end)
    end,
})

local clearSmokeButton = Tab:CreateButton({
    Name = "Clear Smoke",
    Callback = function()
        for _, v in ipairs(workspace:GetDescendants()) do
            if v:IsA("Smoke") then v:Destroy() end
        end
        workspace.DescendantAdded:Connect(function(inst)
            if inst:IsA("Smoke") then inst:Destroy() end
        end)
    end,
})

local clearTrailButton = Tab:CreateButton({
    Name = "Clear Trails",
    Callback = function()
        for _, v in ipairs(workspace:GetDescendants()) do
            if v:IsA("Trail") then v:Destroy() end
        end
        workspace.DescendantAdded:Connect(function(inst)
            if inst:IsA("Trail") then inst:Destroy() end
        end)
    end,
})

local lighting = game:GetService("Lighting")

local btnDisableGlobalShadows = Tab:CreateButton({
    Name = "Disable Global Shadows",
    Callback = function()
        lighting.GlobalShadows = false
    end,
})

local btnSetFogEnd = Tab:CreateButton({
    Name = "Set FogEnd to 100000",
    Callback = function()
        lighting.FogEnd = 100000
    end,
})

local btnSetOutdoorAmbient = Tab:CreateButton({
    Name = "Set OutdoorAmbient to White",
    Callback = function()
        lighting.OutdoorAmbient = Color3.new(1, 1, 1)
    end,
})

local btnSetAmbient = Tab:CreateButton({
    Name = "Set Ambient to White",
    Callback = function()
        lighting.Ambient = Color3.new(1, 1, 1)
    end,
})

local btnSetShadowSoftness = Tab:CreateButton({
    Name = "Set ShadowSoftness to 0",
    Callback = function()
        lighting.ShadowSoftness = 0
    end,
})

local btnSetEnvDiffuseScale = Tab:CreateButton({
    Name = "Set EnvironmentDiffuseScale to 0",
    Callback = function()
        lighting.EnvironmentDiffuseScale = 0
    end,
})

local btnSetEnvSpecularScale = Tab:CreateButton({
    Name = "Set EnvironmentSpecularScale to 0",
    Callback = function()
        lighting.EnvironmentSpecularScale = 0
    end,
})

local btnSetBrightness = Tab:CreateButton({
    Name = "Set Brightness to 1",
    Callback = function()
        lighting.Brightness = 1
    end,
})

local btnSetClockTime = Tab:CreateButton({
    Name = "Set ClockTime to 12",
    Callback = function()
        lighting.ClockTime = 12
    end,
})

local btnSetExposureComp = Tab:CreateButton({
    Name = "Set ExposureCompensation to 0",
    Callback = function()
        lighting.ExposureCompensation = 0
    end,
})

local btnSetColorShiftBottom = Tab:CreateButton({
    Name = "Set ColorShift_Bottom to White",
    Callback = function()
        lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
    end,
})

local btnSetColorShiftTop = Tab:CreateButton({
    Name = "Set ColorShift_Top to White",
    Callback = function()
        lighting.ColorShift_Top = Color3.new(1, 1, 1)
    end,
})

local btnSetLegacyTechnology = Tab:CreateButton({
    Name = "Use Legacy Technology",
    Callback = function()
        lighting.Technology = Enum.Technology.Legacy
    end,
})

local lighting = game:GetService("Lighting")

local btnRemoveAtmosphere = Tab:CreateButton({
    Name = "Remove Atmosphere",
    Callback = function()
        for _, child in ipairs(lighting:GetChildren()) do
            if child:IsA("Atmosphere") then child:Destroy() end
        end
    end,
})

local btnRemoveBloom = Tab:CreateButton({
    Name = "Remove BloomEffect",
    Callback = function()
        for _, child in ipairs(lighting:GetChildren()) do
            if child:IsA("BloomEffect") then child:Destroy() end
        end
    end,
})

local btnRemoveColorCorrection = Tab:CreateButton({
    Name = "Remove ColorCorrectionEffect",
    Callback = function()
        for _, child in ipairs(lighting:GetChildren()) do
            if child:IsA("ColorCorrectionEffect") then child:Destroy() end
        end
    end,
})

local btnRemoveDepthOfField = Tab:CreateButton({
    Name = "Remove DepthOfFieldEffect",
    Callback = function()
        for _, child in ipairs(lighting:GetChildren()) do
            if child:IsA("DepthOfFieldEffect") then child:Destroy() end
        end
    end,
})

local btnRemoveSunRays = Tab:CreateButton({
    Name = "Remove SunRaysEffect",
    Callback = function()
        for _, child in ipairs(lighting:GetChildren()) do
            if child:IsA("SunRaysEffect") then child:Destroy() end
        end
    end,
})

local btnRemoveBlur = Tab:CreateButton({
    Name = "Remove BlurEffect",
    Callback = function()
        for _, child in ipairs(lighting:GetChildren()) do
            if child:IsA("BlurEffect") then child:Destroy() end
        end
    end,
})

local btnRemoveSky = Tab:CreateButton({
    Name = "Remove Sky",
    Callback = function()
        for _, child in ipairs(lighting:GetChildren()) do
            if child:IsA("Sky") then child:Destroy() end
        end
    end,
})

local lighting = game:GetService("Lighting")

local btnRemoveDecals = Tab:CreateButton({
    Name = "Remove Decals",
    Callback = function()
        for _, child in ipairs(workspace:GetDescendants()) do
            if child:IsA("Decal") then child:Destroy() end
        end
        workspace.DescendantAdded:Connect(function(inst)
            if inst:IsA("Decal") then inst:Destroy() end
        end)
    end,
})

local btnRemoveTextures = Tab:CreateButton({
    Name = "Remove Texture Instances",
    Callback = function()
        for _, child in ipairs(workspace:GetDescendants()) do
            if child:IsA("Texture") then child:Destroy() end
        end
        workspace.DescendantAdded:Connect(function(inst)
            if inst:IsA("Texture") then inst:Destroy() end
        end)
    end,
})

local btnRemoveSounds = Tab:CreateButton({
    Name = "Remove Sounds",
    Callback = function()
        for _, child in ipairs(workspace:GetDescendants()) do
            if child:IsA("Sound") then child:Destroy() end
        end
        workspace.DescendantAdded:Connect(function(inst)
            if inst:IsA("Sound") then inst:Destroy() end
        end)
    end,
})

local btnRemoveSparkles = Tab:CreateButton({
    Name = "Remove Sparkles",
    Callback = function()
        for _, child in ipairs(workspace:GetDescendants()) do
            if child:IsA("Sparkles") then child:Destroy() end
        end
        workspace.DescendantAdded:Connect(function(inst)
            if inst:IsA("Sparkles") then inst:Destroy() end
        end)
    end,
})

local btnRemoveLights = Tab:CreateButton({
    Name = "Remove All Lights",
    Callback = function()
        for _, child in ipairs(workspace:GetDescendants()) do
            if child:IsA("Light")
            or child:IsA("SpotLight")
            or child:IsA("SurfaceLight") then
                child:Destroy()
            end
        end
        workspace.DescendantAdded:Connect(function(inst)
            if inst:IsA("Light")
            or inst:IsA("SpotLight")
            or inst:IsA("SurfaceLight") then
                inst:Destroy()
            end
        end)
    end,
})


local btnRemoveConstraints = Tab:CreateButton({
    Name = "Remove All Constraints",
    Callback = function()
        for _, child in ipairs(workspace:GetDescendants()) do
            if child:IsA("Constraint") then child:Destroy() end
        end
        workspace.DescendantAdded:Connect(function(inst)
            if inst:IsA("Constraint") then inst:Destroy() end
        end)
    end,
})

local btnSetSurfaceGuiDistance = Tab:CreateButton({
    Name = "Set SurfaceGui MaxDistance to 64",
    Callback = function()
        for _, gui in ipairs(workspace:GetDescendants()) do
            if gui:IsA("SurfaceGui") then
                gui.MaxDistance = 64
            end
        end
    end,
})

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

local safeParents = {workspace, localPlayer:WaitForChild("PlayerGui")}

local function safeDescendants()
    local all = {}
    for _, parent in ipairs(safeParents) do
        for _, child in ipairs(parent:GetDescendants()) do
            table.insert(all, child)
        end
    end
    return all
end

local btnRemoveUICorner = Tab:CreateButton({
    Name = "Remove UICorner",
    Callback = function()
        for _, ui in ipairs(safeDescendants()) do
            if ui:IsA("UICorner") then
                ui:Destroy()
            end
        end
    end,
})

local btnRemoveUIStroke = Tab:CreateButton({
    Name = "Remove UIStroke",
    Callback = function()
        for _, ui in ipairs(safeDescendants()) do
            if ui:IsA("UIStroke") then
                ui:Destroy()
            end
        end
    end,
})

local btnRemoveUIGradient = Tab:CreateButton({
    Name = "Remove UIGradient",
    Callback = function()
        for _, ui in ipairs(safeDescendants()) do
            if ui:IsA("UIGradient") then
                ui:Destroy()
            end
        end
    end,
})

local btnSetBillboardGuiDistance = Tab:CreateButton({
    Name = "Set BillboardGui MaxDistance to 128",
    Callback = function()
        for _, gui in ipairs(workspace:GetDescendants()) do
            if gui:IsA("BillboardGui") then
                gui.MaxDistance = 128
            end
        end
    end,
})


local Divider = Tab:CreateDivider()

local Section = Tab:CreateSection("exploits")
local teleportInput
teleportInput = Tab:CreateInput({
    Name = "goto Player",
    CurrentValue = "",
    PlaceholderText = "Enter player name",
    RemoveTextAfterFocusLost = false,
    Flag = "TeleportInput",
    Callback = function(text)
        local search = text:lower()
        local players = game:GetService("Players")
        local localPlayer = players.LocalPlayer
        local target
        for _, p in ipairs(players:GetPlayers()) do
            if p.Name:lower():find(search, 1, true) then
                target = p
                break
            end
        end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            local hrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                hrp.CFrame = target.Character.HumanoidRootPart.CFrame
            end
        end
    end,
})

local players = game:GetService("Players")
local localPlayer = players.LocalPlayer

local sliderHipHeight = Tab:CreateSlider({
    Name = "HipHeight",
    Range = {0, 128},
    Increment = 0.5,
    Suffix = "Studs",
    CurrentValue = 2,
    Flag = "HipHeightSlider",
    Callback = function(value)
        local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.HipHeight = value
        end
    end,
})

local sliderJumpPower = Tab:CreateSlider({
    Name = "JumpPower",
    Range = {0, 2048},
    Increment = 1,
    Suffix = "Power",
    CurrentValue = 50,
    Flag = "JumpPowerSlider",
    Callback = function(value)
        local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.JumpPower = value
        end
    end,
})

local sliderWalkSpeed = Tab:CreateSlider({
    Name = "WalkSpeed",
    Range = {0, 512},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "WalkSpeedSlider",
    Callback = function(value)
        local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = value
        end
    end,
})
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

local savedCFrame = nil
local characterAddedConn = nil
local diedConn = nil

local toggleKeepPosition = Tab:CreateToggle({
    Name = "Flashback on Death",
    CurrentValue = false,
    Flag = "KeepCFrameToggle",
    Callback = function(state)
        if state then
            local function setupCharacter(character)
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    diedConn = humanoid.Died:Connect(function()
                        local hrp = character:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            savedCFrame = hrp.CFrame
                        end
                    end)
                end
                if savedCFrame then
                    local hrp = character:WaitForChild("HumanoidRootPart", 5)
                    if hrp then
                        task.wait(0.1)
                        hrp.CFrame = savedCFrame
                        Rayfield:Notify({
                            Title = "Flashback Activated",
                            Content = "at "..tostring(savedCFrame),
                            Duration = 2.5,
                            Image = "zap",
                         })
                    end
                end
            end

            if localPlayer.Character then
                setupCharacter(localPlayer.Character)
            end
            characterAddedConn = localPlayer.CharacterAdded:Connect(setupCharacter)

        else
            savedCFrame = nil
            if characterAddedConn then
                characterAddedConn:Disconnect()
                characterAddedConn = nil
            end
            if diedConn then
                diedConn:Disconnect()
                diedConn = nil
            end
        end
    end,
})
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local respawnConnections = {}
local characterAddedConn

local QuickRespawnToggle = Tab:CreateToggle({
    Name = "Quick Respawn",
    CurrentValue = false,
    Flag = "QuickRespawn",
    Callback = function(enabled)
        for _, c in ipairs(respawnConnections) do c:Disconnect() end
        respawnConnections = {}
        if characterAddedConn then
            characterAddedConn:Disconnect()
            characterAddedConn = nil
        end
        if enabled then
            if player.Character then
                local hum = player.Character:FindFirstChildOfClass("Humanoid")
                if hum then
                    table.insert(respawnConnections, hum.Died:Connect(function()
                        player:LoadCharacter()
                    end))
                end
            end
            characterAddedConn = player.CharacterAdded:Connect(function(char)
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum then
                    table.insert(respawnConnections, hum.Died:Connect(function()
                        player:LoadCharacter()
                    end))
                end
            end)
        end
    end,
})


local Divider = Tab:CreateDivider()

local Section = Tab:CreateSection("misc")

local mthres = Tab:CreateSection("math.result: nil")
local Input
Input = Tab:CreateInput({
    Name = "quick calculator",
    CurrentValue = "",
    PlaceholderText = "Enter math expression",
    RemoveTextAfterFocusLost = true,
    Flag = "MathInput",
    Callback = function(Text)
        -- sanitize: allow only digits, operators, dots and parentheses
        local expr = Text:gsub("[^%d%+%-%*%/%^%.%(%) ]", "")
        -- try to compile
        local fn, err = loadstring("return " .. expr)
        if fn then
            local ok, result = pcall(fn)
            if ok and result ~= nil then
                mthres:Set("math.result: "..tostring(result))
                result = nil
            else
                mthres:Set("math.result: Error")
            end
        else
            mthres:Set("math.result: Error")
        end
    end,
})

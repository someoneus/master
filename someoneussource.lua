local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = game.Workspace.CurrentCamera


-- Function to generate a random key without spaces
local function GenerateRandomString()
    local letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    local randomString = ""

    for i = 1, 5 do
        local randomIndex = math.random(1, #letters)
        randomString = randomString .. string.sub(letters, randomIndex, randomIndex)
    end

    return randomString
end

-- Function to apply strikethrough with spacing (starts on first letter, stops before last)
local function applyStrikethrough(text)
    local newText = ""

    for i = 1, #text - 1 do
        newText = newText .. text:sub(i, i) .. "̶ " -- Apply strikethrough and add space
    end

    newText = newText .. text:sub(#text, #text) -- Last letter remains normal
    return newText
end

-- Generate the key and modify it
local realKey = GenerateRandomString()
local Key = applyStrikethrough(realKey)
local Key = Key.." (Case Sensitive)"


local Window = ArrayField:CreateWindow({
   Name = "Someoneus's Dungeon",
   LoadingTitle = "Someoneus's Dungeon",
   LoadingSubtitle = "by someoneus",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "someoneusdungeon"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "someoneus's dungeon",
      Subtitle = "Key is "..Key,
      Note = "key is "..Key,
      FileName = "someoneusdungeonkey", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
      Actions = {
            [1] = {
                Text = 'this does nothing',
                OnPress = function()
                -- nothing
                end,
                }
            },
      Key = {realKey} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
local Label = Tab:CreateLabel("Powered by Arrayfield")


local Section = Tab:CreateSection("Tracer",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera

-- Tracer Data
local Tracers = {}
local PlayerTracerEnabled = false
local NPCTracerEnabled = false
local UpdateConnection

-- Function to Remove Tracers for Disconnected Targets
local function RemoveInvalidTracers()
    for target, line in pairs(Tracers) do
        local shouldRemove = false

        if target:IsA("Player") then
            if not target.Parent or not target.Character or not target.Character:FindFirstChild("HumanoidRootPart") then
                shouldRemove = true -- Player is gone or missing root part
            end
        elseif target:IsA("Humanoid") then
            if not target.Parent or not target.Parent:FindFirstChild("HumanoidRootPart") then
                shouldRemove = true -- NPC is gone or missing root part
            end
        else
            shouldRemove = true -- Unknown object type
        end

        if shouldRemove then
            line:Remove()
            Tracers[target] = nil
        end
    end
end

-- Function to Update Tracers
local function UpdateTracers()
    if not (PlayerTracerEnabled or NPCTracerEnabled) then return end

    RemoveInvalidTracers() -- Remove tracers with no valid targets

    for target, line in pairs(Tracers) do
        local rootPart = nil

        if target:IsA("Player") and target.Character then
            rootPart = target.Character:FindFirstChild("HumanoidRootPart")
        elseif target:IsA("Humanoid") and target.Parent then
            rootPart = target.Parent:FindFirstChild("HumanoidRootPart") or target.Parent:FindFirstChild("Torso")
        end

        if rootPart then
            local distance = (Camera.CFrame.Position - rootPart.Position).Magnitude
            local rootPos, onScreen = Camera:WorldToViewportPoint(rootPart.Position)
            local screenCenter = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

            if onScreen then
                -- Color changes from Red (close) → Blue (far)
                local blueValue = math.clamp(distance * 1.25, 0, 255)
                local tracerColor = Color3.fromRGB(255 - blueValue, 0, blueValue)

                line.Color = tracerColor
                line.From = screenCenter
                line.To = Vector2.new(rootPos.X, rootPos.Y)
                line.Visible = true
            else
                line.Visible = false
            end
        end
    end
end

-- Function to Start or Stop the Update Loop
local function UpdateTracerState()
    if PlayerTracerEnabled or NPCTracerEnabled then
        if not UpdateConnection then
            UpdateConnection = RunService.Heartbeat:Connect(UpdateTracers)
        end
    else
        if UpdateConnection then
            UpdateConnection:Disconnect()
            UpdateConnection = nil
        end

        -- Clear tracers
        for _, line in pairs(Tracers) do
            line:Remove()
        end
        Tracers = {}
    end
end

-- Function to Track Players
local function TrackPlayer(player)
    if player ~= Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local line = Drawing.new("Line")
        line.Thickness = 2
        line.Transparency = 1
        line.Visible = false
        Tracers[player] = line
    end

    player.CharacterAdded:Connect(function(character)
        local rootPart = character:WaitForChild("HumanoidRootPart", 10)
        if rootPart and PlayerTracerEnabled then
            local line = Drawing.new("Line")
            line.Thickness = 2
            line.Transparency = 1
            line.Visible = false
            Tracers[player] = line
        end
    end)
end

-- Toggle Player Tracers
local TogglePlayers = Tab:CreateToggle({
    Name = "Player Tracers",
    CurrentValue = false,
    Flag = "TogglePlayerTracers",
    Callback = function(Value)
        PlayerTracerEnabled = Value

        if PlayerTracerEnabled then
            for _, player in pairs(Players:GetPlayers()) do
                TrackPlayer(player)
            end

            Players.PlayerAdded:Connect(TrackPlayer)
            Players.PlayerRemoving:Connect(function(player)
                if Tracers[player] then
                    Tracers[player]:Remove()
                    Tracers[player] = nil
                end
            end)
        else
            for target, line in pairs(Tracers) do
                if target:IsA("Player") then
                    line:Remove()
                    Tracers[target] = nil
                end
            end
        end

        UpdateTracerState()
    end
})

-- Function to Track NPCs
local function TrackNPC(humanoid)
    if humanoid and humanoid.Parent and not Players:FindFirstChild(humanoid.Parent.Name) then
        local rootPart = humanoid.Parent:FindFirstChild("HumanoidRootPart") or humanoid.Parent:FindFirstChild("Torso")
        if rootPart then
            local line = Drawing.new("Line")
            line.Thickness = 2
            line.Transparency = 1
            line.Visible = false
            Tracers[humanoid] = line

            humanoid.Died:Connect(function()
                if Tracers[humanoid] then
                    Tracers[humanoid]:Remove()
                    Tracers[humanoid] = nil
                end
            end)
        end
    end
end

-- Toggle NPC Tracers
local ToggleNPCs = Tab:CreateToggle({
    Name = "NPC Tracers",
    CurrentValue = false,
    Flag = "ToggleNPCTracers",
    Callback = function(Value)
        NPCTracerEnabled = Value

        if NPCTracerEnabled then
            for _, obj in pairs(workspace:GetDescendants()) do
                if obj:IsA("Humanoid") then
                    TrackNPC(obj)
                end
            end

            workspace.DescendantAdded:Connect(function(obj)
                if obj:IsA("Humanoid") then
                    TrackNPC(obj)
                end
            end)
        else
            for target, line in pairs(Tracers) do
                if target:IsA("Humanoid") then
                    line:Remove()
                    Tracers[target] = nil
                end
            end
        end

        UpdateTracerState()
    end
})

-- Start the update loop only if enabled
UpdateTracerState()


local FixTracerLines = Tab:CreateButton({
    Name = "Fix Tracer Lines (kinda broken)",
    Interact = 'Click',
    Callback = function()
        for target, line in pairs(Tracers) do
            if line then
                -- Check if the line hasn't moved recently (i.e., stuck on screen)
                if line.Visible and line.From == line.To then
                    pcall(function() line:Remove() end) -- Safely remove stuck lines
                else
                    pcall(function() line:Remove() end) -- Remove normal tracers
                end
            end
            Tracers[target] = nil
        end
    end,
})


local Section = Tab:CreateSection("Labels",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element


-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Toggle State
local LabelEnabled = false
local Player = Players.LocalPlayer

-- Function to create the text label above the target's head 
local function createLabel(character)
    if not character then return end
    local head = character:WaitForChild("Head", 10)
    local hrp = character:WaitForChild("HumanoidRootPart", 10)
    if not head or not hrp then return end

    -- Prevent duplicate labels
    if head:FindFirstChild("PlayerLabel") then return end

    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "PlayerLabel"
    billboardGui.Adornee = head
    billboardGui.Parent = head
    billboardGui.Size = UDim2.new(16, 0, 4, 0)
    billboardGui.StudsOffset = Vector3.new(0, 5, 0)
    billboardGui.AlwaysOnTop = true  -- Ensures the label shows through walls

    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = billboardGui
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextScaled = true
    textLabel.TextStrokeTransparency = 0
    textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    textLabel.Text = ""
end

-- Function to update the label's information
local function updateLabel(character)
    if not character then return end
    local head = character:FindFirstChild("Head")
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if head and hrp and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
        local distance = (hrp.Position - Player.Character.HumanoidRootPart.Position).Magnitude
        local targetName = character.Name

        local billboardGui = head:FindFirstChild("PlayerLabel")
        if billboardGui then
            local textLabel = billboardGui:FindFirstChildOfClass("TextLabel")
            if textLabel then
                -- Calculate color: from red (far) to green (close)
                local greenValue = math.clamp(255 - (distance * 1.5), 0, 255)
                local labelColor = Color3.fromRGB(255 - greenValue, greenValue, 0)
                textLabel.Text = targetName .. " ┃ " .. math.floor(distance) .. " studs"
                textLabel.TextColor3 = labelColor
            end
        end
    end
end

-- Function to remove the label
local function removeLabel(character)
    if not character then return end
    local head = character:FindFirstChild("Head")
    if head then
        local billboardGui = head:FindFirstChild("PlayerLabel")
        if billboardGui then
            billboardGui:Destroy()
        end
    end
end

-- ** Toggle UI Element **
local ToggleLabels = Tab:CreateToggle({
    Name = "Player Labels",
    CurrentValue = false,
    Flag = "TogglePlayerLabels",
    Callback = function(Value)
        LabelEnabled = Value

        if LabelEnabled then
            -- Create labels for all current players
            for _, otherPlayer in pairs(Players:GetPlayers()) do
                if otherPlayer ~= Player and otherPlayer.Character then
                    createLabel(otherPlayer.Character)
                end
            end
        else
            -- Remove labels from all players
            for _, otherPlayer in pairs(Players:GetPlayers()) do
                if otherPlayer ~= Player and otherPlayer.Character then
                    removeLabel(otherPlayer.Character)
                end
            end
        end
    end
})

-- Connect CharacterAdded for players joining and respawning
Players.PlayerAdded:Connect(function(otherPlayer)
    if otherPlayer ~= Player then
        otherPlayer.CharacterAdded:Connect(function(character)
            -- Wait for essential parts to load before creating the label
            character:WaitForChild("Head", 10)
            character:WaitForChild("HumanoidRootPart", 10)
            if LabelEnabled then
                createLabel(character)
            end
        end)
    end
end)

-- Also handle players who already exist in the game
for _, otherPlayer in pairs(Players:GetPlayers()) do
    if otherPlayer ~= Player then
        otherPlayer.CharacterAdded:Connect(function(character)
            character:WaitForChild("Head", 10)
            character:WaitForChild("HumanoidRootPart", 10)
            if LabelEnabled then
                createLabel(character)
            end
        end)
    end
end

-- Clean up label when a player is leaving
Players.PlayerRemoving:Connect(function(otherPlayer)
    if otherPlayer.Character then
        removeLabel(otherPlayer.Character)
    end
end)

-- Update labels every frame using RenderStepped
RunService.RenderStepped:Connect(function()
    if LabelEnabled then
        for _, otherPlayer in pairs(Players:GetPlayers()) do
            if otherPlayer ~= Player and otherPlayer.Character then
                updateLabel(otherPlayer.Character)
            end
        end
    end
end)



-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- NPC Storage Table
local npcModels = {}

-- Toggle Variable
local isLabelEnabled = false

-- Function to create the text label above an NPC's head
local function createLabel(model)
    if not model or not isLabelEnabled then return end
    local head = model:FindFirstChild("Head") or model:WaitForChild("Head", 10)
    local hrp = model:FindFirstChild("HumanoidRootPart") or model:WaitForChild("HumanoidRootPart", 10)
    if not head or not hrp then return end

    if hrp:FindFirstChild("NPCLabel") then return end

    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "NPCLabel"
    billboardGui.Adornee = hrp
    billboardGui.Parent = hrp
    billboardGui.Size = UDim2.new(16, 0, 4, 0)
    billboardGui.StudsOffset = Vector3.new(0, 5, 0)
    billboardGui.AlwaysOnTop = true

    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = billboardGui
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextScaled = true
    textLabel.TextStrokeTransparency = 0
    textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    textLabel.Text = ""
end

-- Function to update the NPC label
local function updateLabel(model)
    if not model then return end
    local hrp = model:FindFirstChild("HumanoidRootPart")
    if hrp and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local distance = (hrp.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local targetName = model.Name

        local billboardGui = hrp:FindFirstChild("NPCLabel")
        if billboardGui then
            local textLabel = billboardGui:FindFirstChildOfClass("TextLabel")
            if textLabel then
                -- Color changes from red (far) to green (close)
                local greenValue = math.clamp(255 - (distance * 1.5), 0, 255)
                local labelColor = Color3.fromRGB(255 - greenValue, greenValue, 0)
                textLabel.Text = targetName .. " ┃ " .. math.floor(distance) .. " studs"
                textLabel.TextColor3 = labelColor
            end
        end
    end
end

-- Function to remove the NPC label
local function removeLabel(model)
    if not model then return end
    local hrp = model:FindFirstChild("HumanoidRootPart")
    if hrp then
        local billboardGui = hrp:FindFirstChild("NPCLabel")
        if billboardGui then
            billboardGui:Destroy()
        end
    end
end

-- Detect existing NPCs
local function detectExistingNPCs()
    for _, character in pairs(workspace:GetChildren()) do
        if character:IsA("Model") then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and not Players:GetPlayerFromCharacter(character) then
                npcModels[character] = true
                if isLabelEnabled then
                    createLabel(character)
                end
            end
        end
    end
end

-- Handle new NPCs
local function tryAddNPC(character)
    task.spawn(function()
        if character:IsA("Model") and character:FindFirstChildOfClass("Humanoid") then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and not Players:GetPlayerFromCharacter(character) then
                npcModels[character] = true
                character:WaitForChild("Head", 10)
                character:WaitForChild("HumanoidRootPart", 10)
                if isLabelEnabled then
                    createLabel(character)
                end
            end
        end
    end)
end

-- Detect NPCs on startup
detectExistingNPCs()

-- Listen for NPCs being added/removed
workspace.ChildAdded:Connect(function(child)
    tryAddNPC(child)
end)

workspace.ChildRemoved:Connect(function(child)
    if npcModels[child] then
        removeLabel(child)
        npcModels[child] = nil
    end
end)

-- Toggle Button Integration
local Toggle = Tab:CreateToggle({
   Name = "NPC Labels (kinda working)",
   CurrentValue = false,
   Flag = "NPCLabels",
   Callback = function(Value)
       isLabelEnabled = Value

       if isLabelEnabled then
           for model, _ in pairs(npcModels) do
               createLabel(model)
           end
       else
           for model, _ in pairs(npcModels) do
               removeLabel(model)
           end
       end
   end,
})

-- Update labels every frame using RenderStepped
RunService.RenderStepped:Connect(function()
    if isLabelEnabled then
        for model, _ in pairs(npcModels) do
            if model and model.Parent then
                updateLabel(model)
            else
                npcModels[model] = nil
            end
        end
    end
end)

local Section = Tab:CreateSection("ESP",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = game.Workspace.CurrentCamera

-- ESP Storage Tables
local Player_Boxes = {}
local Player_FacingLines = {}

-- Toggle Variable
local ESP_Enabled = false

-- Function to create ESP elements
local function CreateESPElements(player)
    if not player or not player.Character then return end
    local model = player.Character

    if Player_Boxes[model] then return end -- Avoid duplicates

    -- Box
    local box = Drawing.new("Square")
    box.Thickness = 2
    box.Color = Color3.fromRGB(0, 255, 0)
    box.Filled = false
    box.Visible = false
    box.OutlineColor = Color3.fromRGB(0, 0, 0)
    box.OutlineTransparency = 0

    -- Facing Line (Shows Player's facing direction)
    local facingLine = Drawing.new("Line")
    facingLine.Thickness = 3
    facingLine.Color = Color3.fromRGB(255, 0, 0)
    facingLine.Visible = false

    Player_Boxes[model] = box
    Player_FacingLines[model] = facingLine

    -- Cleanup ESP when player dies
    local humanoid = model:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.Died:Connect(function()
            RemoveESPElements(model)
        end)
    end

end

-- Function to remove ESP elements
local function RemoveESPElements(model)
    if Player_Boxes[model] then
        Player_Boxes[model]:Remove()
        Player_Boxes[model] = nil
    end
    if Player_FacingLines[model] then
        Player_FacingLines[model]:Remove()
        Player_FacingLines[model] = nil
    end
end

-- Function to update ESP
local function UpdateESP()
    if not ESP_Enabled then return end

    for model, box in pairs(Player_Boxes) do
        if model and model.Parent and model:FindFirstChild("HumanoidRootPart") then
            local rootPart = model.HumanoidRootPart
            local head = model:FindFirstChild("Head") or rootPart
            local humanoid = model:FindFirstChildOfClass("Humanoid")

            if humanoid then
                -- Define bounding box
                local boundingBoxCorners = {
                    Vector3.new(-2, 3, -1),
                    Vector3.new(2, 3, -1),
                    Vector3.new(-2, -3, -1),
                    Vector3.new(2, -3, -1),
                    Vector3.new(-2, 3, 1),
                    Vector3.new(2, 3, 1),
                    Vector3.new(-2, -3, 1),
                    Vector3.new(2, -3, 1)
                }

                local minX, minY = math.huge, math.huge
                local maxX, maxY = -math.huge, -math.huge
                local onScreen = false

                for _, corner in ipairs(boundingBoxCorners) do
                    local worldPos = rootPart.CFrame:PointToWorldSpace(corner)
                    local screenPos, isOnScreen = Camera:WorldToViewportPoint(worldPos)
                    if isOnScreen then
                        onScreen = true
                        minX = math.min(minX, screenPos.X)
                        minY = math.min(minY, screenPos.Y)
                        maxX = math.max(maxX, screenPos.X)
                        maxY = math.max(maxY, screenPos.Y)
                    end
                end

                if onScreen then
                    box.Visible = true
                    box.Size = Vector2.new(maxX - minX, maxY - minY)
                    box.Position = Vector2.new(minX, minY)
                else
                    box.Visible = false
                end

                -- Update facing direction line
                local startPos = head.Position
                local endPos = startPos + (head.CFrame.LookVector * 2) -- Extend 2 studs in front
                local screenStart, isStartOnScreen = Camera:WorldToViewportPoint(startPos)
                local screenEnd, isEndOnScreen = Camera:WorldToViewportPoint(endPos)

                if isStartOnScreen and isEndOnScreen then
                    Player_FacingLines[model].Visible = true
                    Player_FacingLines[model].From = Vector2.new(screenStart.X, screenStart.Y)
                    Player_FacingLines[model].To = Vector2.new(screenEnd.X, screenEnd.Y)
                else
                    Player_FacingLines[model].Visible = false
                end
            end
        else
            RemoveESPElements(model)
        end
    end
end

-- Function to track players
local function TrackPlayer(player)
    -- Ensure ESP elements exist
    CreateESPElements(player)

    -- Only show ESP when enabled
    if ESP_Enabled then
        local box = Player_Boxes[player.Character]
        local facingLine = Player_FacingLines[player.Character]
        if box then box.Visible = true end
        if facingLine then facingLine.Visible = true end
    end
end

local function UntrackPlayer(player)
    if player.Character then
        RemoveESPElements(player.Character)
    end
end

-- Toggle ESP function
local function ToggleESP(Value)
    ESP_Enabled = Value

    if ESP_Enabled then
        -- Show ESP for existing players
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= Players.LocalPlayer then
                TrackPlayer(player)
            end
        end

        -- Start updating ESP
        RunService:BindToRenderStep("UpdatePlayerESP", Enum.RenderPriority.Camera.Value, UpdateESP)
    else
        -- Disable ESP
        RunService:UnbindFromRenderStep("UpdatePlayerESP")

        -- Hide all ESP elements
        for model, box in pairs(Player_Boxes) do
            if box then box.Visible = false end
        end
        for model, line in pairs(Player_FacingLines) do
            if line then line.Visible = false end
        end
    end
end

Players.PlayerAdded:Connect(function(player)
    -- Track existing player if they are already loaded
    if player.Character then
        TrackPlayer(player)
    end

    -- Re-track when the player respawns
    player.CharacterAdded:Connect(function()
        TrackPlayer(player)
    end)
end)


-- Toggle Button Integration
local Toggle = Tab:CreateToggle({
   Name = "Player ESP",
   CurrentValue = false,
   Flag = "PlayerESP",
   Callback = function(Value)
       ToggleESP(Value)
   end,
})

-- Update labels every frame using RenderStepped
RunService.Heartbeat:Connect(UpdateESP)





-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = game.Workspace.CurrentCamera

-- ESP Storage Tables
local NPC_Boxes = {}
local NPC_FacingLines = {}

-- Toggle Variable
local ESP_Enabled = false

-- Function to create ESP elements
local function CreateESPElements(model)
    if NPC_Boxes[model] then return end -- Avoid duplicates

    -- Box
    local box = Drawing.new("Square")
    box.Thickness = 2
    box.Color = Color3.fromRGB(0, 255, 0)
    box.Filled = false
    box.Visible = false
    box.OutlineColor = Color3.fromRGB(0, 0, 0)
    box.OutlineTransparency = 0

    -- Facing Line (Shows NPC's facing direction)
    local facingLine = Drawing.new("Line")
    facingLine.Thickness = 3
    facingLine.Color = Color3.fromRGB(255, 0, 0)
    facingLine.Visible = false

    NPC_Boxes[model] = box
    NPC_FacingLines[model] = facingLine

    -- Cleanup ESP when NPC dies
    local humanoid = model:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.Died:Connect(function()
            RemoveESPElements(model)
        end)
    end
end

-- Function to remove ESP elements
local function RemoveESPElements(model)
    if NPC_Boxes[model] then
        NPC_Boxes[model]:Remove()
        NPC_Boxes[model] = nil
    end
    if NPC_FacingLines[model] then
        NPC_FacingLines[model]:Remove()
        NPC_FacingLines[model] = nil
    end
end

-- Function to update ESP
local function UpdateESP()
    if not ESP_Enabled then return end

    for model, box in pairs(NPC_Boxes) do
        if model and model.Parent and model:FindFirstChild("HumanoidRootPart") then
            local rootPart = model.HumanoidRootPart
            local head = model:FindFirstChild("Head") or rootPart
            local humanoid = model:FindFirstChildOfClass("Humanoid")

            if humanoid then
                -- Define NPC bounding box
                local boundingBoxCorners = {
                    Vector3.new(-2, 3, -1),
                    Vector3.new(2, 3, -1),
                    Vector3.new(-2, -3, -1),
                    Vector3.new(2, -3, -1),
                    Vector3.new(-2, 3, 1),
                    Vector3.new(2, 3, 1),
                    Vector3.new(-2, -3, 1),
                    Vector3.new(2, -3, 1)
                }

                local minX, minY = math.huge, math.huge
                local maxX, maxY = -math.huge, -math.huge
                local onScreen = false

                for _, corner in ipairs(boundingBoxCorners) do
                    local worldPos = rootPart.CFrame:PointToWorldSpace(corner)
                    local screenPos, isOnScreen = Camera:WorldToViewportPoint(worldPos)
                    if isOnScreen then
                        onScreen = true
                        minX = math.min(minX, screenPos.X)
                        minY = math.min(minY, screenPos.Y)
                        maxX = math.max(maxX, screenPos.X)
                        maxY = math.max(maxY, screenPos.Y)
                    end
                end

                if onScreen then
                    box.Visible = true
                    box.Size = Vector2.new(maxX - minX, maxY - minY)
                    box.Position = Vector2.new(minX, minY)
                else
                    box.Visible = false
                end

                -- Update facing direction line
                local startPos = head.Position
                local endPos = startPos + (head.CFrame.LookVector * 2) -- Extend 2 studs in front
                local screenStart, isStartOnScreen = Camera:WorldToViewportPoint(startPos)
                local screenEnd, isEndOnScreen = Camera:WorldToViewportPoint(endPos)

                if isStartOnScreen and isEndOnScreen then
                    NPC_FacingLines[model].Visible = true
                    NPC_FacingLines[model].From = Vector2.new(screenStart.X, screenStart.Y)
                    NPC_FacingLines[model].To = Vector2.new(screenEnd.X, screenEnd.Y)
                else
                    NPC_FacingLines[model].Visible = false
                end
            end
        else
            RemoveESPElements(model)
        end
    end
end

-- Function to handle NPC tracking
local function OnDescendantAdded(descendant)
    if not ESP_Enabled then return end
    if descendant:IsA("Humanoid") then
        local character = descendant.Parent
        if character and not Players:GetPlayerFromCharacter(character) then
            CreateESPElements(character)
        end
    end
end

local function OnDescendantRemoving(descendant)
    if descendant:IsA("Humanoid") then
        local character = descendant.Parent
        RemoveESPElements(character)
    end
end

-- Toggle ESP function
local function ToggleESP(Value)
    ESP_Enabled = Value

    if ESP_Enabled then
        -- Enable ESP
        for _, descendant in ipairs(workspace:GetDescendants()) do
            if descendant:IsA("Humanoid") then
                local character = descendant.Parent
                if character and not Players:GetPlayerFromCharacter(character) then
                    CreateESPElements(character)
                end
            end
        end

        -- Connect events
        ConnectionAdded = workspace.DescendantAdded:Connect(OnDescendantAdded)
        ConnectionRemoving = workspace.DescendantRemoving:Connect(OnDescendantRemoving)

        -- Start updating ESP
        RunService:BindToRenderStep("UpdateNPCESP", Enum.RenderPriority.Camera.Value, UpdateESP)
    else
        -- Disable ESP
        RunService:UnbindFromRenderStep("UpdateNPCESP")

        -- Disconnect events
        if ConnectionAdded then ConnectionAdded:Disconnect() end
        if ConnectionRemoving then ConnectionRemoving:Disconnect() end

        -- Remove all ESP elements
        for model in pairs(NPC_Boxes) do
            RemoveESPElements(model)
        end
    end
end

-- Toggle Button Integration
local Toggle = Tab:CreateToggle({
   Name = "NPC ESP",
   CurrentValue = false,
   Flag = "NPCESP",
   Callback = function(Value)
       ToggleESP(Value)
   end,
})

-- Update labels every frame using RenderStepped
RunService.RenderStepped:Connect(UpdateESP)
local Section = Tab:CreateSection("Ruiner",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function GetRootPart()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    return character:WaitForChild("HumanoidRootPart", 10)
end

local tweakspeed = 0.05  -- Set shaking speed
local tweakpower = 90    -- Maximum rotation power

local Toggle = Tab:CreateToggle({
   Name = "Vehicle Ruiner",
   CurrentValue = false,
   Flag = "ShakingToggle",
   Callback = function(state)
       isRotating = state  -- Update shaking state

       if isRotating then
           task.spawn(function()
               while isRotating do
                   task.wait(tweakspeed)  -- Shaking speed

                   local rootPart = GetRootPart()  -- Always get the latest rootPart

                   if rootPart then  -- Prevent errors if player dies
                       local offsetX = math.random(-tweakpower, tweakpower)  
                       local offsetY = math.random(-tweakpower, tweakpower)  
                       local offsetZ = math.random(-tweakpower, tweakpower)  

                       rootPart.CFrame = rootPart.CFrame * CFrame.Angles(math.rad(offsetX), math.rad(offsetY), math.rad(offsetZ))
                   end
               end
           end)
       end
   end,
})

local Button = Tab:CreateButton({
   Name = "Flip Vehicle",
   Interact = 'Click',
   Callback = function()
      -- Get the local player
      local player = game.Players.LocalPlayer
      -- Ensure the player character exists
      if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
         -- Get the HumanoidRootPart
         local humanoidRootPart = player.Character.HumanoidRootPart

         -- Variables to track the closest seat and its distance
         local closestSeat = nil
         local minDistance = 2  -- Maximum distance to look for a seat (2 studs)

         -- Look for all seats within 2 studs of the player
         for _, part in pairs(workspace:GetDescendants()) do
            -- Check if the part is a seat or VehicleSeat
            if part:IsA("Seat") or part:IsA("VehicleSeat") then
               local seatPosition = part.CFrame.Position
               local distance = (humanoidRootPart.Position - seatPosition).Magnitude

               -- Check if the seat is within 2 studs and is closer than the current closest seat
               if distance <= minDistance and (not closestSeat or distance < (closestSeat.CFrame.Position - humanoidRootPart.Position).Magnitude) then
                  closestSeat = part
                  minDistance = distance
               end
            end
         end

         -- Function to check if player is sitting
         local function isPlayerSeated()
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
               return humanoid.SeatPart ~= nil  -- Check if the player is seated on a seat
            end
            return false
         end

         -- Teleport the player to the closest seat if not already seated
         local function teleportToSeat()
            if closestSeat then
               player.Character:SetPrimaryPartCFrame(closestSeat.CFrame * CFrame.new(0, 5, 0))  -- Adjust height to avoid collision
            end
         end

         -- Wait until the player is seated
         while not isPlayerSeated() do
            teleportToSeat()
            wait(0.5)  -- Wait for the player to get seated
         end

         -- Once the player is seated, weld the player to the seat
         if closestSeat then
            -- Create a weld constraint to attach the HumanoidRootPart to the seat
            local weld = Instance.new("WeldConstraint")
            weld.Part0 = humanoidRootPart
            weld.Part1 = closestSeat
            weld.Parent = humanoidRootPart

            -- Flip the vehicle (flip the seat and vehicle by rotating 180 degrees)
            local seatCFrame = closestSeat.CFrame
            local flippedSeatCFrame = seatCFrame * CFrame.Angles(math.pi, 0, 0) -- Rotate 180 degrees on X-axis

            -- Apply the flipped seat CFrame to flip the seat and vehicle
            closestSeat.CFrame = flippedSeatCFrame

            -- Apply rotation to other parts of the vehicle if needed
            -- For example, if the vehicle has wheels or other important parts:
            for _, part in pairs(closestSeat.Parent:GetDescendants()) do
               if part:IsA("BasePart") then
                  part.CFrame = part.CFrame * CFrame.Angles(math.pi, 0, 0)
               end
            end

            -- After the flip, unweld the HumanoidRootPart from the seat
            wait(1)  -- Simulate time to ensure flip is completed
            weld:Destroy()  -- Unweld after the flip
         end
      end
   end,
})



local Section = Tab:CreateSection("Boost",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element


local Button = Tab:CreateButton({
   Name = "FPS Boost",
   Interact = 'Click',
   Callback = function()
       -- FPS Optimization Script

       local lighting = game.Lighting
       local terrain = workspace.Terrain
       local userSettings = UserSettings():GetService("UserGameSettings")

       -- Force lowest graphics settings (May not work in LocalScript)
       pcall(function()
           userSettings.SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel1
       end)

       -- Optimize all BaseParts (Set to Plastic)
       for _, obj in ipairs(workspace:GetDescendants()) do
           if obj:IsA("BasePart") then
               obj.Material = Enum.Material.Plastic -- Remove material effects
           elseif obj:IsA("ParticleEmitter") or obj:IsA("Beam") then
               obj.Enabled = false -- Disable particle effects
           end
       end

       -- Optimize lighting
       lighting.GlobalShadows = false
       lighting.FogEnd = 1000000 -- Remove fog
       lighting.FogStart = 999999
       lighting.EnvironmentDiffuseScale = 0
       lighting.EnvironmentSpecularScale = 0

       -- Optimize terrain
       if terrain then
       terrain.WaterWaveSize = 0
       terrain.WaterWaveSpeed = 0
       terrain.WaterTransparency = 1
       terrain.WaterReflectance = 0
       terrain.Decorations = false -- Remove grass & details
       terrain.MaterialColors = false -- Use basic colors instead of textures
       end
       -- Notify user
       ArrayField:Notify({
           Title = "FPS Boost Applied!",
           Content = "Graphics settings lowered for better performance. Or just adds 1 more fps",
           Duration = 5,
           Image = 4483362458,
           Actions = {
               Ignore = {
                   Name = "Okay!",
                   Callback = function() end
               },
           },
       })
   end, -- This was missing
})






local Tab = Window:CreateTab("Hub's", 4483362458) -- Title, Image
local Section = Tab:CreateSection("FE R6 Animation",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element
local Button = Tab:CreateButton({
   Name = "HatHub",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/inkdupe/hat-scripts/refs/heads/main/updatedhathub.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Troll Animation",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed    
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ShutUpJamesTheLoser/freaky/refs/heads/main/fe", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "FE R6 Anims",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/redxs-dosx/R6-Anim-Hub/refs/heads/main/Hub%20Script%20(.lua)'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "FE R6 Animation",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ExploitFin/AquaMatrix/refs/heads/AquaMatrix/AquaMatrix"))()
   end,
})

local Tab = Window:CreateTab("Scripts", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Recommended",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element

local Button = Tab:CreateButton({
   Name = "Infinite Yield",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Section = Tab:CreateSection("No Key",false)
local Button = Tab:CreateButton({
   Name = "Button Example",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Button Example",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Button Example",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

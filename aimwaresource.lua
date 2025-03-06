-- v1 is completed
local coregui = game:GetService("CoreGui")
local duplicated = coregui:FindFirstChild("aimware")
if duplicated then
    duplicated:Destroy()
    print("destroyed duplicated gui")
end

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = coregui
screenGui.Name = "aimware"
screenGui.ResetOnSpawn = false

local off = Color3.fromRGB(200, 0, 0)
local on = Color3.fromRGB(0, 200, 0)

local AimFOV 
local AimbotEnabled = false  
local MaxDistance
local LockedTarget = nil  
local Smoothness
local PredictionStrength
AimFOV = 100
MaxDistance = 128
Smoothness = 0.5
PredictionStrength = 5



--settings


local text4 = Instance.new("TextBox")
text4.Parent = screenGui
text4.Size = UDim2.new(0.075, 0, 0.1, 0)
text4.Position = UDim2.new(0.3, 0, 0.175, 0)
text4.TextColor3 = Color3.fromRGB(255, 255, 255)
text4.MultiLine = false
text4.Text = "Range"
text4.PlaceholderText = "The range of aim. Preset "..MaxDistance
text4.TextScaled = true
text4.ClearTextOnFocus = true
text4.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
text4.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local uicor = Instance.new("UICorner")
uicor.Parent = text4
uicor.CornerRadius = UDim.new(0.25, 0)

text4.FocusLost:Connect(function()
local v = tonumber(text4.Text)
if v then
MaxDistance = v
end
text4.Text ="changed to "..MaxDistance
end)

local text2 = Instance.new("TextBox")
text2.Parent = screenGui
text2.Size = UDim2.new(0.075, 0, 0.1, 0)
text2.Position = UDim2.new(0.4, 0, 0.175, 0)
text2.TextColor3 = Color3.fromRGB(255, 255, 255)
text2.MultiLine = false
text2.Text = "Smoothness"
text2.PlaceholderText = "The smoothness of aim. Preset "..Smoothness
text2.TextScaled = true
text2.ClearTextOnFocus = true
text2.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
text2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local uicor = Instance.new("UICorner")
uicor.Parent = text2
uicor.CornerRadius = UDim.new(0.25, 0)

text2.FocusLost:Connect(function()
local v = tonumber(text2.Text)
if v then
Smoothness = v
end
text2.Text = "changed to "..Smoothness
end)

local text1 = Instance.new("TextBox")
text1.Parent = screenGui
text1.Size = UDim2.new(0.075, 0, 0.1, 0)
text1.Position = UDim2.new(0.5, 0, 0.175, 0)
text1.TextColor3 = Color3.fromRGB(255, 255, 255)
text1.MultiLine = false
text1.Text = "Prediction Strength"
text1.PlaceholderText = "Predict Strength. Preset "..PredictionStrength
text1.TextScaled = true
text1.ClearTextOnFocus = true
text1.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
text1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local uicor = Instance.new("UICorner")
uicor.Parent = text1
uicor.CornerRadius = UDim.new(0.25, 0)

text1.FocusLost:Connect(function()
local v = tonumber(text1.Text)
if v then
    PredictionStrength = v
end
text1.Text = "changed to "..PredictionStrength

end)











-- Aimbot UI Button
local button = Instance.new("TextButton")
button.Parent = screenGui
button.Size = UDim2.new(0.05, 0, 0.1, 0)
button.Position = UDim2.new(0.3, 0, 0, 0)
button.TextScaled = true
button.BackgroundTransparency = 0.75
button.Font = Enum.Font.Nunito
button.Text = "Aimbot"
button.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
button.TextStrokeTransparency = 0.75
button.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
button.TextColor3 = Color3.fromRGB(0, 0, 0)

local uicor = Instance.new("UICorner")
uicor.Parent = button
uicor.CornerRadius = UDim.new(0.25, 0)

local uis = Instance.new("UIStroke")
uis.Thickness = 2
uis.Parent = button
uis.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- Aimbot Script
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local Drawing = Drawing or require("Drawing")


-- Create FOV Circle at Screen Center
local FOVCircle

FOVCircle = Drawing.new("Circle")
FOVCircle.Color = Color3.fromRGB(255, 0, 0) -- Red when ON
FOVCircle.Thickness = 1.5
FOVCircle.NumSides = 50
FOVCircle.Radius = AimFOV
FOVCircle.Visible = AimbotEnabled

--settings fov
local text = Instance.new("TextBox")
text.Parent = screenGui
text.Size = UDim2.new(0.075, 0, 0.1, 0)
text.Position = UDim2.new(0.2, 0, 0.175, 0)
text.TextColor3 = Color3.fromRGB(255, 255, 255)
text.MultiLine = false
text.Text = "AimFOV"
text.PlaceholderText = "The radius of aim. Preset "..AimFOV
text.TextScaled = true
text.ClearTextOnFocus = true
text.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
text.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local uicor = Instance.new("UICorner")
uicor.Parent = text
uicor.CornerRadius = UDim.new(0.25, 0)

text.FocusLost:Connect(function()
local v = tonumber(text.Text)
if v then
AimFOV = v
end
text.Text = "changed to "..AimFOV
if FOVCircle then
    AimbotEnabled = false
    FOVCircle:Remove()
    FOVCircle = Drawing.new("Circle")
    FOVCircle.Color = Color3.fromRGB(255, 0, 0) -- Red when ON
    FOVCircle.Thickness = 1.5
    FOVCircle.NumSides = 50
    FOVCircle.Radius = AimFOV
    FOVCircle.Visible = AimbotEnabled
end
end)

local function ToggleAimbot()
    AimbotEnabled = not AimbotEnabled
    FOVCircle.Visible = AimbotEnabled
    if not AimbotEnabled then
        button.BackgroundColor3 = off
        LockedTarget = nil  -- Reset target when aimbot is turned off
        else
        button.BackgroundColor3 = on
    end
end

-- Toggle Aimbot with "Ctrl + T"
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.T and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) and not gameProcessed then
        ToggleAimbot()
    end
end)

-- Mobile (Touch) and PC (Mouse Click) Button Activation
button.TouchTap:Connect(ToggleAimbot) 
button.MouseButton1Click:Connect(ToggleAimbot) 

-- Detect Mouse Movement to Unlock Target
UserInputService.InputChanged:Connect(function()
    LockedTarget = nil
end)

-- Reset target if they leave or respawn
Players.PlayerRemoving:Connect(function(player)
    if player == LockedTarget then
        LockedTarget = nil
    end
end)

Players.PlayerAdded:Connect(function()
    LockedTarget = nil
end)

-- Function to get the closest valid target
local function GetClosestPlayer()
    if not AimbotEnabled then return nil end
    
    if LockedTarget and LockedTarget.Character and LockedTarget.Character:FindFirstChild("HumanoidRootPart") then
        return LockedTarget  -- Keep the same target if it's still valid
    end

    local closestPlayer = nil
    local shortestDistance = AimFOV
    local screenCenter = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local targetHRP = player.Character.HumanoidRootPart
            local distanceFromPlayer = (targetHRP.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            
            if distanceFromPlayer <= MaxDistance then -- Check if within distance limit
                local targetPos, onScreen = Camera:WorldToScreenPoint(targetHRP.Position)
                if onScreen then
                    local targetVector = Vector2.new(targetPos.X, targetPos.Y)
                    local distance = (screenCenter - targetVector).Magnitude

                    if distance < shortestDistance then
                        closestPlayer = player
                        shortestDistance = distance
                    end
                end
            end
        end
    end
    
    LockedTarget = closestPlayer
    return closestPlayer
end

-- Aimbot Tracking
RunService.RenderStepped:Connect(function()
    if not AimbotEnabled then return end
    if AimbotEnabled then
    -- Keep FOV Circle in the center of the screen
    FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

    if not LockedTarget or not LockedTarget.Character or not LockedTarget.Character:FindFirstChild("HumanoidRootPart") then
        LockedTarget = GetClosestPlayer()
    end

    if LockedTarget and LockedTarget.Character and LockedTarget.Character:FindFirstChild("HumanoidRootPart") then
        local targetPosition = LockedTarget.Character.HumanoidRootPart.Position
        
        -- Smooth camera lock instead of hard lock
        local newCFrame = CFrame.new(Camera.CFrame.Position, targetPosition)
        Camera.CFrame = Camera.CFrame:Lerp(newCFrame, Smoothness)
        end
    end
end)

local RGBColor = Color3.new(1, 0, 0) -- Default color (red)

task.spawn(function()
    local hue = 0
    while true do
        RGBColor = Color3.fromHSV(hue, 1, 1) -- Convert HSV to RGB
        uis.Color = RGBColor
        hue = (hue + 0.005) % 1 -- Increment hue smoothly and loop back at 1
        task.wait(0.02) -- Smooth transition delay
    end
end)


-- Aimbot UI Button
local button = Instance.new("TextButton")
button.Parent = screenGui
button.Size = UDim2.new(0.05, 0, 0.1, 0)
button.Position = UDim2.new(0.4, 0, 0, 0)
button.TextScaled = true
button.BackgroundTransparency = 0.75
button.Font = Enum.Font.Nunito
button.Text = "Tracing"
button.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
button.TextStrokeTransparency = 0.75
button.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
button.TextColor3 = Color3.fromRGB(0, 0, 0)

local uicor = Instance.new("UICorner")
uicor.Parent = button
uicor.CornerRadius = UDim.new(0.25, 0)

local uis = Instance.new("UIStroke")
uis.Thickness = 2
uis.Parent = button
uis.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- Aimbot Script
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera



-- Create FOV Circle
local FOVCircle
FOVCircle = Drawing.new("Circle")
FOVCircle.Color = Color3.fromRGB(255, 0, 0)
FOVCircle.Thickness = 1.5
FOVCircle.NumSides = 50
FOVCircle.Radius = AimFOV
FOVCircle.Visible = AimbotEnabled

text.FocusLost:Connect(function()
local v = tonumber(text.Text)
if v then
AimFOV = v
end
text.Text = "changed to "..AimFOV
if FOVCircle then
    AimbotEnabled = false
    FOVCircle:Remove()
    FOVCircle = Drawing.new("Circle")
    FOVCircle.Color = Color3.fromRGB(255, 0, 0) -- Red when ON
    FOVCircle.Thickness = 1.5
    FOVCircle.NumSides = 50
    FOVCircle.Radius = AimFOV
    FOVCircle.Visible = AimbotEnabled
end
end)

local del = Instance.new("TextButton")
del.Parent = screenGui
del.Size = UDim2.new(0.05, 0, 0.1, 0)
del.Position = UDim2.new(0.6, 0, 0.175, 0)
del.Font = Enum.Font.Nunito
del.Text = "Hide Settings"
del.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
del.TextColor3 = Color3.fromRGB(255, 255, 255)
del.TextScaled = true

local function delset()
text.Visible = not text.Visible
wait(0.1)
text1.Visible = not text.Visible
wait(0.1)
text2.Visible = not text.Visible
wait(0.1)
text4.Visible = not text.Visible
wait(0.1)

end

del.MouseButton1Click:Connect(delset)
del.TouchTap:Connect(delset)


local function ToggleAimbot()
    AimbotEnabled = not AimbotEnabled
    FOVCircle.Visible = AimbotEnabled
    if not AimbotEnabled then
        button.BackgroundColor3 = off
        LockedTarget = nil
        else
        button.BackgroundColor3 = on
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.Y and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) and not gameProcessed then
        ToggleAimbot()
    end
end)

button.TouchTap:Connect(ToggleAimbot) 
button.MouseButton1Click:Connect(ToggleAimbot) 

UserInputService.InputChanged:Connect(function()
    LockedTarget = nil  -- Reset target when the player moves their aim
end)

local function GetClosestPlayer()
    if not AimbotEnabled then return nil end
    
    local closestPlayer = nil
    local shortestDistance = AimFOV
    local screenCenter = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local targetHRP = player.Character.HumanoidRootPart
            local distanceFromPlayer = (targetHRP.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            
            if distanceFromPlayer <= MaxDistance then 
                local targetPos, onScreen = Camera:WorldToScreenPoint(targetHRP.Position)
                if onScreen then
                    local targetVector = Vector2.new(targetPos.X, targetPos.Y)
                    local distance = (screenCenter - targetVector).Magnitude

                    if distance < shortestDistance then
                        closestPlayer = player
                        shortestDistance = distance
                    end
                end
            end
        end
    end
    
    return closestPlayer  -- Do not auto-lock target permanently
end

RunService.RenderStepped:Connect(function()
    if not AimbotEnabled then return end
    if AimbotEnabled then
    FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

    local target = GetClosestPlayer()  -- Continuously check for closest player
    
    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
        local targetHRP = target.Character.HumanoidRootPart
        local targetVelocity = targetHRP.Velocity * PredictionStrength
        local predictedPosition = targetHRP.Position + targetVelocity * 0.05 
        
        local newCFrame = CFrame.new(Camera.CFrame.Position, predictedPosition)
        Camera.CFrame = Camera.CFrame:Lerp(newCFrame, Smoothness)
        end
    end
end)

local RGBColor = Color3.new(1, 0, 0) -- Default color (red)

task.spawn(function()
    local hue = 0
    while true do
        RGBColor = Color3.fromHSV(hue, 1, 1) -- Convert HSV to RGB
        uis.Color = RGBColor
        hue = (hue + 0.005) % 1 -- Increment hue smoothly and loop back at 1
        task.wait(0.02) -- Smooth transition delay
    end
end)

-- Aimbot UI Button
local button = Instance.new("TextButton")
button.Parent = screenGui
button.Size = UDim2.new(0.05, 0, 0.1, 0)
button.Position = UDim2.new(0.5, 0, 0, 0)
button.TextScaled = true
button.BackgroundTransparency = 0.5
button.Font = Enum.Font.Nunito
button.Text = "Destroy UI"
button.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
button.TextStrokeTransparency = 0.75
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(0, 0, 0)

local uicor = Instance.new("UICorner")
uicor.Parent = button
uicor.CornerRadius = UDim.new(0.25, 0)

local uis = Instance.new("UIStroke")
uis.Thickness = 2
uis.Parent = button
uis.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uis.Color = Color3.fromRGB(255, 255, 255)

local function startdestroy()
AimbotEnabled = nil
AimFOV = nil 
ToggleAimbot = nil
targetHRP = nil
HumanoidRootPart = nil
closestPlayer = nil
FOVCircle:Remove()
FOVCircle.Visible = nil
FOVCircle = nil
FOV = nil
Smoothness = nil
PredictionStrength = nil
wait(0.5)
print("Destroy completed")
screenGui:Destroy()
end

button.MouseButton1Click:Connect(startdestroy)
button.TouchTap:Connect(startdestroy)


game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Use Destroy UI if bug";
    Text = "if your aimbot/tracing is always on or fov always showing use the destroy ui and re-execute";
    Duration = 7; -- Time in seconds
})

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Aimbot (Keybind)";
    Text = "Press CTRL + T to toggle aimbot";
    Duration = 5; -- Time in seconds
})

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Tracing (Keybind)";
    Text = "Press CTRL + Y to toggle tracing";
    Duration = 5; -- Time in seconds
})

task.spawn(function()
wait(5)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Aimware is ready to use!";
    Text = "by someoneus";
    Duration = 5; -- Time in seconds
})
end)










local UserInputService = game:GetService("UserInputService")

local function makeDraggable(guiObject)
    if guiObject:IsA("Frame") or guiObject:IsA("TextButton") or guiObject:IsA("TextLabel") or guiObject:IsA("TextBox") or guiObject:IsA("ScrollingFrame") then
        local dragging, dragStart, startPos

        local function onInputBegan(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = guiObject.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end

        local function onInputChanged(input)
            if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                local delta = input.Position - dragStart
                guiObject.Position = UDim2.new(
                    startPos.X.Scale, startPos.X.Offset + delta.X,
                    startPos.Y.Scale, startPos.Y.Offset + delta.Y
                )
            end
        end

        guiObject.InputBegan:Connect(onInputBegan)
        UserInputService.InputChanged:Connect(onInputChanged)
    end
end

-- Apply to existing UI elements

for _, obj in pairs(screenGui:GetDescendants()) do
    makeDraggable(obj)
end

-- Apply to new GUI elements dynamically
screenGui.DescendantAdded:Connect(makeDraggable)

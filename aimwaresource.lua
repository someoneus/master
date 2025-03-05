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

local off = Color3.fromRGB(0, 200, 0)
local on = Color3.fromRGB(0, 200, 0)

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

-- Settings
local AimFOV = 150          
local AimbotEnabled = false  
local MaxDistance = 512 -- Maximum distance in studs
local LockedTarget = nil  -- Stores the locked target

-- Create FOV Circle at Screen Center
local FOVCircle = Drawing.new("Circle")
FOVCircle.Color = Color3.fromRGB(255, 0, 0) -- Red when ON
FOVCircle.Thickness = 1.5
FOVCircle.NumSides = 50
FOVCircle.Radius = AimFOV
FOVCircle.Visible = AimbotEnabled

local function ToggleAimbot()
    AimbotEnabled = not AimbotEnabled
    FOVCircle.Visible = AimbotEnabled
    if not AimbotEnabled then
        LockedTarget = nil  -- Reset target when aimbot is turned off
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
    
    -- Keep FOV Circle in the center of the screen
    FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

    if not LockedTarget or not LockedTarget.Character or not LockedTarget.Character:FindFirstChild("HumanoidRootPart") then
        LockedTarget = GetClosestPlayer()
    end

    if LockedTarget and LockedTarget.Character and LockedTarget.Character:FindFirstChild("HumanoidRootPart") then
        local targetPosition = LockedTarget.Character.HumanoidRootPart.Position
        
        -- Instant hard lock with no smoothing
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPosition)
    end
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

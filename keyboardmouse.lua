--useless
local coregui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

-- Prevent Duplicate GUI
local dupe = coregui:FindFirstChild("1mouse")
if dupe then dupe:Destroy() end

-- Create GUI
local gui = Instance.new("ScreenGui")
gui.Parent = coregui
gui.Name = "1mouse"
gui.ResetOnSpawn = false

-- Create Frame
local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.new(0.1, 0, 0.05, 0)

-- Default Keybinds
local qbind = Enum.KeyCode.Q
local ebind = Enum.KeyCode.E

-- Create TextBox for Right Click (Q)
local textq = Instance.new("TextBox")
textq.Text = "Right"
textq.MultiLine = false
textq.Parent = frame
textq.Size = UDim2.new(0.35, 0, 0.8, 0)
textq.Position = UDim2.new(0.05, 0, 0.1, 0)
textq.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
textq.PlaceholderText = tostring(qbind)
textq.Font = Enum.Font.SourceSansBold
textq.TextScaled = true
textq.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)

-- Create TextBox for Left Click (E)
local texte = Instance.new("TextBox")
texte.Text = "Left"
texte.MultiLine = false
texte.Parent = frame
texte.Size = UDim2.new(0.35, 0, 0.8, 0)
texte.Position = UDim2.new(0.6, 0, 0.1, 0)
texte.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
texte.PlaceholderText = tostring(ebind)
texte.Font = Enum.Font.SourceSansBold
texte.TextScaled = true
texte.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)


-- Function to update Q keybind
textq.FocusLost:Connect(function()
    local inputkey = textq.Text:upper()
    local newKey = Enum.KeyCode[inputkey]
    if newKey then
        qbind = newKey
        print("Right-click keybind set to:", qbind.Name)
    else
        print("Invalid key! Keeping previous keybind:", qbind.Name)
    end
end)

-- Function to update E keybind
texte.FocusLost:Connect(function()
    local inputkey = texte.Text:upper()
    local newKey = Enum.KeyCode[inputkey]
    if newKey then
        ebind = newKey
        print("Left-click keybind set to:", ebind.Name)
    else
        print("Invalid key! Keeping previous keybind:", ebind.Name)
    end
end)

-- Detect Key Presses & Releases
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == ebind then
            task.wait(0.025)
        mouse1press() -- Hold Left Click
        texte.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    elseif not gameProcessed and input.KeyCode == qbind then
            task.wait(0.025)
        mouse2press() -- Hold Right Click
        textq.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    end
end)

UserInputService.InputEnded:Connect(function(input, gameProcessed)
    if input.KeyCode == ebind then
        mouse1release() -- Release Left Click
        texte.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
    elseif input.KeyCode == qbind then
        mouse2release() -- Release Right Click
        textq.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
    end
end)

UserInputService.InputEnded:Connect(function(input, gameProcessed)
wait(0.15)
    if input.KeyCode == ebind then
        mouse1release() -- Release Left Click
        texte.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
    elseif input.KeyCode == qbind then
        mouse2release() -- Release Right Click
        textq.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
    end
end)


local dragging, dragInput, dragStart, startPos

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

print("die")

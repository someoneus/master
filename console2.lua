--a bit laggy
local debris = game:GetService("Debris")
local core = game:GetService("CoreGui")
local dupe = core:FindFirstChild("d3bug")
if dupe then
    dupe:Destroy()
end
local gui = Instance.new("ScreenGui")
gui.Parent = core
gui.Name = "d3bug"
local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.new(0.5, 0, 0.5, 0)
frame.Position = UDim2.new(0.28, 0, 0.2, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

local sframe = Instance.new("ScrollingFrame")
sframe.Parent = frame
sframe.Size = UDim2.new(0.95, 0, 0.8, 0)
sframe.Position = UDim2.new(0.025, 0, 0.15, 0)
sframe.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
sframe.CanvasSize = UDim2.new(0, 0, 0, 0)
sframe.ScrollBarThickness = 5
sframe.AutomaticCanvasSize = Enum.AutomaticSize.Y -- Ensures auto-resizing of the CanvasSize
local title = Instance.new("TextLabel")
title.Parent = frame
title.Size = UDim2.new(0.35, 0, 0.1, 0)
title.TextXAlignment = Enum.TextXAlignment.Left
title.TextScaled = true
title.Text = "Debug"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
local box1 = Instance.new("TextBox")
box1.Parent = frame
box1.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
box1.TextColor3 = Color3.fromRGB(255, 255, 255)
box1.Text = "Debounce"
box1.MultiLine = false
box1.PlaceholderText = "cooldown"
box1.TextScaled = true
box1.Font = Enum.Font.SourceSansSemibold
box1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
box1.Size = UDim2.new(0.15, 0, 0.1, 0)
box1.Position = UDim2.new(0.15, 0, 0.025, 0)
box1.FocusLost:Connect(function()
local data = box1.Text
cd = tonumber(data)
box1.Text = "debounce is now "..tonumber(data)
end)
local box = Instance.new("TextBox")
box.Parent = frame
box.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
box.TextColor3 = Color3.fromRGB(255, 255, 255)
box.Text = "Search"
box.MultiLine = false
box.PlaceholderText = "search logs"
box.TextScaled = true
box.Font = Enum.Font.SourceSansSemibold
box.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
box.Size = UDim2.new(0.15, 0, 0.1, 0)
box.Position = UDim2.new(0.45, 0, 0.025, 0)

-- Hidden container for non-matching elements
local container = Instance.new("Frame")
container.Visible = false
container.Parent = gui

box.FocusLost:Connect(function()
    local input = box.Text:lower() -- Convert to lowercase for case-insensitive search

    if input == nil or input == "" then
        -- Restore all elements to `sframe` if search is cleared
        for _, v in pairs(container:GetChildren()) do
            wait(0.05)
            if v:IsA("TextLabel") then
                v.Parent = sframe
                v.Visible = true
            end
        end
        return
    end

    -- Filter and move non-matching elements to `container`
    for _, v in pairs(sframe:GetChildren()) do
        if v:IsA("TextLabel") then
            if string.find(v.Text:lower(), input) then
                v.Visible = true
            else
                v.Visible = false
                v.Parent = container
            end
        end
    end
    local textm = Instance.new("TextLabel")
    textm.Parent = sframe
    textm.TextSize = 18
    textm.Size = UDim2.new(1, 0, 0.1, 0)
    textm.AutomaticSize = Enum.AutomaticSize.Y
    textm.Text = "-- search "..input.." ended here"
    textm.TextScaled = false
    textm.TextColor3 = Color3.fromRGB(200, 200, 200)
    textm.BackgroundTransparency = 1
    textm.TextXAlignment = Enum.TextXAlignment.Left
    textm.Font = Enum.Font.Code
    textm.TextWrapped = true
        task.spawn(function()
        task.wait(db)
        textm:Destroy()
        end)

end)

local box = Instance.new("TextBox")
box.Parent = frame
box.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
box.TextColor3 = Color3.fromRGB(255, 255, 255)
box.Text = "debris time"
box.MultiLine = false
box.PlaceholderText = "0 is inf"
box.TextScaled = true
box.Font = Enum.Font.SourceSansSemibold
box.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
box.Size = UDim2.new(0.15, 0, 0.1, 0)
box.Position = UDim2.new(0.60, 0, 0.025, 0)
local db
db = 10
box.FocusLost:Connect(function()
local input = box.Text
input = tonumber(input)
if input == 0 then
    input = math.huge
    else
    db = input
end
end)

local ui = Instance.new("UIListLayout")
ui.Parent = sframe
ui.SortOrder = Enum.SortOrder.LayoutOrder
ui.Padding = UDim.new(0, 0)
local x = Instance.new("TextButton")
x.Parent = frame
x.Size = UDim2.new(0.1, 0, 0.1, 0)
x.Position = UDim2.new(0.9, 0, 0, 0)
x.TextScaled = true
x.TextColor3 = Color3.fromRGB(255, 155, 155)
x.BackgroundTransparency = 1
x.Text = "Destroy"
x.MouseButton1Click:Connect(function()
if gui then
            gui:Destroy()
        end
    end)
x.TouchTap:Connect(function()
if gui then
            gui:Destroy()
        end
    end)
local button = Instance.new("TextButton")
button.Parent = frame
button.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "Clear logs"
button.TextScaled = true
button.Font = Enum.Font.SourceSansSemibold
button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
button.Size = UDim2.new(0.15, 0, 0.1, 0)
button.Position = UDim2.new(0.3, 0, 0.025, 0)
button.MouseButton1Click:Connect(function()
for _, v in pairs(sframe:GetDescendants()) do
            if v:IsA("TextLabel") then
                v:Destroy()
            end
        end
    end)
button.TouchTap:Connect(function()
for _, v in pairs(sframe:GetDescendants()) do
            if v:IsA("TextLabel") then
                v:Destroy()
            end
        end
    end)

local debounce = false
local userScrolledUp = false

-- Fix getFullPath to correctly include "game" and handle missing parents safely
local function getFullPath(instance)
    if not instance then return "Unknown" end
    local path = instance.Name
    local obj = instance
    while obj.Parent and obj.Parent ~= game do
        obj = obj.Parent
        path = obj.Name .. "." .. path
    end
    return "game." .. path
end

local function scrollToBottom()
    if userScrolledUp or not sframe then return end -- Ensure sframe exists
    task.defer(function()
        sframe.CanvasPosition = Vector2.new(0, sframe.AbsoluteCanvasSize.Y)
    end)
end

-- Detect when the user manually scrolls
if sframe then
    sframe:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
        local atBottom = sframe.CanvasPosition.Y >= (sframe.AbsoluteCanvasSize.Y - sframe.AbsoluteSize.Y - 10)
        userScrolledUp = not atBottom
    end)
else
    warn("sframe is nil! Make sure it's assigned properly.")
end

-- Function to determine text color based on class
local function getTextColor(class)
    local colors = {
        Model = Color3.fromRGB(200, 10, 100),
        ModuleScript = Color3.fromRGB(200, 100, 200),
        Script = Color3.fromRGB(155, 155, 155),
        LocalScript = Color3.fromRGB(200, 200, 255),
        MeshPart = Color3.fromRGB(155, 50, 155),
        Weld = Color3.fromRGB(80, 80, 80),
        Tool = Color3.fromRGB(255, 140, 0),
        Part = Color3.fromRGB(200, 200, 200),
    }
    return colors[class] or Color3.fromRGB(255, 255, 255) -- Default white if class isn't listed
end

local function new(descendant)
    if debounce then return end
    debounce = true
    task.wait(cd)
    debounce = false

    if descendant:IsDescendantOf(core) or descendant:IsDescendantOf(game.Players) or not sframe then return end

    local textm = Instance.new("TextLabel")
    textm.Parent = sframe
    textm.TextSize = 18
    textm.Size = UDim2.new(1, 0, 0.1, 0)
    textm.AutomaticSize = Enum.AutomaticSize.Y
    textm.Text = "new [" .. descendant.ClassName .. "] " .. getFullPath(descendant)
    textm.TextScaled = false
    textm.TextColor3 = getTextColor(descendant.ClassName)
    textm.BackgroundTransparency = 0.75
    textm.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
    textm.TextXAlignment = Enum.TextXAlignment.Left
    textm.Font = Enum.Font.Code
    textm.TextWrapped = true


    scrollToBottom()
        task.spawn(function()
        task.wait(db)
        textm:Destroy()
        end)
end

local function del(descendant)
    if descendant:IsDescendantOf(core) or descendant:IsDescendantOf(game.Players) then return end

    local class = descendant.ClassName
    local fullPath = getFullPath(descendant) -- Capture path before deletion

    task.defer(function()
        if debounce then return end
        debounce = true
        task.wait(cd)
        debounce = false

        if not sframe then return end

        local text = Instance.new("TextLabel")
        text.Parent = sframe
        text.TextSize = 20
        text.Size = UDim2.new(1, 0, 0.1, 0)
        text.AutomaticSize = Enum.AutomaticSize.Y
        text.Text = "removed [" .. class .. "] " .. fullPath
        text.TextScaled = false
        text.TextColor3 = getTextColor(class)
        text.BackgroundTransparency = 0.75
        text.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
        text.TextXAlignment = Enum.TextXAlignment.Left
        text.Font = Enum.Font.Code
        text.TextWrapped = true

        scrollToBottom()
        task.spawn(function()
        task.wait(db)
        text:Destroy()
        end)
    end)
end

-- Listen for new descendants being added
game.DescendantAdded:Connect(new)

-- Listen for removed descendants (capture data before deletion)
game.DescendantRemoving:Connect(del)

local function makeDraggable(guiObject)
    if not guiObject:IsA("GuiObject") then return end -- Ensure it's a valid GUI object

    local dragToggle = false
    local dragStart, startPos
    local UIS = game:GetService("UserInputService")

    guiObject.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragToggle = true
            dragStart = input.Position
            startPos = guiObject.Position
        end
    end)

    guiObject.InputChanged:Connect(function(input)
        if dragToggle and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            guiObject.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)

    guiObject.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragToggle = false
        end
    end)
end

-- **Make all GUI elements draggable**
local function makeAllDescendantsDraggable(parent)
    for _, child in ipairs(parent:GetDescendants()) do
        makeDraggable(child)
    end
end

makeAllDescendantsDraggable(gui)

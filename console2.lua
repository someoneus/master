--output cool stuff
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
local ui = Instance.new("UIListLayout")
ui.Parent = sframe
ui.SortOrder = Enum.SortOrder.LayoutOrder
ui.Padding = UDim.new(0, 0)

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
        Model = Color3.fromRGB(200, 50, 200),
        ModuleScript = Color3.fromRGB(200, 100, 200),
        Script = Color3.fromRGB(155, 155, 155),
        LocalScript = Color3.fromRGB(200, 200, 255),
        MeshPart = Color3.fromRGB(200, 10, 200),
    }
    return colors[class] or Color3.fromRGB(255, 255, 255) -- Default white if class isn't listed
end

local function new(descendant)
    if debounce then return end
    debounce = true
    task.wait(0.15)
    debounce = false

    if descendant:IsDescendantOf(core) or descendant:IsDescendantOf(game.Players) or not sframe then return end

    local text = Instance.new("TextLabel")
    text.Parent = sframe
    text.TextSize = 18
    text.Size = UDim2.new(1, 0, 0.1, 0)
    text.AutomaticSize = Enum.AutomaticSize.Y
    text.Text = "new [" .. descendant.ClassName .. "] " .. getFullPath(descendant)
    text.TextScaled = false
    text.TextColor3 = getTextColor(descendant.ClassName)
    text.BackgroundTransparency = 1
    text.TextXAlignment = Enum.TextXAlignment.Left
    text.Font = Enum.Font.Code
    text.TextWrapped = true

    scrollToBottom()
end

local function del(descendant)
    if descendant:IsDescendantOf(core) or descendant:IsDescendantOf(game.Players) then return end

    local class = descendant.ClassName
    local fullPath = getFullPath(descendant) -- Capture path before deletion

    task.defer(function()
        if debounce then return end
        debounce = true
        task.wait(0.15)
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
        text.BackgroundTransparency = 1
        text.TextXAlignment = Enum.TextXAlignment.Left
        text.Font = Enum.Font.Code
        text.TextWrapped = true

        scrollToBottom()
    end)
end

-- Listen for new descendants being added
game.DescendantAdded:Connect(new)

-- Listen for removed descendants (capture data before deletion)
game.DescendantRemoving:Connect(del)

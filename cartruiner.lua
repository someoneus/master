-- fire all cd (cart game ruiner optimized version)
local core = game:GetService("CoreGui")
local dupe = core:FindFirstChild("ru1ner")

if dupe then
    dupe:Destroy()
end

local clickDetectors = {}
local gui = Instance.new("ScreenGui", core)
gui.Name = "ru1ner"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0.2, 0, 0.1, 0)
frame.Position = UDim2.new(0.4, 0, 0, 0)

-- Cart Ruiner Button
local ruinerButton = Instance.new("TextButton", frame)
ruinerButton.Size = UDim2.new(0.5, 0, 0.5, 0)
ruinerButton.Position = UDim2.new(0.25, 0, 0.25, 0)
ruinerButton.Text = "Cart Ruiner 1.0"

local toggle = false
local runService = game:GetService("RunService")



-- Collect all ClickDetectors initially
for _, v in ipairs(workspace:GetDescendants()) do
    if v:IsA("ClickDetector") and v.Parent:IsA("Part") then
        table.insert(clickDetectors, v)

    end
end

-- Add new ClickDetectors when they are added
workspace.DescendantAdded:Connect(function(v)
    if v:IsA("ClickDetector") and v.Parent:IsA("Part") then
        table.insert(clickDetectors, v)

    end
end)

-- Remove ClickDetectors when they are removed
workspace.DescendantRemoving:Connect(function(v)
    if v:IsA("ClickDetector") then
        for i, detector in ipairs(clickDetectors) do
            if detector == v then
                table.remove(clickDetectors, i)
                break
            end
        end
    end
end)

-- Toggle click spam
ruinerButton.MouseButton1Click:Connect(function()
    toggle = not toggle

    while toggle do
        wait(0.1 * #clickDetectors)
        for _, detector in ipairs(clickDetectors) do
            if detector.Parent then
                fireclickdetector(detector)
            end
        end
    end
end)

print("ruiner added")

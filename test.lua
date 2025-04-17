-- Erstelle eine einfache GUI ohne Orion
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local AimbotToggle = Instance.new("TextButton")
local SilentAimToggle = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 200, 0, 200)
Frame.Position = UDim2.new(0.5, -100, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

-- Aimbot Toggle
AimbotToggle.Parent = Frame
AimbotToggle.Size = UDim2.new(0, 180, 0, 50)
AimbotToggle.Position = UDim2.new(0, 10, 0, 10)
AimbotToggle.Text = "Aimbot"
AimbotToggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
AimbotToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
AimbotToggle.MouseButton1Click:Connect(function()
    print("Aimbot aktiviert")
    -- Aimbot-Code hier einfügen
end)

-- Silent Aim Toggle
SilentAimToggle.Parent = Frame
SilentAimToggle.Size = UDim2.new(0, 180, 0, 50)
SilentAimToggle.Position = UDim2.new(0, 10, 0, 70)
SilentAimToggle.Text = "Silent Aim"
SilentAimToggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SilentAimToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
SilentAimToggle.MouseButton1Click:Connect(function()
    print("Silent Aim aktiviert")
    -- Silent Aim Code hier einfügen
end)

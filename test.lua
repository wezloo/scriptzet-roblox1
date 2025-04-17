-- ScriptZET - Aimbot, Silent Aim und Shoot Through Walls
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({
    Name = "ScriptZET v2",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "ScriptZET"
})

-- Combat Tab
local CombatTab = Window:MakeTab({
    Name = "Combat",
    Icon = "rbxassetid://6031075938",
    PremiumOnly = false
})

-- Aimbot Toggle
CombatTab:AddToggle({
    Name = "Aimbot",
    Default = false,
    Callback = function(Value)
        print("Aimbot: " .. tostring(Value))
        -- Hier wird der Aimbot-Code eingefügt
    end    
})

-- Silent Aim Toggle
CombatTab:AddToggle({
    Name = "Silent Aim",
    Default = false,
    Callback = function(Value)
        print("Silent Aim: " .. tostring(Value))
        -- Hier wird der Silent Aim-Code eingefügt
    end    
})

-- Shoot Through Walls Toggle
CombatTab:AddToggle({
    Name = "Shoot Through Walls",
    Default = false,
    Callback = function(Value)
        if Value then
            print("Shoot Through Walls Enabled")
            -- Hier wird der Code für Schießen durch Wände eingefügt
            -- Beispiel: Durch den Umgang mit Raycasting oder Hitbox-Kontrolle
        else
            print("Shoot Through Walls Disabled")
        end
    end    
})

OrionLib:Init()

-- Beispielcode für das Schießen durch Wände (Symbolisch):
game:GetService("Players").PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        -- Raycasting Beispiel (Fake-Implementierung, da Roblox Raycasting benötigt)
        if player and player.Character then
            -- Dies könnte durch echten Exploit-Code ersetzt werden
            print(player.Name .. " kann durch Wände schießen!")
        end
    end)
end)

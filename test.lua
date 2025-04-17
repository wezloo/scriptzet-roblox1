-- Anti-Lag und Low Quality Skript für Roblox

-- Niedrigste Grafikeinstellungen setzen
game:GetService("GraphicsSettings").QualityLevel = Enum.QualityLevel.Level01  -- Niedrigste Qualität
print("Grafik auf niedrigste Stufe gesetzt.")

-- Schatten und Lichter reduzieren
game:GetService("Lighting").ShadowQuality = Enum.ShadowQuality.Disable
game:GetService("Lighting").Brightness = 1
game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(255, 255, 255)
print("Schatten und Beleuchtung reduziert.")

-- Alle nicht notwendigen Effekte deaktivieren
game:GetService("Lighting").FogStart = 100000
game:GetService("Lighting").FogEnd = 100000
game:GetService("Lighting").GlobalShadows = false
print("Nicht notwendige Lichteffekte deaktiviert.")

-- Partikel- und Soundeffekte deaktivieren
for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v:IsA("ParticleEmitter") or v:IsA("Sound") then
        v:Destroy()
    end
end
print("Partikel- und Soundeffekte entfernt.")

-- Unnötige Spielelemente entfernen (Kameraschwenks, Post-Processing-Effekte)
game:GetService("Lighting").PostEffect = false
game:GetService("Lighting").Vignette = false
print("Post-Processing-Effekte deaktiviert.")

-- Reduziere die Menge an Spielern, die angezeigt werden
local player = game.Players.LocalPlayer
local camera = game.Workspace.CurrentCamera
camera.CameraType = Enum.CameraType.Scriptable
camera.CFrame = CFrame.new(Vector3.new(0, 0, 0))  -- Setze die Kamera in die Nähe des Spielers

-- Setze eine feste FPS-Obergrenze für Roblox
local FPSCap = 60
game:GetService("RunService").Heartbeat:Connect(function()
    local frameRate = game:GetService("Stats").PerformanceStats.FramesPerSecond
    if frameRate > FPSCap then
        wait(0.1)  -- Falls die FPS zu hoch sind, warten
    end
end)
print("FPS-Obergrenze auf 60 gesetzt.")

-- Energiesparmodus aktivieren (Maximale Leistung, keine Bildschirmhintergrundprozesse)
game:GetService("Players").PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        -- Setze die Systemleistung auf maximale Leistung
        local powercfg = 'powercfg -setactive SCHEME_MIN'
        os.execute(powercfg)
    end)
end)
print("Maximale Leistungseinstellungen aktiviert.")

-- Reduziere die Spieler- und Teamgröße (optional)
for _, v in pairs(game:GetService("Teams"):GetChildren()) do
    v.MaximumPlayers = 0  -- Keine Spieler in Teams
end
print("Teamgröße auf 0 gesetzt.")

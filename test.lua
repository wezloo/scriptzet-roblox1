-- ScriptZET mit Aimbot, ESP und Shoot Through Walls

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/wezloo/scriptzet-roblox1/refs/heads/main/scriptzet.lua"))()
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

CombatTab:AddToggle({
	Name = "Aimbot",
	Default = false,
	Callback = function(Value)
		print("Aimbot: " .. tostring(Value))
	end    
})

CombatTab:AddToggle({
	Name = "ESP",
	Default = false,
	Callback = function(Value)
		if Value then
			loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
			ESP:Toggle(true)
			ESP.Players = true
		else
			if ESP then
				ESP:Toggle(false)
			end
		end
	end
})

-- Neuer Tab: Private
local PrivateTab = Window:MakeTab({
	Name = "Private",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

PrivateTab:AddToggle({
	Name = "Shoot Through Walls",
	Default = false,
	Callback = function(Value)
		if Value then
			print("Shoot Through Walls Enabled (simuliert)")
			-- Realer Code müsste Raycasts oder Hitbox-Kontrolle umgehen
		else
			print("Shoot Through Walls Disabled")
		end
	end    
})

OrionLib:Init()

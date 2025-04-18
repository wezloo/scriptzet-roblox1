-- // PetSimX "Fake Trade" Script (nur visual, client-side)
-- // Achtung: funktioniert nur lokal – keine echten Serveränderungen!

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

-- // Beispiel: Cat zu Huge Dog
local OriginalPetName = "Cat"
local FakePetName = "Huge Dog"

-- // Funktion zum „Ändern“ des Pet-Namens im Inventar
local function fakePetSwap(original, fake)
    local pets = require(ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library")).Save.Get().Pets

    for _, pet in pairs(pets) do
        if pet.n == original then
            print("[INFO] Pet geändert:", pet.n, "→", fake)
            pet.n = fake -- ändert nur den Namen visuell
        end
    end

    -- UI Refresh erzwingen (optional)
    local PetCmds = require(ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library")).PetCmds
    PetCmds.RevokeAll()
end

-- // Anwendung
fakePetSwap(OriginalPetName, FakePetName)

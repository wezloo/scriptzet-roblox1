-- GUI erstellen
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 300, 0, 180)
Frame.Position = UDim2.new(0.5, -150, 0.5, -90)
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true

-- Eingabefelder
local Title = Instance.new("TextLabel", Frame)
Title.Text = "Fake Pet Swapper"
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 20

local InputFrom = Instance.new("TextBox", Frame)
InputFrom.PlaceholderText = "Original-Pet (z.B. Cat)"
InputFrom.Size = UDim2.new(1, -20, 0, 30)
InputFrom.Position = UDim2.new(0, 10, 0, 40)
InputFrom.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
InputFrom.TextColor3 = Color3.fromRGB(255, 255, 255)
InputFrom.ClearTextOnFocus = false

local InputTo = Instance.new("TextBox", Frame)
InputTo.PlaceholderText = "Fake-Pet (z.B. Huge Dog)"
InputTo.Size = UDim2.new(1, -20, 0, 30)
InputTo.Position = UDim2.new(0, 10, 0, 80)
InputTo.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
InputTo.TextColor3 = Color3.fromRGB(255, 255, 255)
InputTo.ClearTextOnFocus = false

local SwapButton = Instance.new("TextButton", Frame)
SwapButton.Text = "Tauschen"
SwapButton.Size = UDim2.new(1, -20, 0, 30)
SwapButton.Position = UDim2.new(0, 10, 0, 120)
SwapButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
SwapButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SwapButton.Font = Enum.Font.SourceSansBold
SwapButton.TextSize = 18

-- Dummy-Fake-Inventar (nur zum Test)
local fakePets = {
    {n = "Cat"},
    {n = "Dog"},
    {n = "Dragon"},
}

-- Tausch-Funktion
local function fakePetSwap(original, fake)
    local found = false
    for _, pet in pairs(fakePets) do
        if string.lower(pet.n) == string.lower(original) then
            pet.n = fake
            found = true
        end
    end
    if found then
        print("[✔] Pet geändert zu:", fake)
    else
        print("[!] Kein Pet namens '" .. original .. "' gefunden.")
    end
end

-- Button gedrückt
SwapButton.MouseButton1Click:Connect(function()
    local original = InputFrom.Text
    local fake = InputTo.Text
    if original ~= "" and fake ~= "" then
        fakePetSwap(original, fake)
    else
        print("❗ Bitte beide Felder ausfüllen.")
    end
end)

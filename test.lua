-- Initiales Setup für GUI und Fake-Pets
local fakePets = {
    {n = "Cat"},
    {n = "Dog"},
    {n = "Dragon"}
}

local function createGUI()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    -- GUI Frame
    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, 400, 0, 300)
    mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
    mainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    mainFrame.Parent = ScreenGui

    -- Title
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Text = "Fake Pet Inventory"
    titleLabel.Size = UDim2.new(1, 0, 0, 30)
    titleLabel.TextScaled = true
    titleLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Parent = mainFrame

    -- Eingabefeld für Pet-Name
    local inputBox = Instance.new("TextBox")
    inputBox.Size = UDim2.new(1, -20, 0, 30)
    inputBox.Position = UDim2.new(0, 10, 0, 40)
    inputBox.Text = "Enter Pet Name"
    inputBox.ClearTextOnFocus = true
    inputBox.Parent = mainFrame

    -- Button zum Hinzufügen
    local addButton = Instance.new("TextButton")
    addButton.Text = "Add Pet"
    addButton.Size = UDim2.new(0, 100, 0, 30)
    addButton.Position = UDim2.new(1, -110, 0, 40)
    addButton.Parent = mainFrame

    -- Liste der Fake-Pets
    local petListFrame = Instance.new("ScrollingFrame")
    petListFrame.Size = UDim2.new(1, -20, 0, 200)
    petListFrame.Position = UDim2.new(0, 10, 0, 80)
    petListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    petListFrame.ScrollBarThickness = 5
    petListFrame.Parent = mainFrame

    -- Funktion zum Hinzufügen von Fake-Pets
    local function addFakePet(petName)
        local petLabel = Instance.new("TextLabel")
        petLabel.Size = UDim2.new(1, -10, 0, 30)
        petLabel.Position = UDim2.new(0, 5, 0, #fakePets * 35)
        petLabel.Text = petName
        petLabel.TextScaled = true
        petLabel.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
        petLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
        petLabel.Parent = petListFrame
        table.insert(fakePets, {n = petName})
        petListFrame.CanvasSize = UDim2.new(0, 0, 0, #fakePets * 35)
    end

    -- Add Button Logic
    addButton.MouseButton1Click:Connect(function()
        local petName = inputBox.Text
        if petName and petName ~= "" then
            addFakePet(petName)
        end
    end)
end

-- GUI erstellen
createGUI()

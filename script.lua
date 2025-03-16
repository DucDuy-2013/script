-- Tạo GUI chính
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui
screenGui.Name = "HubSelector"

-- Tạo khung chứa các nút
local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Size = UDim2.new(0, 300, 0, 300) -- Thay đổi kích thước của khung
frame.Position = UDim2.new(0.5, -150, 0.5, -150) -- Đặt khung ở trung tâm màn hình
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 3
frame.BorderColor3 = Color3.fromRGB(255, 255, 255)

-- Tạo các nút
local function createButton(text, position, onClick)
    local button = Instance.new("TextButton")
    button.Parent = frame
    button.Size = UDim2.new(0, 260, 0, 40)  -- Kích thước của nút
    button.Position = position
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.BorderSizePixel = 1
    button.BorderColor3 = Color3.fromRGB(255, 255, 255)
    
    -- Thiết lập sự kiện khi nhấn nút
    button.MouseButton1Click:Connect(onClick)
    
    return button
end

-- Tạo các nút với các hành động khác nhau
createButton("Banana Hub", UDim2.new(0, 20, 0, 20), function()
    print("Chạy script Banana Hub")
    -- Thay thế URL này với script thực tế của Banana Hub
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"))()
end)

createButton("Hoho Hub", UDim2.new(0, 20, 0, 70), function()
    print("Chạy script Hoho Hub")
    -- Thay thế URL này với script thực tế của Hoho Hub
    loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/main/ScriptLoad.lua"))()
end)

createButton("Redz Hub", UDim2.new(0, 20, 0, 120), function()
    print("chạy script Redz Hub")
    -- Thay thế URL này với script thực tế của Redz Hub
    loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
end)

createButton("Speed Hub", UDim2.new(0, 20, 0, 170), function()
    print("Chạy script Speed Hub")
    -- Thay thế URL này với script thực tế của Speed Hub
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
end)

-- Ẩn GUI khi người chơi thoát game
game:BindToClose(function()
    screenGui:Destroy()
end)

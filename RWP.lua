-- RWP Script (Roblox WalkSpeed GUI)
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/jensonhirst/Orion/main/source'))()

local Window = OrionLib:MakeWindow({
    Name = "RWP | Speed Controller",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "RWPConfig",
    IntroEnabled = true,
    IntroText = "RWP Loading...",
    IntroIcon = "rbxassetid://6031075931"
})

-- สร้าง Tab หลัก
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://6023426915",
    PremiumOnly = false
})

-- ตัวแปรเก็บสถานะและความเร็ว
local _G_SpeedEnabled = false
local _G_WalkSpeedValue = 16 -- ค่าเริ่มต้นของ Roblox

-- ฟังก์ชันคอยดักจับความเร็วตัวละคร
game:GetService("RunService").RenderStepped:Connect(function()
    if _G_SpeedEnabled then
        local player = game.Players.LocalPlayer
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.
        

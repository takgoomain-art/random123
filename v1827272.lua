print("Loading UI........")
print("Loading Script....")
print("Loading Assets.....")
print("Loading Functions....")
print("99.99999%")

local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

WindUI:Popup({
    Title = "Welcome to the Liquid Hub!",
    Icon = "info",
    Content = "Hello! Click the Continue button to access the script completely.",
    Buttons = {
        {
            Title = "Continue",
            Icon = "arrow-right",
            Callback = function() end,
            Variant = "Primary",
        }
    }
})

local Window = WindUI:CreateWindow({
    Title = "Liquid Hub | Universal",
    Icon = "door-open", -- lucide icon. optional
    Author = "by Liquid Management", -- optional
})

------ TABS
local Main = Window:Tab({
    Title = "Info",
    Icon = "info", -- optional
    Locked = false,
})

local Script = Window:Tab({
    Title = "Scripts",
    Icon = "bird", -- optional
    Locked = false,
})

local More = Window:Tab({
    Title = "More Scripts",
    Icon = "bird", -- optional
    Locked = false,
})

local Settings = Window:Tab({
    Title = "Settings",
    Icon = "settings", -- optional
    Locked = false,
})


--- MAIN INFO

local Info = Main:Section({ 
    Title = "Liquid Hub Intro",
})

local WC = Main:Paragraph({
    Title = "Warmest Greetings!",
    Desc = "Liquid Hub is a script where you can find anything.\nEnjoy and have fun while using our script!\n Happy Scriping!",
    --Color = "Red",
    --Image = "",
    --ImageSize = 30,
    --Thumbnail = "",
    --ThumbnailSize = 80,
    Locked = false,
    --[[Buttons = {
        {
            Icon = "bird",
            Title = "Button",
            Callback = function() print("1 Button") end,
        }
    }
    ]]
})

local Credits = Main:Paragraph({
    Title = "Credentials",
    Desc = "Liquid Hub is giving credits to the owner of the script that is listed here.",
    --Color = "Red",
    --Image = "",
    --ImageSize = 30,
    --Thumbnail = "",
    --ThumbnailSize = 80,
    Locked = false,
    --[[Buttons = {
        {
            Icon = "bird",
            Title = "Button",
            Callback = function() print("1 Button") end,
        }
    }
    ]]
})

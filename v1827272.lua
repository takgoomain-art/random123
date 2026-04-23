print("Loading UI........")
print("Loading Script....")
print("Loading Assets.....")
print("Loading Functions....")
print("99.99999%")

if game.PlaceId == 126884695634066 then
    GAG = true
elseif game.PlaceId == 4924922222 then
    Brookhaven = true
elseif game.PlaceId == 119048529960596 then
    RT3 = true
elseif game.PlaceId == 2753915549 then
    BloxFruits = true
elseif game.PlaceId == 77747658251236 then
    SailorPiece = true
end

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

WindUI:Notify({
                Title = "Liquid Hub • Loaded!",
                Content = "Loaded successfuly!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})

WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Explore the features of the script, enjoy!",
                Duration = 4, -- 3 seconds
                Icon = "bell",
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
    --ThumbnailSize you 80,
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

------ Scripts Tab
local Scripsss = Script:Section({ 
    Title = "SCRIPTS SECTION",
})
local MarketplaceService = game:GetService("MarketplaceService")

-- Assume Server is your Fluent UI server object managing the UI
--[[ local Server =  your Fluent UI Server object here ]]

-- Function to get the current game name from PlaceId
local function getCurrentGameName()
    local success, info = pcall(function()
        return MarketplaceService:GetProductInfo(game.PlaceId)
    end)
    if success and info then
        return info.Name
    else
        return "Unknown Game"
    end
end

local gameName = getCurrentGameName()

local Game = Script:Paragraph({
    Title = "Game you're in:",
    Desc = gameName ~= "" and gameName or "The game cannot be identified.",
    --Color = "Red",
    --Image = "",
    --ImageSize = 30,
    --Thumbnail = "",
    --ThumbnailSize you 80,
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

local bf = Script:Section({ 
    Title = "[🍎] Blox Fruits",
})

if BloxFruits then
    local Redz = Script:Button({
    Title = "🔓 Redz Hub",
    Desc = "",
    Locked = false,
    Callback = function()
        local Settings = { 
    Translator = true;   -- true / false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))(Settings)
                WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
    end
})
    
else
    local blxfrt = Script:Paragraph({
    Title = "NOTICE:",
    Desc = "You're not in Blox Fruits game.",
    --Color = "Red",
    --Image = "",
    --ImageSize = 30,
    --Thumbnail = "",
    --ThumbnailSize you 80,
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
end


local grow = Script:Section({ 
    Title = "[🥕] Grow a Garden",
})

if GAG then
    local idk = Script:Button({
    Title = "🔓No Hub",
    Desc = "",
    Locked = false,
    Callback = function()

            end
        })

else
    local gagg = Script:Paragraph({
    Title = "NOTICE:",
    Desc = "You're not in Grow a Garden game.",
    --Color = "Red",
    --Image = "",
    --ImageSize = 30,
    --Thumbnail = "",
    --ThumbnailSize you 80,
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
end

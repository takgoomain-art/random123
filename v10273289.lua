print("Loading UI........")
print("Loading Script....")
print("Loading Assets.....")
print("Loading Functions....")
print("LOADED! Wait 2 seconds to direct to the Fluent Ui.")


local Fluent, SaveManager, InterfaceManager = loadstring(Game:HttpGet("https://raw.githubusercontent.com/discoart/FluentPlus/refs/heads/main/Beta.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Liquid Hub", --.. Fluent.Version
    SubTitle = "UNIVERSAL SCR",
    TabWidth = 160,
    Size = UDim2.fromOffset(525, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Info", Icon = "info" }),
    Scripts = Window:AddTab({ Title = "Scripts", Icon = "home" }),
    Featured = Window:AddTab({ Title = "Featured Scripts", Icon = "star" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local MainSection = Tabs.Main:AddSection("Liquid Hub Introduction", "home") -- Title, Optional Icon

Tabs.Main:AddDiscord("Liquid Hub Discord Community", {Invite = "https://discord.gg/"})

Main:AddParagraph({
    Title = "Warmest Greetings!",
    Content = "We are Liquid Hub, ready to provide you an op scripts inside Roblox..\n All the scripts listed here are all SAFE.\n We thank you for using our scripts.\n This universal script project is all self-developed.",
    Icon = "info" -- Optional icon
})

Main:AddParagraph({
    Title = "Credentials",
    Content = "We give credits to all of the owners of the scripts listed on this project.",
    Icon = "info" -- Optional Icon
  })

--[[Main:AddButton({
    Title = "",
    Description = "Description text",
    Icon = "settings", -- Lucide icon
    Callback = function()
        print("Clicked")
    end
})
]]

local ScriptSection = Tabs.Scripts:AddSection("SCRIPTS SECTION", "laptop") -- Title, Optional Icon

local BF = Tabs.Scripts:AddSection("BLOX FRUITS", "apple")
local Redz = Scripts:AddButton({
    Title = "Redz Hub",
    Description = "",
    Icon = "",
    Callback = function()
local Settings = { 
    Translator = true;   -- true / false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))(Settings)
    end
})

local SP = Tabs.Scripts:AddSection("Sailor Piece", "⛵")

local RT3 = Tabs.Scripts:AddSection("Restaurant Tycoon 1/2/3", "chef")

local PSG = Tabs.Scripts:AddSection("Pet Simulator X/99/GO", "cat")

local GAG = Tabs.Scripts:AddSection("Grow A Garden", "carrot")



Fluent:Notify({
    Title = "Liquid Hub | UI",
    Content = "Script loaded successfully",
    Duration = 7,
    Icon = "check"
})
print("LOADED! Wait 2 seconds to direct to the Fluent Ui.")

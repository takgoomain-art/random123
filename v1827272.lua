print("Starting to Load...")

print("Now Loading ...")
print("Loading UI........")
print("Loading Script....")
print("Loading Assets.....")
print("Loading Tabs..")
print("Loading Functions....")
print("99.99999%")

print("Detecting Executor...")
print("Collecting Server Id")

if game.PlaceId == 126884695634066 then
    GAG = true
elseif game.PlaceId == 130594398886540 then
	GH = true
elseif game.PlaceId == 4924922222 then
    Brookhaven = true
elseif game.PlaceId == 119048529960596 then
    RT3 = true
elseif game.PlaceId == 3398014311 then
	RT2 = true
elseif game.PlaceId == 2753915549 then
    BloxFruits = true
elseif game.PlaceId == 77747658251236 then
    SailorPiece = true
elseif game.PlaceId == 3101667897 then
	los = true
end

local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()


WindUI:Popup({
    Title = "Welcome to the Liquid Hub!",
    Icon = "info",
    Content = "Hello! Click the Get Started button to access the script completely.",
    Buttons = {
        {
            Title = "Get Started",
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
                Duration = 12, -- 3 seconds
                Icon = "bell",
})

WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Explore the features of the script, enjoy!",
                Duration = 10, -- 3 seconds
                Icon = "bell",
})

WindUI:SetTheme("Dark")
Window:CreateTopbarButton("theme-switcher", "moon", function()
    WindUI:SetTheme(WindUI:GetCurrentTheme() == "Dark" and "Light" or "Dark")
    WindUI:Notify({
        Title = "Theme Changed",
        Content = "Current theme: "..WindUI:GetCurrentTheme(),
        Duration = 2
    })
end, 990)
------ TABS
local Section1 = Window:Section({
    Title = "Informations",
    Icon = "",
    Opened = true,
})

local Main = Section1:Tab({
    Title = "Info",
    Icon = "info", -- optional
    Locked = false,
})

local lp = Section1:Tab({
	Title = "Player",
	Icon = "user", -- optional
	Locked = false,
})

local Server = Section1:Tab({
	Title = "Server",
	Icon = "globe",
	Locked = false,
})

local Section2 = Window:Section({
    Title = "Main",
    Icon = "",
    Opened = true,
})

local Script = Section2:Tab({
    Title = "Scripts",
    Icon = "bird", -- optional
    Locked = false,
})

local More = Section2:Tab({
    Title = "More Scripts",
    Icon = "bird", -- optional
    Locked = false,
})

--[[local GameCodes = Window:Tab({
	Title = "Game Codes",
	Icon = "pencil",
	Locked = false,
})
]]

local Section3 = Window:Section({
    Title = "Misc",
    Icon = "",
    Opened = true,
})

local Settings = Section3:Tab({
    Title = "Settings",
    Icon = "settings", -- optional
    Locked = false,
})

print("Tabs Loaded")

--- MAIN INFO

local Info = Main:Section({ 
    Title = "Liquid Hub Intro",
})

Info:Space({ Columns = 3 })

Info:Section({
		Title = "What is Liquid Hub?",
		TextSize = 20,
		FontWeight = Enum.FontWeight.SemiBold,
	})

	Info:Space()

	Info:Section({
		Title = "Liquid Hub is a universal hub where you can find different scripts in different games! Use it and power-up your multi-tasking script.\nHappy Scripting!",
		TextSize = 14,
		TextTransparency = 0.35,
		FontWeight = Enum.FontWeight.Medium,
	})
--[[local WC = Main:Paragraph({
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
    
})
]]
local DiscordServerParagraph = Main:Paragraph({
			Title = "Liquid Hub | Community",
			Desc = "Join to our Discord Community!!",
			--Image = "https://cdn.discordapp.com/icons/"
			--	.. Response.guild.id
			--	.. "/"
			--	.. Response.guild.icon
			--	.. ".png?size=1024",
		    Thumbnail = "discord-stroke",
			--Thumbnail = "https://cdn.discordapp.com/banners/1300692552005189632/35981388401406a4b7dffd6f447a64c4.png?size=512",
			--ImageSize = 48,
			Buttons = {
				{
					Title = "Copy link",
					Icon = "link",
					Callback = function()
						setclipboard("https://discord.gg/")
					end,
				},
			},
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
local exesect = Main:Section({
	Title = "💻 Executor Status",
})

local function detectExecutor()
    if identifyexecutor then
        return identifyexecutor()
    elseif syn then
        return "Synapse X"
    elseif KRNL_LOADED then
        return "KRNL"
    elseif is_sirhurt_closure then
        return "SirHurt"
    elseif pebc_execute then
        return "ProtoSmasher"
    elseif getexecutorname then
        return getexecutorname()
    else
        return "Executor Unknown"
    end
end

local executorName = detectExecutor()


local exe = Main:Paragraph({
    Title = "Executor:",
    Desc = executorName or "Unable to detect executor..",
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

------- PLAYER TAB
local lpS = lp:Section({
	Title = "Player Movement",
})
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local WalkSpeedEnabled = false
local WalkSpeedValue = 16
local JumpHeightEnabled = false
local JumpHeightValue = 50

-- FUNCTION TO UPDATE VALUES SAFELY
local function updateWalkSpeed()
    local character = player.Character
    if character and character:FindFirstChild("Humanoid") then
        character.Humanoid.WalkSpeed = WalkSpeedEnabled and WalkSpeedValue or 16
    end
end

local function updateJumpPower()
    local character = player.Character
    if character and character:FindFirstChild("Humanoid") then
        character.Humanoid.JumpPower = JumpHeightEnabled and JumpHeightValue or 50
    end
end

-- WALKSPED SLIDER
local speed = lp:Slider({
    Title = "Walkspeed",
    Desc = "Set walkspeed value",
    Step = 1,
    Value = {
        Min = 16,
        Max = 500,
        Default = 16,
    },
    Callback = function(Value)
        WalkSpeedValue = Value
        updateWalkSpeed() -- Apply immediately
        print("Walkspeed set to: " .. Value)
    end
})

-- WALKSPED TOGGLE
local WsV = lp:Toggle({
    Title = "Enable Walkspeed",
    Desc = "",
    Value = false,
    Callback = function(Value)
        WalkSpeedEnabled = Value
        updateWalkSpeed()
        print("Walkspeed " .. (Value and "ON" or "OFF"))
    end
})

-- JUMP POWER SLIDER
local jumpp = lp:Slider({
    Title = "Jump Height",
    Desc = "Set jump height value",
    Step = 1,
    Value = {
        Min = 50,
        Max = 500,
        Default = 50,
    },
    Callback = function(Value)
        JumpHeightValue = Value
        updateJumpPower()
        print("JumpPower set to: " .. Value)
    end
})

-- JUMP POWER TOGGLE
local jumpH = lp:Toggle({
    Title = "Enable Jump Height",
    Desc = "",
    Value = false,
    Callback = function(Value)
        JumpHeightEnabled = Value
        updateJumpPower()
        print("JumpHeight " .. (Value and "ON" or "OFF"))
    end
})


player.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid")
    wait(0.1)
    updateWalkSpeed()
    updateJumpPower()
end)


if player.Character and player.Character:FindFirstChild("Humanoid") then
    updateWalkSpeed()
    updateJumpPower()
end

-- Add mo to sa Player tab (lp) kasama ng Walkspeed/JumpPower mo

local InfiniteJumpEnabled = false
local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

-- INFINITE JUMP TOGGLE
local infJumpToggle = lp:Toggle({
    Title = "Inf Jump",
    Desc = "",
    Value = false,
    Callback = function(Value)
        InfiniteJumpEnabled = Value
        
        if Value then
            print("🦘 Infinite Jump ON")
            WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Infinite Jump Enabled!",
                Duration = 4,
                Icon = "arrow-up",
            })
        else
            print("🦘 Infinite Jump OFF")
			WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Infinite Jump Disabled!",
                Duration = 4,
                Icon = "arrow-down",
            })
        end
    end
})

-- INFINITE JUMP LOGIC
UserInputService.JumpRequest:Connect(function()
    if InfiniteJumpEnabled then
        local character = player.Character
        if character and character:FindFirstChild("Humanoid") then
            -- Method 1: Direct jump
            character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            
            -- Method 2: Velocity boost
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                humanoidRootPart.Velocity = Vector3.new(0, 50, 0)
            end
        end
    end
end)

-- 🔥 UNIVERSAL ANTI AFK - Works sa ALL GAMES/EXECUTORS
local AntiAFKEnabled = false
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")
local player = Players.LocalPlayer

local connections = {}

local antiAFKToggle = lp:Toggle({
    Title = "Anti AFK",
    Desc = "",
    Value = true,
    Callback = function(Value)
        AntiAFKEnabled = Value
        
        if Value then
            print("🚀 Anti AFK STARTED")
            
            -- METHOD 1: VirtualUser (Most Compatible)
            connections.virtualUser = spawn(function()
                while AntiAFKEnabled do
                    pcall(function()
                        VirtualUser:CaptureController()
                        VirtualUser:ClickButton2(Vector2.new())
                    end)
                    wait(55) -- 55 seconds
                end
            end)
            
            -- METHOD 2: Heartbeat (Blox Fruits/Strict games)
            connections.heartbeat = RunService.Heartbeat:Connect(function()
                if AntiAFKEnabled and player.Character then
                    local humanoid = player.Character:FindFirstChild("Humanoid")
                    if humanoid then
                        humanoid:Move(Vector3.new(0, 0, 0.1))
                    end
                end
            end)
            
            -- METHOD 3: Keypress backup
            connections.keypress = spawn(function()
                while AntiAFKEnabled do
                    pcall(function()
                        if keypress then
                            keypress(0x57) -- W
                            wait(0.1)
                            keyrelease(0x57)
                        end
                    end)
                    wait(120)
                end
            end)
            
            WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Anti AFK ACTIVE",
                Duration = 3,
                Icon = "shield-check",
            })
            
        else
            -- CLEANUP
            for name, connection in pairs(connections) do
                if typeof(connection) == "RBXScriptConnection" then
                    connection:Disconnect()
                elseif typeof(connection) == "thread" then
                    task.cancel(connection)
                end
            end
            connections = {}
            
            WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Anti AFK OFF",
                Duration = 2,
                Icon = "x-circle",
            })
        end
    end
})

-- Add sa Player tab (lp) kasama Walkspeed/AntiAFK

local AntiFlingEnabled = false
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local antiFlingConnection

local antiFlingToggle = lp:Toggle({
    Title = "Anti Fling",
    Desc = "",
    Value = false,
    Callback = function(Value)
        AntiFlingEnabled = Value
        
        if Value then
            -- Start Anti Fling
            antiFlingConnection = RunService.Heartbeat:Connect(function()
                local character = player.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    local rootPart = character.HumanoidRootPart
                    local velocity = rootPart.Velocity
                    local humanoid = character:FindFirstChild("Humanoid")
                    
                    -- Check for fling (extreme velocity)
                    if math.abs(velocity.Magnitude) > 200 or math.abs(rootPart.AssemblyLinearVelocity.Magnitude) > 200 then
                        -- Reset position/velocity
                        rootPart.Velocity = Vector3.new(0, 0, 0)
                        rootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                        rootPart.CFrame = CFrame.new(rootPart.Position)
                        
                        -- Optional: Kill fling scripts
                        humanoid.PlatformStand = true
                        task.wait(0.1)
                        humanoid.PlatformStand = false
                    end
                end
            end)
            
            WindUI:Notify({
                Title = "Liquid Hub",
                Content = "🛡️ Anti Fling ACTIVE",
                Duration = 2,
                Icon = "shield-check",
            })
            
        else
            -- Stop Anti Fling
            if antiFlingConnection then
                antiFlingConnection:Disconnect()
                antiFlingConnection = nil
            end
            
            WindUI:Notify({
                Title = "Liquid Hub",
                Content = "🛡️ Anti Fling OFF",
                Duration = 2,
                Icon = "x-circle",
            })
        end
    end
})



-- Fling All (unchanged - perfect!)
--[[local flingAllBtn = lp:Button({
    Title = "Fling Everyone",
    Callback = function()
        -- Your fling all code (perfect!)
    end
})]]
------- SERVER TAB
local statuss = Server:Section({ 
    Title = "Game Status",
})

local T = Server:Paragraph({
    Title = "⏳ Game Time",
    Desc = "",
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
function UpdateTime()
    local GameTime = math.floor(workspace.DistributedGameTime + 0.5)
    local Hour = math.floor(GameTime / (60^2)) % 24
    local Minute = math.floor(GameTime / (60^1)) % 60
    local Second = math.floor(GameTime / (60^0)) % 60
    T:SetDesc(Hour.." Hour (h) "..Minute.." Minute (m) "..Second.." Second (s) ")
end
spawn(function()
    while true do
        UpdateTime()
        wait(1)
    end
end)

local svv = Server:Section({ 
    Title = "Server Status",
})

local lastCopyTime = 0
local copyCooldown = 2
local id = Server:Paragraph({
    Title = "Server ID",
    Desc = game.JobId ~= "" and game.JobId or "Server ID not available.",
    --Color = "Red",
    --Image = "",
    --ImageSize = 30,
    --Thumbnail = "",
    --ThumbnailSize you 80,
    Locked = false,
    Buttons = {
        {
            Icon = "link",
            Title = "Copy Server ID",
            Callback = function()
				if tick() - lastCopyTime >= copyCooldown then
            lastCopyTime = tick()
            setclipboard(tostring(game.JobId))
					end
				end,
        }
    }
    
})

print("Server Id Collected")
print("Server Id: " .. game.JobId)

local id2 = Server:Input({
    Title = "Server Id",
    Desc = "Enter Server Id",
    Value = "Enter ID",
    --InputIcon = "bird",
    Type = "Input", -- or "Textarea"
    Placeholder = "Enter ID...",
    Callback = function(Value) 
			getgenv().Job = Value
        print("text entered: ")
    end
})
local lastTeleportTime = 0
local teleportCooldown = 5
local joinn = Server:Button({
    Title = "Join Server",
    Desc = "Join to the server id input.",
    Locked = false,
    Callback = function()
        if tick() - lastTeleportTime >= teleportCooldown then
            lastTeleportTime = tick()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, getgenv().Job, game.Players.LocalPlayer)        
		end
    end
})

local lastTeleportTime = 0
local teleportCooldown = 4
local rjoin = Server:Button({
    Title = "Rejoin Server",
    Desc = "",
    Locked = false,
    Callback = function()
        if tick() - lastTeleportTime >= teleportCooldown then
            lastTeleportTime = tick()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)        
		end
    end
})

function Hop()
    WindUI:Notify({Title = "Hopping...", Content = "Finding servers...", Duration = 2})
    
    -- Get first page only (FAST)
    local servers = game:GetService("HttpService"):JSONDecode(
        game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=50")
    ).data
    
    for _, server in ipairs(servers) do
        if server.playing < server.maxPlayers * 0.8 then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, server.id)
            return
        end
    end
    
    -- Fallback
    game:GetService("TeleportService"):Teleport(game.PlaceId)
end

local Hop = Server:Button({
    Title = "Server Hop",
    Desc = "",
    Locked = false,
    Callback = function()
        Hop()
    end
})


	
------ Scripts Tab
local Scripsss = Script:Section({ 
    Title = "SCRIPTS SECTION",
})

local Game = Script:Paragraph({
    Title = "🗝️ KEY SYSTEM STATUS",
    Desc = "🔐 - The script has a key system.\n🔓 - The script system has no key system.\n❓ - No info of key system found.",
    Color = "Red",
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
	
local azuree = Script:Button({
    Title = "🔓 W-Azure",
    Desc = "",
    Locked = false,
    Callback = function()   
		loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
			WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end
		})
	local hohoo = Script:Button({
    Title = "🔐 HoHo Hub",
    Desc = "",
    Locked = false,
    Callback = function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
               WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end
		})

	local qntmonyx = Script:Button({
		Title = "🔓 Quantum ONYX",
		Desc = "",
		Locked = false,
		Callback = function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/QuantumOnyx.lua"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})
	local script222 = Script:Button({
		Title = "🔓 Nat Hub",
		Desc = "",
		Locked = false,
		Callback = function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/bf.lua"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})
	local cokka = Script:Button({
		Title = "🔐 Cokka Hub",
		Desc = "",
		Locked = false,
		Callback = function()
				loadstring(game:HttpGet"https://raw.githubusercontent.com/UserDevEthical/Loadstring/main/CokkaHub.lua")()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})
	
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
    Title = "🔓 No Hub",
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

local GHHH = Script:Section({
	Title = "[🌱] Garden Horizon",
	})

if GH then
	local winddhub = Script:Button({
			Title = "🔓 Wind Hub",
			Desc = "",
			Locked = false,
			Callback = function()
				loadstring(game:HttpGet('https://raw.githubusercontent.com/Maanaaaa/WindHub/refs/heads/main/MainScript.luau'))()
			end})

else
	local ghn = Script:Paragraph({
    Title = "NOTICE:",
    Desc = "You're not in Garden Horizon game.",
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

if RT3 then
local rt3 = Script:Section({ 
    Title = "[👨‍🍳] Restaurant Tycoon 3",
})

local rt3hub1 = Script:Button({
    Title = "🔓 Samuraa1 Hub",
    Desc = "",
    Locked = false,
    Callback = function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/samuraa1/Samuraa1-Hub/refs/heads/main/RT3.lua'))()
           WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end
        })

local rt3hub2 = Script:Button({
	Title = "🔓 Sniper Hub",
	Desc = "",
	Locked = false,
	Callback = function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/pubmain/sniper-bin/refs/heads/main/Restaurant%20Tycoon%203.luau"))()
			WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end
		})
elseif RT2 then
	local rt2 = Script:Section({
		Title = "[👨‍🍳] Restaurant Tycoon 2",
})

else
	local rtggg = Script:Section({
		Title = "[👨‍🍳] Restaurant Tycoon",
})
	
local rtg = Script:Paragraph({
    Title = "NOTICE:",
    Desc = "You're not in any Restaurant Tycoon game.",
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

--[[ WORSTTTT
	
local ynotjoi2n = Script:Button({
    Title = "Join Game",
    Desc = "Join in Restaurant Tycoon 2.",
    Locked = false,
    Callback = function()
        -- Extract PlaceId from URL (119048529960596)
        local placeId = 3398014311
        
        -- Method 1: TeleportService (Recommended)
        local success, err = pcall(function()
            game:GetService("TeleportService"):Teleport(placeId, game.Players.LocalPlayer)
        end)
        
        if success then
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Teleporting to the game... Please wait!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
            print("🚀 Teleporting to Restaurant Tycoon 2...")
        else
            warn("❌ Teleport failed: " .. tostring(err))
        end
        
        -- Method 2: Fallback (Copy Link)
        if not success then
            WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Failed to join, please try again later!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
            print("📋 Game link copied to clipboard!")
        end
    end
})

local ynotjoin = Script:Button({
    Title = "Join Game",
    Desc = "Join in Restaurant Tycoon 3.",
    Locked = false,
    Callback = function()
        -- Extract PlaceId from URL (119048529960596)
        local placeId = 119048529960596
        
        -- Method 1: TeleportService (Recommended)
        local success, err = pcall(function()
            game:GetService("TeleportService"):Teleport(placeId, game.Players.LocalPlayer)
        end)
        
        if success then
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Teleporting to the game... Please wait!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
            print("🚀 Teleporting to Restaurant Tycoon 3...")
        else
            warn("❌ Teleport failed: " .. tostring(err))
        end
        
        -- Method 2: Fallback (Copy Link)
        if not success then
            WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Failed to join, please try again later!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
            print("📋 Game link copied to clipboard!")
        end
		end
})
end -- else end 

local Button123 = Script:Button({
    Title = "🎮 Join RT3",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        local placeId = 119048529960596
        
        pcall(function()
            TeleportService:Teleport(placeId)
        end)
    end
})]]
end -- real else end

local spp = Script:Section({
		Title = "[⛵] Sailor Piece",
})

if SailorPiece then
	print(".")

else
	local silor = Script:Paragraph({
    Title = "NOTICE:",
    Desc = "You're not in Sailor Piece game.",
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

	local LOSpeed = Script:Section({
			Title = "[🏃‍♂️] Legend of Speed",
		})
if los then
	local speeeeed = Script:Paragraph({
    Title = "Tips:",
    Desc = "We do recommend to change your walkspeed in Player tab.",
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

else
	local speedddd = Script:Paragraph({
    Title = "NOTICE:",
    Desc = "You're not in Legend of Speed game.",
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

local idkkk = More:Section({
		Title = "More Scripts Section",
})

local fe = More:Section({
		Title = "FE SCRIPTS",
})

local iy = More:Button({
	Title = "🔓 Infinite Yield",
	Desc = "",
	Locked = false,
	Callback = function()
			loadstring(game:HttpGet('https://cdn.robloxscripts.gg/public/furky/furky-infinite-yield-roblox-admin-script-source.lua'))()
		end})

----------- SETTINGS TAB

-- Simple one-toggle lighting (Player/Settings tab)
-- Simple one-toggle lighting (Player/Settings tab)

local Lighting = game:GetService("Lighting")
local StarterGui = game:GetService("StarterGui")
local effects = {}
local vignetteGui = nil

local lightingToggle = Settings:Toggle({
    Title = "RTX Summer Lighting [BETA]",
    Desc = "Enabling this could cause serious lag on some device.",
    Value = false,
    Callback = function(Value)
        if Value then
            -- CREATE ALL EFFECTS
            for i, v in pairs(Lighting:GetChildren()) do
                if v:IsA("PostEffect") or v:IsA("Sky") or v:IsA("Atmosphere") then
                    v:Destroy()
                end
            end
            
            -- Effects
            local Bloom = Instance.new("BloomEffect", Lighting)
            local Blur = Instance.new("BlurEffect", Lighting)
            local ColorCor = Instance.new("ColorCorrectionEffect", Lighting)
            local SunRays = Instance.new("SunRaysEffect", Lighting)
            local Sky = Instance.new("Sky", Lighting)
            local Atm = Instance.new("Atmosphere", Lighting)
            
            effects = {Bloom, Blur, ColorCor, SunRays, Sky, Atm}
            
            -- VIGNETTE
            vignetteGui = Instance.new("ScreenGui", StarterGui)
            vignetteGui.IgnoreGuiInset = true
            local ShadowFrame = Instance.new("ImageLabel", vignetteGui)
            ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
            ShadowFrame.Position = UDim2.new(0.5,0,1,0)
            ShadowFrame.Size = UDim2.new(1,0,1.05,0)
            ShadowFrame.BackgroundTransparency = 1
            ShadowFrame.Image = "rbxassetid://4576475446"
            ShadowFrame.ImageTransparency = 0.3
            ShadowFrame.ZIndex = 10
            
            -- Apply settings (your exact values)
            Bloom.Intensity = 0.3; Bloom.Size = 10; Bloom.Threshold = 0.8
            Blur.Size = 5
            ColorCor.Brightness = 0.1; ColorCor.Contrast = 0.5; ColorCor.Saturation = -0.3; ColorCor.TintColor = Color3.fromRGB(255, 235, 203)
            SunRays.Intensity = 0.075; SunRays.Spread = 0.727
            Sky.SkyboxBk = "http://www.roblox.com/asset/?id=151165214"
            Sky.SkyboxDn = "http://www.roblox.com/asset/?id=151165197"
            Sky.SkyboxFt = "http://www.roblox.com/asset/?id=151165224"
            Sky.SkyboxLf = "http://www.roblox.com/asset/?id=151165191"
            Sky.SkyboxRt = "http://www.roblox.com/asset/?id=151165206"
            Sky.SkyboxUp = "http://www.roblox.com/asset/?id=151165227"
            Sky.SunAngularSize = 10
            Lighting.Ambient = Color3.fromRGB(2,2,2); Lighting.Brightness = 2.25
            Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0); Lighting.ColorShift_Top = Color3.fromRGB(0,0,0)
            Lighting.EnvironmentDiffuseScale = 0.2; Lighting.EnvironmentSpecularScale = 0.2
            Lighting.GlobalShadows = true; Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0)
            Lighting.ShadowSoftness = 0.2; Lighting.ClockTime = 17
            Lighting.GeographicLatitude = 45; Lighting.ExposureCompensation = 0.5
            Atm.Density = 0.364; Atm.Offset = 0.556; Atm.Color = Color3.fromRGB(199, 175, 166)
            Atm.Decay = Color3.fromRGB(44, 39, 33); Atm.Glare = 0.36; Atm.Haze = 1.72
            
            WindUI:Notify({Title = "🌅", Content = "Lighting ON", Duration = 2})
            
        else
            -- 🔥 COMPLETE ROBLOX RESET
            for _, obj in pairs(Lighting:GetChildren()) do
                if obj:IsA("PostEffect") or obj:IsA("Sky") or obj:IsA("Atmosphere") then
                    obj:Destroy()
                end
            end
            
            if vignetteGui then
                vignetteGui:Destroy()
                vignetteGui = nil
            end
            
            effects = {}
            
            -- FULL DEFAULT RESET
            Lighting:ClearAllChildren()
            Lighting.Ambient = Color3.fromRGB(0, 0, 0)
            Lighting.Brightness = 1
            Lighting.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
            Lighting.ColorShift_Top = Color3.fromRGB(0, 0, 0)
            Lighting.EnvironmentDiffuseScale = 1
            Lighting.EnvironmentSpecularScale = 1
            Lighting.GlobalShadows = false
            Lighting.OutdoorAmbient = Color3.fromRGB(127, 127, 127)
            Lighting.ShadowSoftness = 1
            Lighting.ClockTime = 14
            Lighting.GeographicLatitude = 0
            Lighting.ExposureCompensation = 0
            
            WindUI:Notify({Title = "✅", Content = "Lighting FULLY Reset", Duration = 2})
        end
    end
})

Settings:Button({
		Title = "PShader Custom Lighting",
		Desc = "Loads PShader Lighting script",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/takgoomain-art/random123/refs/heads/main/shader.lua"))()

		end})

Settings:Section({
		Title = "UI",
	})
Settings:Button({
		Title = "Destroy Window UI",
		Color = Color3.fromHex("#ff4830"),
		Justify = "Center",
		Icon = "shredder",
		IconAlign = "Left",
		Callback = function()
			Window:Destroy()
		end,
	})

print("Loaded every function of the script...")

print("Executor Detected: " .. executorName)
print("Refreshing the system....")

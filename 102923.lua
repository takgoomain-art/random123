--[[

Welcome, Skidders! You've come here, we're glad.
So it means our obfuscator or security is weak?

]]
local WindUI = _G.WindUI
local scriptVersion = "v1.444.5"

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- 🧾 Roles (by username)
local Roles = {
    Owner = {
		"eddiejr031"
    },

    Admin = {
        "JumpyFrog80",
		"alvicc12"
    },

	Beta = {
		""
	},

    User = {} -- default
}

-- 🔍 Check function
local function hasRole(roleName)
    local roleList = Roles[roleName]
    if not roleList then return false end

    for _, name in ipairs(roleList) do
        if name == player.Name then
            return true
        end
    end

    return false
end

local canUse = hasRole("Admin") or hasRole("Owner")
local isOwner = hasRole("Owner")
local isAdmin = hasRole("Admin")
local isBeta = hasRole("Beta")
local isUser = hasRole("User")

--  Colors
local RoleColors = {
    Owner = Color3.fromHex("#ff2d2d"),
    Admin = Color3.fromHex("#ffae00"),
    Beta  = Color3.fromHex("#a855f7"),
    User  = Color3.fromHex("#30ff6a")
}

--  Icons
local RoleIcons = {
    Owner = "crown",
    Admin = "shield",
    Beta  = "flask",
    User  = "user"
}

--  Detect Role
local function getRole()
    if isOwner then
        return "Owner"
    elseif isAdmin then
        return "Admin"
    elseif isBeta then
        return "Beta"
    else
        return "User"
    end
end

local roleName = getRole()

-------- TAG CALLLBACK


print("Starting to Load...")

print("Now Loading ...")
print("Loading UI........")
print("Loading Script....")
print("Loading Assets.....")
print("Loading Tabs..")
print("Loading Functions....")
print("Detecting Script Version")

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
    BF1 = true
elseif game.PlaceId == 4442272183 then
	BF2 = true
elseif game.PlaceId == 7449423635 then
	BF3 = true
elseif game.PlaceId == 77747658251236 then
    SailorPiece = true
elseif game.PlaceId == 3101667897 then
	los = true
elseif game.PlaceId == 89469502395769 then
	Kick = true
elseif game.PlaceId == 17625359962 then
	Rvs = true
elseif game.PlaceId == 109983668079237 then
	SAB = true
elseif game.PlaceId == 6284583030 then
	PSX = true
elseif game.PlaceId == 8737899170 then
	PS99 = true
elseif game.PlaceId == 18901165922 then
	PG = true
elseif game.PlaceId == 920587237 then
	AM = true
elseif game.PlaceId == 79546208627805 then
	Nights = true
end

--[[ 

== GAME SUMMARY ==
GAG = Grow a Garden
GH  = Garden Horizon
BH  = Brookhaven RP
RT3 = Restaurant Tycoon 3
RT2 = Restaurant Tycoon 2
BF1 = Blox Fruits | First Sea
BF2 = Blox Fruits | Second Sea
BF3 = Blox Fruits | Third Sea
SP  = Sailor Piece
los = Legend of Speed
kck = Kick a Lucky Block
Rvs = Rivals
SAB = Steal a Brainrot
PSX = Pet Simulator X
PS99 = Pet Simulator 99
PG = Pet's Go
AM. = Adopt Me
99N = 99 Nights in the Forest

Tab: Script Tab

]]




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
    Icon = "rbxassetid://85217490213932", -- lucide icon. optional
	IconSize = "48",
    Author = "by Liquid Management", -- optional
    HideSearchBar = false,
	Transparent = true,
	Resizable = true,
	Acrylic = true,
	ScrollBarEnabled = true,
	Size = UDim2.fromOffset(620, 490),

		User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
            print("clicked")
        end,
    }
		
		
})


WindUI:Notify({
                Title = "Liquid Hub • Loaded!",
                Content = "Universal Hub Loaded..",
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


Window:Tag({
    Title = roleName,
    Icon = RoleIcons[roleName],
    Color = RoleColors[roleName],
    Radius = 6
})

local RunService = game:GetService("RunService")
local Stats = game:GetService("Stats")

local Tag1 = Window:Tag({
    Title = "Loading...",
    Icon = "wifi",
    Color = Color3.fromHex("#30ff6a"),
    Radius = 8,
})

local fps = 0
local lastTime = tick()

-- FPS Calculator
RunService.RenderStepped:Connect(function()
    local now = tick()
    fps = math.floor(1 / (now - lastTime))
    lastTime = now
end)

-- Main Loop (update UI)
task.spawn(function()
    while true do
        task.wait(0.5)

        -- Get Ping (MS)
        local pingStat = Stats.Network.ServerStatsItem["Data Ping"]
        local ms = math.floor(pingStat:GetValue())

        -- Determine Color
        local color

        if fps <= 24 or ms >= 225 then
            --color = Color3.fromRGB(255, 0, 0) -- RED
			color = Color3.fromHex("#e61212")
        elseif fps <= 45 or ms >= 120 then
            --color = Color3.fromRGB(255, 255, 0) -- YELLOW
			color = Color3.fromHex("#ffa703")
        else
            --color = Color3.fromRGB(0, 255, 0) -- GREEN
			color = Color3.fromHex("#24ff03")
        end

        -- Update Tag
        Tag1:SetTitle(string.format("%d MS | %d FPS", ms, fps))
        Tag1:SetColor(color)
    end
end)



local VersionTag = Window:Tag({
    Title = scriptVersion,
    Icon = "github",
    Color = Color3.fromHex("#3aa3ff"),
    Radius = 10,
})
print("Script Version Detected!")
print("Script Version:" .. scriptVersion)
------ TABS
local Mod = Window:Tab({
		Title = "Moderator Only",
		Icon = "hammer",
		Locked = not canUse,
	})
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

local Troll = Section2:Tab({
	Title = "Troll",
	Icon = "skull",
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

local Teleport = Section3:Tab({
	Title = "Teleport",
	Icon = "locate",
	Locked = false,
})
local Settings = Section3:Tab({
    Title = "Settings",
    Icon = "settings", -- optional
    Locked = false,
})

print("Tabs Loaded")

-- TAB SELECTED
Main:Select()
--- MAIN INFO

local Info = Main:Section({ 
    Title = "Liquid Hub Intro",
	Icon = "info",
})

Info:Space({ Columns = 3 })

Info:Section({
		Title = "What is Liquid Hub?",
		TextSize = 24,
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

local InfoGroup1 = Main:Group({})

local DiscordServerParagraph = InfoGroup1:Paragraph({
			Title = "Liquid Hub | Community",
			Desc = "Join to our Discord Community!!",
			Image = "https://cdn.discordapp.com/attachments/1370249607405244416/1497554322072797284/75100e24-bbd5-4052-8404-32c4c31ecc1a.jpg?ex=69edf1a5&is=69eca025&hm=dfaf406b4df410cf62a3c1c6c3bcef8e49cc768079dfbe23ce6c00f9997a0633&",
			--	.. Response.guild.id
			--	.. "/"
			--	.. Response.guild.icon
			--	.. ".png?size=1024",
		    Thumbnail = "",
		--Thumbnail = "https://cdn.discordapp.com/banners/1300692552005189632/35981388401406a4b7dffd6f447a64c4.png?size=512",
			ImageSize = 30,
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
local Credits = InfoGroup1:Paragraph({
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

InfoGroup1:Space()

local InfoGroup2 = Main:Group({})

local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local player = Players.LocalPlayer

-- 👤 USER INFO
local username = player.Name
local displayName = player.DisplayName
local userId = player.UserId

-- Avatar Image
local userImage = string.format(
    "https://www.roblox.com/headshot-thumbnail/image?userId=%d&width=420&height=420&format=png",
    userId
)

local userParagraph = InfoGroup2:Paragraph({
    Title = displayName, -- 🔥 Display Name sa Title
    Desc = "@" .. username, -- 🔥 Username sa baba
    Image = userImage,
    ImageSize = 80,
    Locked = false,
})

---

-- 🎮 GAME INFO
local placeId = game.PlaceId
local gameName = "Unknown Game"
local creatorName = "Unknown"

pcall(function()
    local info = MarketplaceService:GetProductInfo(placeId)
    gameName = info.Name

    -- Creator info
    if info.Creator and info.Creator.Name then
        creatorName = info.Creator.Name
    end
end)

-- Game Thumbnail
local gameImage = string.format(
    "https://www.roblox.com/asset-thumbnail/image?assetId=%d&width=420&height=420&format=png",
    placeId
)

local gameParagraph = InfoGroup2:Paragraph({
    Title = gameName, -- 🔥 Game Name sa Title
    Desc = "@" .. creatorName, -- 🔥 Creator username
    Image = gameImage,
    ImageSize = 80,
    Locked = false,
})

InfoGroup2:Space()

local InfoGroup3 = Main:Group({})

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- 🔁 Execution Counter (global para di ma-reset agad)
getgenv().ExecutionCount = (getgenv().ExecutionCount or 0) + 1

-- 🧾 Account Info
local accountId = player.UserId
local accountAge = player.AccountAge -- in days
local executionTimes = getgenv().ExecutionCount

-- 📌 Format Desc
local descText = string.format(
    "Account ID: %d\nAccount Age: %d days\nExecution Times: %d",
    accountId,
    accountAge,
    executionTimes
)

-- 📌 UI
local accountParagraph = InfoGroup3:Paragraph({
    Title = "Account Details",
    Desc = descText,
    Locked = false,
})

local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local placeId = game.PlaceId
local gameId = game.GameId

local creatorId = "Unknown"
local creatorName = "Unknown"

pcall(function()
    local info = MarketplaceService:GetProductInfo(placeId)

    if info.Creator then
        creatorId = info.Creator.Id or "Unknown"
        creatorName = info.Creator.Name or "Unknown"
    end
end)

local maxPlayers = Players.MaxPlayers

-- 📌 Create Paragraph FIRST
local gameDetailsParagraph = InfoGroup3:Paragraph({
    Title = "Game Details",
    Desc = "Loading...",
    Locked = false,
})

-- 🔄 Update function
local function updateUI()
    local currentPlayers = #Players:GetPlayers()
    local playerText = string.format("%d/%d", currentPlayers, maxPlayers)

    local descText = string.format(
        "Place Id: %s\nGame Id: %s\nCreator Name: %s\nCreator Id: %s\nPlayers: %s",
        tostring(placeId),
        tostring(gameId),
        tostring(creatorName),
        tostring(creatorId),
        playerText
    )

    gameDetailsParagraph:SetDesc(descText)
end

-- 🚀 Initial update
updateUI()

-- 🔁 Live updates
Players.PlayerAdded:Connect(updateUI)
Players.PlayerRemoving:Connect(updateUI)

InfoGroup3:Space()

local InfoGroup4 = Main:Group({})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

-- 📌 Paragraph
local StatsParagraph = InfoGroup4:Paragraph({
    Title = "Character Stats",
    Desc = "Loading...",
    Locked = true
})

-- 🔄 Update loop
RunService.RenderStepped:Connect(function()
    local char = player.Character
    if not char then return end

    local humanoid = char:FindFirstChildOfClass("Humanoid")
    local root = char:FindFirstChild("HumanoidRootPart")

    if humanoid and root then
        local speed = humanoid.WalkSpeed
        local jump = humanoid.JumpPower

        local pos = root.Position

        local text = string.format(
            "Speed: %d\nJump: %d\nPos: X: %.1f | Y: %.1f | Z: %.1f",
            speed,
            jump,
            pos.X,
            pos.Y,
            pos.Z
        )

        StatsParagraph:SetDesc(text)
    end
end)

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

local UIS = game:GetService("UserInputService")

-- 🔍 Executor Detection
--[[local executorName = (identifyexecutor and identifyexecutor())
    or (getexecutorname and getexecutorname())
    or "Unknown Executor"
]]
-- 📱 Platform (Mobile / PC / Console)
local platform = "Unknown"

if UIS.TouchEnabled and not UIS.KeyboardEnabled then
    platform = "Mobile"
elseif UIS.KeyboardEnabled then
    platform = "PC"
elseif UIS.GamepadEnabled then
    platform = "Console"
end

-- 🖥️ Device (iOS / Android / Windows / MacOS)
local device = "Unknown"
local platformEnum = UIS:GetPlatform()

if platformEnum == Enum.Platform.IOS then
    device = "iOS"
elseif platformEnum == Enum.Platform.Android then
    device = "Android"
elseif platformEnum == Enum.Platform.Windows then
    device = "Windows"
elseif platformEnum == Enum.Platform.OSX then
    device = "MacOS"
else
    device = "Unsupported"
end

-- 🧾 Final Description
local descText = string.format(
    "Executor: %s\nPlatform: %s\nDevice: %s",
    executorName,
    platform,
    device
)

-- 📌 UI Output
--[[local exe = InfoGroup2:Paragraph({
    Title = "Client Information",
    Desc = descText,
    Locked = false,
})
]]
local exe = InfoGroup4:Paragraph({
    Title = "Client Details",
    Desc = descText,
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
	Icon = "user-pen",
	Opened = true,
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
        Max = 950,
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
        Max = 1000,
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

local moove = lp:Section({
		Title = "Other Movement",
		Icon = "user-search",
		Opened = true,
	})
-- Add mo to sa Player tab (lp) kasama ng Walkspeed/JumpPower mo

local InfiniteJumpEnabled = false
local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

-- INFINITE JUMP TOGGLE
local infJumpToggle = moove:Toggle({
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

local antiAFKToggle = moove:Toggle({
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

--[[local AntiFlingEnabled = false
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local antiFlingConnection

local antiFlingToggle = moove:Toggle({
    Title = "Anti Fling [BETA]",
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

--// =========================
--// SERVICES
--// =========================
local Services = setmetatable({}, {
    __index = function(Self, Index)
        local NewService = game:GetService(Index)
        if NewService then
            Self[Index] = NewService
        end
        return NewService
    end
})

local Players = Services.Players
local RunService = Services.RunService

local LocalPlayer = Players.LocalPlayer

--// =========================
--// STATE
--// =========================
local AntiFlingEnabled = false
local SilentMode = true
local Connections = {}
local LastPosition = nil

--// =========================
--// CLEAN CONNECTIONS
--// =========================
local function DisconnectAll()
    for _,v in pairs(Connections) do
        pcall(function()
            v:Disconnect()
        end)
    end
    Connections = {}
end

--// =========================
--// MAIN ANTI FLING
--// =========================
local function StartAntiFling()

    local function PlayerAdded(Player)
        local Detected = false
        local Character
        local PrimaryPart

        local function CharacterAdded(NewCharacter)
            Character = NewCharacter
            repeat task.wait()
                PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
            until PrimaryPart
            Detected = false
        end

        CharacterAdded(Player.Character or Player.CharacterAdded:Wait())

        table.insert(Connections, Player.CharacterAdded:Connect(CharacterAdded))

        table.insert(Connections, RunService.Heartbeat:Connect(function()
            if not AntiFlingEnabled then return end
            if not Character or not PrimaryPart then return end

            if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50
            or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then

                Detected = true

                for _,v in ipairs(Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                        v.AssemblyAngularVelocity = Vector3.new(0,0,0)
                        v.AssemblyLinearVelocity = Vector3.new(0,0,0)
                    end
                end
            end
        end))
    end

    for _,v in ipairs(Players:GetPlayers()) do
        if v ~= LocalPlayer then
            PlayerAdded(v)
        end
    end

    table.insert(Connections, Players.PlayerAdded:Connect(PlayerAdded))

    -- LOCAL PROTECTION (silent)
    table.insert(Connections, RunService.Heartbeat:Connect(function()
        if not AntiFlingEnabled then return end

        pcall(function()
            local char = LocalPlayer.Character
            if not char then return end

            local root = char:FindFirstChild("HumanoidRootPart")
            if not root then return end

            if root.AssemblyLinearVelocity.Magnitude > 250
            or root.AssemblyAngularVelocity.Magnitude > 250 then

                root.AssemblyAngularVelocity = Vector3.new(0,0,0)
                root.AssemblyLinearVelocity = Vector3.new(0,0,0)

                if LastPosition then
                    root.CFrame = LastPosition
                end
            else
                LastPosition = root.CFrame
            end
        end)
    end))
end

--// =========================
--// WIND UI TOGGLE
--// =========================
local antife = lp:Toggle({
    Title = "Anti Fling V2",
    Desc = "",
    Value = false,
    Callback = function(state)

        AntiFlingEnabled = state

        if state then
            StartAntiFling()

            WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Anti Fling Enabled ✅",
                Duration = 3
            })
        else
            DisconnectAll()

            WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Anti Fling Disabled ❌",
                Duration = 3
            })
        end
    end
})
]]
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

local noclipEnabled = false
local connection

-- Function para i-set CanCollide
local function setNoClip(state)
    local character = player.Character
    if not character then return end

    for _, v in pairs(character:GetDescendants()) do
        if v:IsA("BasePart") then
            v.CanCollide = not state
        end
    end
end

-- Toggle UI
local NoClipToggle = moove:Toggle({
    Title = "No Clip",
    Desc = "",
    Value = false,
    Callback = function(state)
        noclipEnabled = state

        if state then
            -- Enable noclip loop
            connection = RunService.Stepped:Connect(function()
                setNoClip(true)
            end)
        else
            -- Disable noclip
            if connection then
                connection:Disconnect()
                connection = nil
            end
            setNoClip(false)
        end
    end
})

-- Handle respawn
player.CharacterAdded:Connect(function()
    task.wait(1)
    if noclipEnabled then
        setNoClip(true)
    end
end)

local flys = moove:Section({
		Title = "Fly",
		Icon = "navigation",
		Opened = false,
	})
local flygui = flys:Button({
		Title = "🔓 Fly GUI 1",
		Desc = "Loads a universal FLY GUI",
		Locked = false,
		Callback = function()
			loadstring(game:HttpGet("https://github.com/MiniCapy/scripts/raw/refs/heads/main/fly%20GUI"))()
		end})

local flygui2 = flys:Button({
		Title = "🔓 Fly GUI 2",
		Desc = "Loads a universal FLY GUI",
		Locked = false,
		Callback = function()
			loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-universal-fly-86513"))()
		end})
-- Fling All (unchanged - perfect!)
--[[local flingAllBtn = lp:Button({
    Title = "Fling Everyone",
    Callback = function()
        -- Your fling all code (perfect!)
    end
})]]

local RBLXS = lp:Section({
		Title = "Roblox Character",
		Icon = "folder-cog",
		Opened = true,
	})

RBLXS:Button({
	Title = "Reset Character",
	Callback = function()
		Players.LocalPlayer.Character:BreakJoints()
	end,
})

RBLXS:Button({
	Title = "Leave Game",
	Callback = function()
		Players.LocalPlayer:Kick("You left the game.")
	end,
})

local Cam = lp:Section({
		Title = "Camera",
		Icon = "camera",
		Opened = true,
	})

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- default FOV
local defaultFOV = camera.FieldOfView

-- state
local fovEnabled = false
local fovValue = 70

-- 🔘 TOGGLE
Cam:Toggle({
    Title = "Custom FOV",
    Desc = "Enable custom field of view",
    Value = false,
    Callback = function(state)
        fovEnabled = state

        if state then
            camera.FieldOfView = fovValue
        else
            camera.FieldOfView = defaultFOV
        end
    end
})

-- 🎚️ SLIDER
Cam:Slider({
    Title = "FOV",
    Desc = "Adjust field of view",
    Value = {
        Min = 50,
        Max = 120,
        Default = 70,
    },
    Callback = function(value)
        fovValue = value

        if fovEnabled then
            camera.FieldOfView = value
        end
    end
})

-- 🔄 Handle respawn / camera reset
player.CharacterAdded:Connect(function()
    task.wait(1)
    if fovEnabled then
        camera.FieldOfView = fovValue
    else
        camera.FieldOfView = defaultFOV
    end
end)

local ESPbro = lp:Section({
		Title = "ESP",
		Icon = "brush",
		Opened = true,
	})

-- Add sa Player tab (lp)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local RainbowESPEnabled = false
local espConnections = {}
local highlightConnections = {}

local rainbowToggle = ESPbro:Toggle({
    Title = "ESP [RAINBOW]",
    Desc = "Rainbow name tags + highlights",
    Value = false,
    Callback = function(Value)
        RainbowESPEnabled = Value
        
        if Value then
            -- ENABLE ESP + HIGHLIGHTS
            local function createRainbowESP(player)
                if player == LocalPlayer then return end
                
                local function setupESP(character)
                    local head = character:WaitForChild("Head", 5)
                    if not head then return end
                    
                    -- Clean previous ESP
                    local oldESP = head:FindFirstChild("RainbowESP")
                    if oldESP then oldESP:Destroy() end
                    
                    -- BillboardGui
                    local billboard = Instance.new("BillboardGui")
                    billboard.Name = "RainbowESP"
                    billboard.Adornee = head
                    billboard.Size = UDim2.new(4, 0, 1.5, 0)
                    billboard.StudsOffset = Vector3.new(0, 3, 0)
                    billboard.AlwaysOnTop = true
                    billboard.Parent = head
                    
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.BackgroundTransparency = 1
                    textLabel.TextScaled = true
                    textLabel.Text = player.Name
                    textLabel.Font = Enum.Font.GothamBold
                    textLabel.TextStrokeTransparency = 0
                    textLabel.TextStrokeColor3 = Color3.new(0,0,0)
                    textLabel.Parent = billboard
                    
                    -- Rainbow loop
                    local espConn
                    espConn = RunService.Heartbeat:Connect(function()
                        if not RainbowESPEnabled or not billboard.Parent then
                            espConn:Disconnect()
                            return
                        end
                        local hue = tick() % 5 / 5
                        textLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
                    end)
                    
                    table.insert(espConnections, espConn)
                end
                
                if player.Character then
                    setupESP(player.Character)
                end
                player.CharacterAdded:Connect(setupESP)
            end
            
            local function applyRainbowHighlight(character)
                if character:FindFirstChildOfClass("Highlight") then return end
                
                local highlight = Instance.new("Highlight")
                highlight.Parent = character
                highlight.FillTransparency = 0.5
                highlight.OutlineTransparency = 0
                
                local highlightConn
                highlightConn = RunService.Heartbeat:Connect(function()
                    if not RainbowESPEnabled or not highlight.Parent then
                        highlightConn:Disconnect()
                        return
                    end
                    local hue = tick() % 5 / 5
                    highlight.FillColor = Color3.fromHSV(hue, 1, 1)
                    highlight.OutlineColor = Color3.fromHSV(hue, 0.5, 1)
                end)
                
                table.insert(highlightConnections, highlightConn)
            end
            
            -- Apply to all players
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    if player.Character then
                        createRainbowESP(player)
                        applyRainbowHighlight(player.Character)
                    end
                    player.CharacterAdded:Connect(function(char)
                        createRainbowESP(player)
                        applyRainbowHighlight(char)
                    end)
                end
            end
            
            -- New players
            Players.PlayerAdded:Connect(function(player)
                if player ~= LocalPlayer then
                    player.CharacterAdded:Connect(function(char)
                        createRainbowESP(player)
                        applyRainbowHighlight(char)
                    end)
                end
            end)
            
            WindUI:Notify({
                Title = "Liquid Hub",
                Content = "🌈 Rainbow ESP + Highlights ON",
                Duration = 3,
                Icon = "rainbow",
            })
            
        else
            -- CLEANUP
            for _, conn in pairs(espConnections) do
                if conn then conn:Disconnect() end
            end
            for _, conn in pairs(highlightConnections) do
                if conn then conn:Disconnect() end end
            
            espConnections = {}
            highlightConnections = {}
            
            -- Remove all ESP/Highlights
            for _, player in ipairs(Players:GetPlayers()) do
                if player.Character then
                    local head = player.Character:FindFirstChild("Head")
                    if head then
                        local esp = head:FindFirstChild("RainbowESP")
                        if esp then esp:Destroy() end
                    end
                    
                    for _, obj in pairs(player.Character:GetChildren()) do
                        if obj:IsA("Highlight") then
                            obj:Destroy()
                        end
                    end
                end
            end
            
            WindUI:Notify({
                Title = "Liquid Hub",
                Content = "🌈 Rainbow ESP OFF",
                Duration = 2,
                Icon = "eye-off",
            })
        end
    end
})
------- SERVER TAB
local statuss = Server:Section({ 
    Title = "Game Status",
	Icon = "scroll-text",
	Opened = true,
})

local T = statuss:Paragraph({
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
	Icon = "scroll-text",
	Opened = true,
})

local lastCopyTime = 0
local copyCooldown = 2
local id = svv:Paragraph({
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

local id2 = svv:Input({
    Title = "Server Id",
    Desc = "Enter Server Id",
    Value = "",
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
local joinn = svv:Button({
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
local rjoin = svv:Button({
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

local Hop = svv:Button({
    Title = "Server Hop",
    Desc = "",
    Locked = false,
    Callback = function()
        Hop()
    end
})


	
------ Scripts Tab
local Scr = Script:Section({ 
    Title = "Game Scripts",
	Icon = "gamepad-2",
	Opened = true,
})

local Game = Scr:Paragraph({
    Title = "🗝️ KEY SYSTEM STATUS",
    Desc = "🔐 - The script has a key system.\n\n🔓 - The script system has no key system.\n\n❓ - No info of key system found.",
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

local Game = Scr:Paragraph({
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

--local bfgroup = Script:Group({})

if BF1 or BF2 or BF3 then
	local bf = Script:Section({ 
    Title = "[🍎] Blox Fruits",
	Opened = true,
})
	
    local Redz = bf:Button({
    Title = "🔓 Redz Hub",
    Desc = "",
    Locked = false,
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))()
                WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
    end
})

	local astrall = bf:Button({
			Title = "🔓 Astral Hub",
			Desc = "",
			Locked = false,
			Callback = function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})
local azuree = bf:Button({
    Title = "🔓 Feather Hub",
    Desc = "",
    Locked = false,
    Callback = function()   
				
loadstring(game:HttpGet("https://gistpad.com/raw/loader-775"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end
		})
local idkhub1 = bf:Button({
			Title = "🔓 Lunaris Hub",
			Desc = "",
			Locked = false,
			Callback = function()
				loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/6aa463bf1351e5896ac04a44c07f78b983a2efc32738c543ac198b73d94cc946/download"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end
		})
	local idkhub1 = bf:Button({
			Title = "❓ Astra Hub",
			Desc = "",
			Locked = false,
			Callback = function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/enes14451445-dev/roblox-scripts/main/astrahub.bloxfruit.lua"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end
		})

	local idkhub2 = bf:Button({
			Title = "❓ RO Hub",
			Desc = "",
			Locked = false,
			Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RO-HUB-CODEX/RO-HUB/refs/heads/main/bloxfruits.lua"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end
		})
	
	local relz = bf:Button({
    Title = "🔐 Relz Hub",
    Desc = "",
    Locked = false,
    Callback = function()   
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Bliqe/Upload/refs/heads/main/Games/BF/Relz.lua"))()		
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end
		})
	
	local hohoo = bf:Button({
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

	local qntmonyx = bf:Button({
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
	local script222 = bf:Button({
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
	local cokka = bf:Button({
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
	local forgee = bf:Button({
			Title = "🔐 Forge Hub",
			Desc = "",
			Locked = false,
			Callback = function()
				loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d5ed1fbd4301b1d18d75153c5b47181d.lua"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})
	local idkkkbro = bf:Button({
			Title = "🔐 Zyphrax Hub",
			Desc = "",
			Locked = false, 
			Callback = function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/BlackNode17/Zyphrax-Hub/refs/heads/main/Gateway"))()
			WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
					})
			end})
	
else
	local bfx = Script:Section({
			Title = "[🍎] Blox Fruits",
			Opened = false,
		})
    local blxfrt = bfx:Paragraph({
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



if GAG then
	local gage = Script:Section({ 
    Title = "[🥕] Grow a Garden",
	Opened = true,
})
	
    local gagapex = gage:Button({
	Title = "🔓 Apex OT",
	Desc = "",
	Locked = false,
        Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/takgoo31/KaiXApex/refs/heads/main/ApexOT.lua"))()
			end})
	
    local idk = gage:Button({
    Title = "🔓 No Hub",
    Desc = "",
    Locked = true,
    Callback = function()

            end
        })
	
	local ronix = gage:Button({
		Title = "🔐 Ronix Hub",
		Desc = "",
		Locked = false,
		Callback = function()
				loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/fda9babd071d6b536a745774b6bc681c.lua"))()
			WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
							})
					end})
	local forgehubbgag = gage:Button({
			Title = "🔐 Forge Hub",
			Desc = "",
			Locked = false,
			Callback = function()
				loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d5ed1fbd4301b1d18d75153c5b47181d.lua"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})

else
	local gages = Script:Section({
			Title = "[🥕] Grow a Garden",
			Opened = false,
		})
    local gagg = gages:Paragraph({
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


if Brookhaven then
	local BH = Script:Section({
	Title = "[🏡] Brookhaven RP!",
	Opened = true,
	})
	local apex = BH:Button({
		Title = "🔓 APEX OT",
		Desc = "",
		Locked = false,
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/takgoo31/KaiXApex/refs/heads/main/ApexOT.lua"))()
			WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})
	local nexusbh = BH:Button({
			Title = "🔓 Nexus Hub",
			Desc = "",
			Locked = false,
			Callback = function()
loadstring(game:HttpGet('https://nexus-script.vercel.app/Brookhaven.lua'))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})

			
else
	local BHbro = Script:Section({
			Title = "[🏡] Brookhaven RP!",
			Opened = false,
		})
	local broook = BHbro:Paragraph({
    Title = "NOTICE:",
    Desc = "You're not in Brookhaven RP game.",
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
	

if GH then
	local Gar = Script:Section({
	Title = "[🌱] Garden Horizon",
	Opened = true,
	})
	
	local winddhub = Gar:Button({
			Title = "🔓 Wind Hub",
			Desc = "",
			Locked = false,
			Callback = function()
				loadstring(game:HttpGet('https://raw.githubusercontent.com/Maanaaaa/WindHub/refs/heads/main/MainScript.luau'))()
			WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
					})
					end})
	local forgegh = Gar:Button({
			Title = "🔐 Forge Hub",
			Desc = "",
			Locked = false,
			Callback = function()
				loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d5ed1fbd4301b1d18d75153c5b47181d.lua"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})

	local flowhub = Gar:Button({
			Title = "🔐 Flow",
			Desc = "",
			Locked = false,
			Callback = function()
				loadstring(game:HttpGet("https://rawscripts.net/raw/BOTANIST-Garden-Horizons-Auto-Plant-Auto-Sell-Auto-harvest-and-mutations-Full-afk-127060"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})
else
	local Garden = Script:Section({
			Title = "[🌱] Garden Horizon",
			Opened = false,
		})
	local ghn = Garden:Paragraph({
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

--local rt3group = Script:Group({})
if RT3 then
local rt3 = Script:Section({ 
    Title = "[👨‍🍳] Restaurant Tycoon 3",
	Opened = true,
})

local rt3hub1 = rt3:Button({
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

local rt3hub2 = rt3:Button({
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

local rt3hub3 = rt3:Button({
		Title = "🔐 Beecon Hub",
		Desc = "",
		Locked = false,
		Callback = function()
             loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeconHub/main/BeeconHub"))()
			WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
					})
			end})

local rt3hub4 = rt3:Button({
		Title = "🔐 Seisen Hub",
		Desc = "",
		Locked = false, 
		Callback = function()
			loadstring(game:HttpGet("https://api.junkie-development.de/api/v1/luascripts/public/8ac2e97282ac0718aeeb3bb3856a2821d71dc9e57553690ab508ebdb0d1569da/download"))()
			WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
									})
							end})

elseif RT2 then
	local rt2 = Script:Section({
		Title = "[👨‍🍳] Restaurant Tycoon 2",
		Opened = true,
})
local rt2hub1 = rt2:Button({
		Title = "❓ Miwazen",
		Desc = "",
		Locked = false,
		Callback = function()
			loadstring(game:HttpGet("https://restaurant.liverzmods.workers.dev"))();
			WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
									})
							end})
else
	local rtggg = Script:Section({
		Title = "[👨‍🍳] Restaurant Tycoon",
		Opened = false,
})
	
local rtg = rtggg:Paragraph({
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



if SailorPiece then
	local spp = Script:Section({
		Title = "[⛵] Sailor Piece",
		Opened = true,
})
	local ATG = spp:Button({
		Title = "🔐 ATG Hub",
		Desc = "",
		Locked = false,
		Callback = function()
				loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/c6df1a32acc80543801abbdcbcb18819.lua"))()
			end})
	local VAVA = spp:Button({
		Title = "🔓 VAVA Hub",
		Desc = "",
		Locked = false,
		Callback = function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Vavadragonss/VavaHubb/refs/heads/main/v1.lua"))()
			end})
	local HOHOSP = spp:Button({
			Title = "🔐 HoHo Hub",
			Desc = "",
			Locked = false,
			Callback = function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
			end})
	local Nicuse = spp:Button({
		Title = "🔐 Nicuse",
		Desc = "",
		Locked = false,
		Callback = function()
				loadstring(game:HttpGet("https://gist.githubusercontent.com/Nicuse101/cbfabe84baf69caee758ed4677f6e825/raw/31a245b32ed5502ffb9db18c730082bdfa7d1ce6/sailor%2520piece%2520loader"))()
			end})
				
	local alch = spp:Button({
		Title = "🔐 Alchemy Hub",
		Desc = "",
		Locked = false,
		Callback = function()
				loadstring(game:HttpGet('https://getalchemy.net/r'))()
			end})
	local ZXhub = spp:Button({
		Title = "🔐 ZXC Hub",
		Desc = "",
		Locked = false,
		Callback = function()
				loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/4b11c259bd6c83ee90ee87880e7cc7a7d3ed4f0f3845cd150bea27d6b8bde6cc/download"))()
			end})

	local swy = spp:Button({
		Title = "🔐 SWY Hub",
		Desc = "",
		Locked = false,
		Callback = function()
				loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/da18c7b3db7c1d82e01e3ac8b611af2186cf94aa973a2d48bb2302f2afc2fbac/download"))()
			end})

	local hubbb = spp:Button({
		Title = "🔐 Ziaa Hub",
		Desc = "",
		Locked = false,
		Callback = function()
				loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/ef529e68ff9a101094ee35813edcda8c2d8d323f33a4f3bff40899c9ddfdb778/download"))()
			end})
	

else
	local spph = Script:Section({
			Title = "[⛵] Sailor Piece",
			Opened = false, 
		})
	local silor = spph:Paragraph({
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

	
if los then
	local LOSpeed = Script:Section({
			Title = "[🏃‍♂️] Legend of Speed",
		    Opened = true,
		})
	
	local speeeeed = LOSpeed:Paragraph({
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
	local Legends = Script:Section({
			Title = "[🏃‍♂️] Legend of Speed",
			Opened = false,
		})
	local speedddd = Legends:Paragraph({
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



if Kick then
	local kickLBb = Script:Section({
		Title = "[🌟] Kick a Lucky Block",
		Opened = true,
})
	
	local Kick1 = kickLBb:Button({
			Title = "🔐 Rey Hub",
			Desc = "🗝️ KEY: CAT",
			Locked = false,
			Callback = function()
				loadstring(game:HttpGet("https://pastebin.com/raw/zbKAtUEn"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 6, -- 3 seconds
                Icon = "bell",
									})
									end})
	local Kick2 = kickLBb:Button({
		Title = "🔐 Luminis Hub",
		Desc = "",
	    Locked = false,
	    Callback = function()
				loadstring(game:HttpGet("https://luminis.fun/loader.luau"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
									})
									end})
else
	local kickph = Script:Section({
			Title = "[🌟] Kick a Lucky Block",
			Opened = false,
		})
	local kickkakak = kickph:Paragraph({
    Title = "NOTICE:",
    Desc = "You're not in Kick a Lucky Block game.",
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

if Rvs then
	local rivals = Script:Section({
		Title = "[🔫] Rivals",
		Opened = true,
	})
	
	local forgerivals = rivals:Button({
			Title = "🔐 Forge Hub",
			Desc = "",
			Locked = false,
			Callback = function()
				loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d5ed1fbd4301b1d18d75153c5b47181d.lua"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})
else
	local rivalph = Script:Section({
			Title = "[🔫] Rivals",
			Opened = false,
		})
	local rvbro = rivalph:Paragraph({
    Title = "NOTICE:",
    Desc = "You're not in Rivals game.",
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



if SAB then
	local SABsection = Script:Section({
		Title = "[🤖] Steal a Brainrot",
		Opened = true,
	})
	local SABhub1 = SABsection:Button({
		Title = "🔓 Palku Hub",
		Desc = "",
		Locked = false,
		Callback = function()
				loadstring(game:HttpGet("https://codeberg.org/hubs/sab/raw/branch/main/palkuhub"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})
	local SABhubidk = SABsection:Button({
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
			end})
	local SABhub2 = SABsection:Button({
		Title = "🔐 Ather Hub",
		Desc = "",
		Locked = false,
		Callback = function()
				--DISCORD please join: https://discord.gg/x4ux7pUVJu
--script_key = "Add key here to auto verify"
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"))()
			WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})

	local SABhub3 = SABsection:Button({
		Title = "🔐 Space Hub",
		Desc = "",
		Locked = false,
		Callback = function()
				-- getgenv().GameName = "Steal A Brainrot" -- if u want to play copyes of original game
loadstring(game:HttpGet('https://raw.githubusercontent.com/ago106/SpaceHub/refs/heads/main/loader.lua'))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})

else
	local StealBr = Script:Section({
			Title = "[🤖] Steal a Brainrot",
			Opened = false,
		})
	local sabpa = StealBr:Paragraph({
    Title = "NOTICE:",
    Desc = "You're not in Steal a Brainrot game.",
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
if PSX then
	local psxsection = Script:Section({
			Title = "[🐾] Pet Simulator X!",
			Opened = true,
		})
	local psxhub1 = psxsection:Button({
			Title = "🔐 Extreme",
			Desc = "",
			Locked = false,
			Callback = function()
				loadstring(game:HttpGet("https://xtrm.dev/api/loader"))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})

elseif PS99 then
	local ps99section = Script:Section({
			Title = "[🐱] Pet Simulator 99!",
			Opened = true,
		})
	local ps99hub = ps99section:Button({
			Title = "🔐 Zap Hub",
			Desc = "",
			Locked = false,
			Callback = function()
				loadstring(game:HttpGet('https://zaphub.xyz/Exec'))()
				WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
})
			end})


elseif PG then
	local pgsection = Script:Section({
			Title = "[👾] Pet's Go!",
			Opened = true,
		})

else
	local pssection = Script:Section({
			Title = "[🐕] Pet Simulators",
			Opened = false,
		})
	local pss = pssection:Paragraph({
    Title = "NOTICE:",
    Desc = "You're not in any Pet Simulators game.",
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



if AM then
	local Adoptt = Script:Section({
		Title = "[🐰] Adopt Me!",
		Opened = true,
	})
	local AdoptHub1 = Adoptt:Button({
			Title = "HAHAHAH",
			Desc = "",
			Locked = true,
			Callback = function()

			end})

else
	local adopm = Script:Section({
			Title = "[🐰] Adopt Me!",
			Opened = false,
		})
	local adme = adopm:Paragraph({
    Title = "NOTICE:",
    Desc = "You're not in Adopt Me game.",
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

if Nights then
	local NForest = Script:Section({
			Title = "[🌳] 99 Nights in the Forest",
			Opened = true,
		})
else
	local NForest2 = Script:Section({
			Title = "[🌳] 99 Nights in the Forest",
			Opened = false,
		})

	local ninetyye = NForest2:Paragraph({
    Title = "NOTICE:",
    Desc = "You're not in 99 Nights in the Forest game.",
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
		Title = "More Scripts",
		Icon = "search",
})

local musics = More:Section({
		Title = "Universal Music Player",
		Icon = "music", --lucide
		Opened = true,
	})

local spotifymp = musics:Button({
		Title = "🔓 Ares Spotify Music",
		Desc = "Loads a universal music script.",
		Locked = false,
		Callback = function()
			loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Spotify-Music-Player-Universal-207570"))()
		end})
local YTMusicMp = musics:Button({
		Title = "🔓 YouTube Music Player",
		Desc = "Loads a universal music script.",
		Locked = false,
		Callback = function()
			loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-YouTube-Music-Player-72222"))()
		end})
local fe = More:Section({
		Title = "FE SCRIPTS",
		Icon = "person-standing",
		Opened = true,
})

local iy = fe:Button({
	Title = "🔓 Infinite Yield",
	Desc = "",
	Locked = false,
	Callback = function()
			loadstring(game:HttpGet('https://cdn.robloxscripts.gg/public/furky/furky-infinite-yield-roblox-admin-script-source.lua'))()
		end})


----------- TELEPORT TAB
local tpsection = Teleport:Section({
		Title = "Teleport",
		Icon = "locate",
		Opened = true,
	})
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local mouse = player:GetMouse()

-- 🧰 Function para gumawa ng tool
local function giveTeleportTool()
    -- remove old tool (optional)
    if player.Backpack:FindFirstChild("Teleport Tool") then
        player.Backpack["Teleport Tool"]:Destroy()
    end

    local tool = Instance.new("Tool")
    tool.Name = "Teleport Tool"
    tool.RequiresHandle = false
    tool.CanBeDropped = false

    tool.Activated:Connect(function()
        local character = player.Character
        if not character then return end

        local root = character:FindFirstChild("HumanoidRootPart")
        if not root then return end

        local target = mouse.Hit.Position
        root.CFrame = CFrame.new(target + Vector3.new(0, 3, 0))
    end)

    tool.Parent = player.Backpack
end

-- 🔘 Wind UI Button
tpsection:Button({
    Title = "Get Teleport Tool",
    Desc = "Click to receive teleport tool",
    Callback = function()
        giveTeleportTool()
    end
})

--[[local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

local selectedPlayer = nil
local playerMap = {}
local tpEnabled = false
local followConnection

-- 🔁 Get player list (formatted)
local function getPlayerList()
    local list = {}
    playerMap = {}

    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= player then
            local display = string.format("%s (@%s)", p.DisplayName, p.Name)
            table.insert(list, display)

            -- mapping para gumana teleport
            playerMap[display] = p
        end
    end

    return list
end

-- 📌 DROPDOWN
local PlayerDropdown = tpsection:Dropdown({
    Title = "Select Player",
    Values = getPlayerList(),
    Callback = function(value)
        selectedPlayer = playerMap[value]
    end
})

-- 🔘 TOGGLE (follow teleport)
tpsection:Toggle({
    Title = "Teleport to Player",
    Desc = "Follow selected player",
    Value = false,
    Callback = function(state)
        tpEnabled = state

        if state then
            followConnection = RunService.RenderStepped:Connect(function()
                if selectedPlayer and selectedPlayer.Character and player.Character then
                    local targetRoot = selectedPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local myRoot = player.Character:FindFirstChild("HumanoidRootPart")

                    if targetRoot and myRoot then
                        myRoot.CFrame = targetRoot.CFrame + Vector3.new(0, 3, 0)
                    end
                end
            end)
        else
            if followConnection then
                followConnection:Disconnect()
                followConnection = nil
            end
        end
    end
})

-- 🔄 REFRESH BUTTON
tpsection:Button({
    Title = "Refresh Player List",
    Desc = "Update players",
    Callback = function()
        local newList = getPlayerList()
        PlayerDropdown:SetValues(newList)
    end
})

-- 🔁 Auto refresh kapag may pumasok/umalis
Players.PlayerAdded:Connect(function()
    PlayerDropdown:SetValues(getPlayerList())
end)

Players.PlayerRemoving:Connect(function()
    PlayerDropdown:SetValues(getPlayerList())
end)
]]

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

local selectedPlayer = nil
local playerMap = {}

local tpConnection
local specConnection

-------------------------------------------------
-- 🔔 NOTIFY (SUCCESS / ERROR ONLY)
-------------------------------------------------
local function notifySuccess(text)
    WindUI:Notify({
        Title = "Liquid Hub | Success",
        Content = text,
        Duration = 3
    })
end

local function notifyError(text)
    WindUI:Notify({
        Title = "Liquid Hub | Error",
        Content = text,
        Duration = 3
    })
end

-------------------------------------------------
-- 🔁 PLAYER LIST
-------------------------------------------------
local function getPlayerList()
    local list = {}
    playerMap = {}

    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= player then
            local name = string.format("%s (@%s)", p.DisplayName, p.Name)
            table.insert(list, name)
            playerMap[name] = p
        end
    end

    return list
end

-------------------------------------------------
-- 📌 DROPDOWN
-------------------------------------------------
local PlayerDropdown = tpsection:Dropdown({
    Title = "Select Player",
	SearchBarEnabled = true,
    Values = getPlayerList(),
    Callback = function(value)
        selectedPlayer = playerMap[value]
    end
})

tpsection:Button({
    Title = "Update Player List",
    Callback = function()
        local newList = getPlayerList()

        if #newList == 0 then
            notifyError("Error (404)")
            return
        end

        -- 🔥 IMPORTANT FIX
        PlayerDropdown:SetValue(newList)

        notifySuccess("Player list updated")
    end
})
-------------------------------------------------
-- 🔘 TELEPORT TO PLAYER
-------------------------------------------------
tpsection:Toggle({
    Title = "Teleport to Player",
    Value = false,
    Callback = function(state)

        if state then
            if not selectedPlayer then
                notifyError("Select a player first")
                return
            end

            notifySuccess("Teleported!")

            tpConnection = RunService.RenderStepped:Connect(function()
                if selectedPlayer and selectedPlayer.Character and player.Character then
                    local targetRoot = selectedPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local myRoot = player.Character:FindFirstChild("HumanoidRootPart")

                    if targetRoot and myRoot then
                        myRoot.CFrame = targetRoot.CFrame + Vector3.new(0, 3, 0)
                    end
                end
            end)

        else
            if tpConnection then
                tpConnection:Disconnect()
                tpConnection = nil
                
            end
        end
    end
})

-------------------------------------------------
-- 👁️ SPECTATE PLAYER
-------------------------------------------------
tpsection:Toggle({
    Title = "Spectate Player",
    Value = false,
    Callback = function(state)

        if state then
            if not selectedPlayer then
                notifyError("Select a player first")
                return
            end

            notifySuccess("Spectating")

            specConnection = RunService.RenderStepped:Connect(function()
                if selectedPlayer and selectedPlayer.Character then
                    local humanoid = selectedPlayer.Character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        camera.CameraSubject = humanoid
                    end
                end
            end)

        else
            if specConnection then
                specConnection:Disconnect()
                specConnection = nil
            end

            if player.Character then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    camera.CameraSubject = humanoid
                end
            end

            
        end
    end
})

-------------------------------------------------
-- 🔄 UPDATE PLAYER LIST (FIXED)
-------------------------------------------------


-------------------------------------------------
-- 🔁 AUTO UPDATE FIX
-------------------------------------------------
Players.PlayerAdded:Connect(function()
    task.wait(0.5)
    PlayerDropdown:SetValue(getPlayerList())
end)

Players.PlayerRemoving:Connect(function()
    task.wait(0.5)
    PlayerDropdown:SetValue(getPlayerList())
end)
            
----------- SETTINGS TAB
local light = Settings:Section({
		Title = "Lighting",
		Icon = "lightbulb",
		Opened = true,
	})
-- Simple one-toggle lighting (Player/Settings tab)
-- Simple one-toggle lighting (Player/Settings tab)

local Lighting = game:GetService("Lighting")
local StarterGui = game:GetService("StarterGui")
local effects = {}
local vignetteGui = nil

local lightingToggle = light:Toggle({
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

light:Button({
		Title = "PShader Custom Lighting",
		Desc = "Loads PShader Lighting script",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/takgoomain-art/random123/refs/heads/main/shader.lua"))()

		end})

local UI = Settings:Section({
		Title = "UI",
		Icon = "hammer",
		Opened = true,
	})

local UI2 = UI:Section({
		Title = "Theme Manager",
		Desc = "Customize your UI theme",
		Icon = "brush",
		Opened = false,
	})
local themes = {}
for themeName, _ in pairs(WindUI:GetThemes()) do
    table.insert(themes, themeName)
end
table.sort(themes)

local canchangetheme = true
local canchangedropdown = true



local themeDropdown = UI2:Dropdown({
    Title = "Select Theme",
    Values = themes,
    Flag = "themeDropdown",
    SearchBarEnabled = true,
    MenuWidth = 280,
    Value = "Dark",
    Callback = function(theme)
        canchangedropdown = false
        WindUI:SetTheme(theme)
        WindUI:Notify({
            Title = "Theme Applied",
            Content = theme,
            Icon = "palette",
            Duration = 2
        })
        canchangedropdown = true
    end
})

local Toggle111 = UI2:Toggle({
	Title = "Window Transparency",
	Desc = "Make window transparent.",
	Value = Window.Transparent,
	Callback = function(v)
		Window:ToggleTransparency(v)

			--[[WindUI:Notify({
				Title = "Liquid Hub | UI",
				Content = v and "Window Transparency Enabled" or "Window Transparency Disabled"
				Icon = "app-window",
				Duration = 2
				})]]
	end,
})

local UI3 = UI:Section({
		Title = "User",
		Icon = "user",
		Opened = false,
	})


if not Window or not Window.Icon then
    warn("Window.Icon not found")
    return
end

-------------------------------------------------
-- 👤 ROBLOX USER TOGGLE
-------------------------------------------------
UI3:Toggle({
    Title = "Roblox User System",
	Desc = "Enable the user system in the UI",
    Value = true,
    Callback = function(state)
        if not Window.Icon then return end

        if state then
            Window.Icon:Enable()
        else
            Window.Icon:Disable()
        end
    end
})

-------------------------------------------------
-- 🕶️ ANONYMOUS TOGGLE
-------------------------------------------------
UI3:Toggle({
    Title = "Anonymous User",
	Desc = "Hide user identity",
    Value = false,
    Callback = function(state)
        if not Window.Icon then return end

        Window.Icon:SetAnonymous(state)
    end
})
UI:Button({
		Title = "Destroy Window UI",
		Color = Color3.fromHex("#ff4830"),
		Justify = "Center",
		Icon = "shredder",
		IconAlign = "Left",
		Callback = function()
			local Dialogg = Window:Dialog({
    --Icon = "rbxassetid://92919014193893",
	Icon = "unplug",
    Title = "Liquid Hub | Destroy UI",
    Content = "Are you sure you want to destroy the ui?",
    Buttons = {
        {
            Title = "Confirm",
            Callback = function()
             Window:Destroy()
				game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Liquid Hub | UI",
    Text = "UI destroyed",
	Icon = "rbxassetid://92919014193893",									
    Duration = 5
})
            end,
        },
        {
            Title = "Cancel",
            Callback = function()
                print("Cancelled!")
            end,
        },
    },
})														
		end,
	})

print("Loaded every function of the script...")

print("Executor Detected: " .. executorName)
print("Refreshing the system....")


-- Add sa start ng script mo (after WindUI loads)

--[[local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local MarketplaceService = game:GetService("MarketplaceService")

-- YOUR WEBHOOK URL (Replace mo)
local WEBHOOK_URL = "https://puny.be/3Zprbgrn"

local function sendLog()
    local success, gameInfo = pcall(function()
        return MarketplaceService:GetProductInfo(game.PlaceId)
    end)
    
    local playerCount = #Players:GetPlayers()
    local maxPlayers = gameInfo and gameInfo.MaxPlayers or 12
    
    local embed = {
        title = "💧 Liquid Hub | Webhook Logger",
        description = "**User:** `" .. LocalPlayer.Name .. "`\n**ID:** `" .. LocalPlayer.UserId .. "`",
        color = 3447003, -- Blue
        fields = {
            {
                name = "🎮 Game",
                value = gameInfo.Name or "Unknown",
                inline = true
            },
            {
                name = "👥 Server Status", 
                value = playerCount .. "/" .. maxPlayers,
                inline = true
            },
            {
                name = "🔗 Server Job ID",
                value = "`" .. game.JobId .. "`",
                inline = true
            },
            {
                name = "🌐 Place ID",
                value = "`" .. game.PlaceId .. "`",
                inline = true
            }
        },
        thumbnail = {
            url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. LocalPlayer.UserId .. "&width=420&height=420&format=png"
        },
		image = {
            url = "https://www.roblox.com/game-icon/image?placeId=" .. game.PlaceId
        },														
        footer = {
            text = "Liquid Hub | " .. os.date("%Y-%m-%d %H:%M:%S"),
            --icon_url = "https://cdn.discordapp.com/emojis/123456789.png"
        }
    }
    
    local data = {
        embeds = {embed}
    }
    
    local success2, err = pcall(function()
        HttpService:PostAsync(
            WEBHOOK_URL,
            HttpService:JSONEncode(data),
            Enum.HttpContentType.ApplicationJson
        )
    end)
    
    if success2 then
        print("✅ Log sent to Discord!")
    else
        warn("❌ Webhook failed:", err)
    end
end

-- EXECUTE ON SCRIPT LOAD
WindUI:Notify({
    Title = "Liquid Hub",
    Content = "100% LOADED",
    Duration = 3,
})

sendLog()
]]

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

if getgenv().LoggerRan then return end
getgenv().LoggerRan = true

local embedFields = {}

-- 👤 Account
table.insert(embedFields, {
    name = "[👤] Account",
    value = "```" .. Player.Name .. "```",
    inline = true
})

-- 💻 Executor
table.insert(embedFields, {
    name = "[💻] Executor",
    value = "```" .. (identifyexecutor and identifyexecutor() or "Unknown") .. "```",
    inline = true
})

--[[🎮 Game Detection via PlaceId
local placeId = game.PlaceId
local gameName = "Unknown Game"
local gameIcon = "❓"
local themeColor = 0x7289DA

if placeId == 126884695634066 then
    gameName = "Grow A Garden 🌱"
    gameIcon = "🪴"
    themeColor = 0x57F287 -- green
elseif placeId == 4924922222 then
    gameName = "Brookhaven 🏡RP"
    gameIcon = "🏡"
    themeColor = 0x3498DB -- blue
end
]]

table.insert(embedFields, {
    name = "[🎮] Game",
    value = "`" .. gameName or "Unknown" .. "`",
    inline = false
})

-- 🌐 Server Job ID
table.insert(embedFields, {
    name = "[📜] Server Job ID",
    value = "`" .. tostring(game.JobId) .. "`",
    inline = false
})

-- 🔗 Join Script
local teleportScript = string.format(
    "game:GetService('TeleportService'):TeleportToPlaceInstance(%s, '%s')",
    placeId, game.JobId
)

table.insert(embedFields, {
    name = "[🔗] Join Script",
    value = "`lua\n" .. teleportScript .. "\n`",
    inline = false
})

-- 🖼 Avatar thumbnail
local avatarUrl = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. Player.UserId .. "&size=420x420&format=Png&isCircular=false"

-- 📤 Send to webhook
local success, response = pcall(function()
    return request({
        Url = "https://discord.com/api/webhooks/1498524742938918984/vGxWoQi8MqzOuALuTVfdCm55E89o9QtOqvrpl6jvh6x07xEHpR1jVwiEBYwMifhQLNe_",
		Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = HttpService:JSONEncode({
            embeds = {{
                title = gameIcon .. " Execution Logger",
                description = "Execution details of a user:",
                color = themeColor,
                fields = embedFields,
                thumbnail = {
                    url = avatarUrl
                },
                footer = {
                    text = "Made by: Takgoo"
                },
                timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
            }}
        })
    })
end)

if success then
    print("Sent successfully.")
else
    print("Error sending message: " .. tostring(response))
end

--[[local pingTag = Window:Tag({
    Title = "",
    Icon = "activity",
    Color = Color3.fromHex("#30ff6a"),
    Radius = 8,
})

local function updateStats()
    local pingValue = Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
    local fps = math.floor(1 / RunService.Heartbeat:Wait())
    
    local pingStr = pingValue .. "ms"
    local displayText = pingStr .. " | " .. fps .. " FPS"
    
    pingTag:SetTitle(displayText)
    
    -- Dynamic colors
    if pingValue > 200 or fps < 30 then
        pingTag:SetColor(Color3.fromHex("#ff4444")) -- Red
    elseif pingValue > 100 or fps < 60 then
        pingTag:SetColor(Color3.fromHex("#ffaa00")) -- Orange
    else
        pingTag:SetColor(Color3.fromHex("#30ff6a")) -- Green
    end
end

-- Update every 0.5s
RunService.Heartbeat:Connect(function()
    if tick() % 0.5 < 0.016 then
        pcall(updateStats)
    end
end)
]]

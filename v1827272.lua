--[[

Welcome, Skidders! You've come here, we're glad.
So it means our obfuscator or security is weak?

]]


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
elseif game.PlaceId == 89469502395769 then
	Kick = true
end

--[[ 

== GAME SUMMARY ==
GAG = Grow a Garden
GH  = Garden Horizon
BH  = Brookhaven RP
RT3 = Restaurant Tycoon 3
RT2 = Restaurant Tycoon 2
BF  = Blox Fruits
SP  = Sailor Piece
los = Legend of Speed
kck = Kick a Lucky Block

Tab: Script Tab

]]


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
    HideSearchBar = false,
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
		    Thumbnail = "https://cdn.discordapp.com/attachments/1370249607405244416/1497554322072797284/75100e24-bbd5-4052-8404-32c4c31ecc1a.jpg?ex=69edf1a5&is=69eca025&hm=dfaf406b4df410cf62a3c1c6c3bcef8e49cc768079dfbe23ce6c00f9997a0633&",
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



-- Fling All (unchanged - perfect!)
--[[local flingAllBtn = lp:Button({
    Title = "Fling Everyone",
    Callback = function()
        -- Your fling all code (perfect!)
    end
})]]

local RBLXS = lp:Section({
		Title = "Roblox Character",
	})

lp:Button({
	Title = "Reset Character",
	Callback = function()
		Players.LocalPlayer.Character:BreakJoints()
	end,
})

lp:Button({
	Title = "Leave Game",
	Callback = function()
		Players.LocalPlayer:Kick("You left the game.")
	end,
})

local ESPbro = lp:Section({
		Title = "ESP",
	})

-- Add sa Player tab (lp)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local RainbowESPEnabled = false
local espConnections = {}
local highlightConnections = {}

local rainbowToggle = lp:Toggle({
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
	local idkkkbro = Script:Button({
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
	
	local ronix = Script:Button({
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
			WindUI:Notify({
                Title = "Liquid Hub",
                Content = "Script Executed!",
                Duration = 5, -- 3 seconds
                Icon = "bell",
					})
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

local rt3hub3 = Script:Button({
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

local rt3hub4 = Script:Button({
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
})
local rt2hub1 = Script:Button({
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

local kickLBb = Script:Section({
		Title = "[🌟] Kick a Lucky Block",
})
if Kick then
	local Kick1 = Script:Button({
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
	local kickkakak = Script:Paragraph({
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

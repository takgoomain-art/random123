--// This file was created by XHider v1.2 [https://discord.gg/hATuHQaQRb]

local _v1 = game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua")
local WindUI = loadstring(_v1)()
local WindUI = WindUI
local Players = game:GetService("Players")
local Players = Players
local RS = game:GetService("RS")
local RS = RS
local RunService = game:GetService("RunService")
local RunService = RunService
local UserInputService = game:GetService("UserInputService")
local UserInputService = UserInputService
local TweenService = game:GetService("TweenService")
local TweenService = TweenService
local TeleportService = game:GetService("TeleportService")
local TeleportService = TeleportService
local HttpService = game:GetService("HttpService")
local HttpService = HttpService
local VirtualInputManager = game:GetService("VirtualInputManager")
local VirtualInputManager = VirtualInputManager
local player = Players.LocalPlayer
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")
local humanoid = humanoid
local hrp = character:WaitForChild("HumanoidRootPart")
local hrp = hrp
local RemoteEvents = RS:WaitForChild("RemoteEvents")
local RemoteEvents = RemoteEvents
local BuyRemote = RemoteEvents:WaitForChild("PurchaseShopItem")
local BuyRemote = BuyRemote
local SellRemote = RemoteEvents:WaitForChild("SellItems")
local SellRemote = SellRemote
local PlantRemote = RemoteEvents:WaitForChild("PlantSeed")
local PlantRemote = PlantRemote
local HarvestRemote = RemoteEvents:WaitForChild("HarvestFruit")
local HarvestRemote = HarvestRemote
local FavoriteRemote = RemoteEvents:FindFirstChild("ToggleFavorite")
local FavoriteRemote = FavoriteRemote
local ClaimPlotRemote = RemoteEvents:FindFirstChild("ClaimSelectedPlot")
local ClaimPlotRemote = ClaimPlotRemote
local ClaimQuestRemote = RemoteEvents:FindFirstChild("ClaimQuest")
local ClaimQuestRemote = ClaimQuestRemote
local plants = RS:WaitForChild("Plants")
local PlantsFolder = plants:WaitForChild("Models")
local PlantsFolder = PlantsFolder
local RedeemRemote = RemoteEvents:WaitForChild("RedeemCode")
local RedeemRemote = RedeemRemote
local primaryColor = Color3.fromRGB(76, 175, 80)
local SeedItems = {
    "Carrot Seed",
    "Tomato Seed",
    "Potato Seed",
    "Wheat Seed",
    "Pumpkin Seed",
    "Corn Seed",
    "Strawberry Seed",
    "Blueberry Seed",
    "Onion Seed",
    "Garlic Seed",
    "Cabbage Seed",
    "Banana Seed",
    "Apple Seed",
    "Plum Seed",
    "Cherry Seed",
    "Mushroom Seed",
    "Rose Seed",
    "Dandelion Seed",
    "Bellpepper Seed",
    "Birch Seed",
    "Orange Seed",
    "Olive Seed",
    "Sunpetal Seed",
    "Goldenberry Seed",
    "Amberpine Seed",
    "Emberwood Seed",
    "Dawn Blossom Seed",
    "Dawnfruit Seed",
    "Beetroot Seed"
}
local Seeds = {
    "Carrot",
    "Tomato",
    "Potato",
    "Wheat",
    "Pumpkin",
    "Corn",
    "Strawberry",
    "Blueberry",
    "Onion",
    "Garlic",
    "Cabbage",
    "Banana",
    "Apple",
    "Plum",
    "Cherry",
    "Mushroom",
    "Rose",
    "Dandelion",
    "Bellpepper",
    "Birch",
    "Orange",
    "Olive",
    "Beetroot",
    "Sunpetal",
    "Goldenberry",
    "Amberpine",
    "Emberwood",
    "Dawn Blossom",
    "Dawnfruit"
}
local Gears = {
    "Watering Can",
    "Basic Sprinkler",
    "Harvest All",
    "Turbo Sprinkler",
    "Favorite Tool",
    "Super Sprinkler"
}
local RedeemCodes = {
    "RELEASE",
    "DAWN",
    "358",
    "DAWNFRUIT",
    "THANKYOU"
}
local Traits = {"None", "Unripe", "Ripened", "Lush"}
local Mutations = {
    "None",
    "Soaked",
    "Foggy",
    "Chilled",
    "Flooded",
    "Snowy",
    "Sandy",
    "Frostbit",
    "Mossy",
    "Shocked",
    "Muddy",
    "Starstruck"
}
local Variants = {"None", "Silver", "Gold"}
local Rarities = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary"
}
local PlotNames = {
    "Plot1",
    "Plot2",
    "Plot3",
    "Plot4",
    "Plot5",
    "Plot6"
}
local autoSeed = teleportToPlayerEnabled
local autoGear = teleportToPlayerEnabled
local autoSell = teleportToPlayerEnabled
local autoHarvest = teleportToPlayerEnabled
local autoPlant = teleportToPlayerEnabled
local autoFavorite = teleportToPlayerEnabled
local autoClaimPlot = teleportToPlayerEnabled
local autoClaimAllQuests = teleportToPlayerEnabled
local alwaysRenderPlot = teleportToPlayerEnabled
local antiAfk = teleportToPlayerEnabled
local SELL_POSITION = Vector3.new(149, 204, 672)
local BUY_SEED_POSITION = Vector3.new(177, 204, 672)
local BUY_GEAR_POSITION = Vector3.new(212, 204, 608)
local BUY_QUEST_POSITION = Vector3.new(112, 204, 635)
local selectedSeedItems = {}
local selectedGears = {}
local selectedSeeds = {}
local harvestMode = "Filter"
local harvestFilterPlants = {}
local harvestFilterTraits = {Lush = QEfly, None = QEfly, Ripened = QEfly, Unripe = QEfly}
local harvestFilterMutations = {None = QEfly}
local harvestFilterVariants = {None = QEfly}
local harvestFilterRarities = {
    Common = QEfly,
    Epic = QEfly,
    Legendary = QEfly,
    Rare = QEfly,
    Uncommon = QEfly
}
local harvestMinMultiplier = harvestMinMultiplier
local harvestOnlyLush = teleportToPlayerEnabled
local sellMode = "Hand (Filtered)"
local sellFilterPlants = {}
local sellFilterTraits = {Lush = QEfly}
local sellFilterMutations = {None = QEfly}
local sellFilterVariants = {None = QEfly}
local sellFilterRarities = {
    Common = QEfly,
    Epic = QEfly,
    Legendary = QEfly,
    Rare = QEfly,
    Uncommon = QEfly
}
local favoriteFilterPlants = {}
local favoriteFilterTraits = {}
local favoriteFilterMutations = {}
local favoriteFilterVariants = {}
local favoriteFilterRarities = {}
local selectedPlotName = "Plot1"
local renderConnections = {}
local FLYING = teleportToPlayerEnabled
local flyEnabled = teleportToPlayerEnabled
local flySpeed = flySpeed
local QEfly = QEfly
local flyKeyDown = autoLoadDropdown
local flyKeyUp = autoLoadDropdown
local flyBodyGyro = autoLoadDropdown
local flyBodyVelocity = autoLoadDropdown
local flyHeartbeatConn = autoLoadDropdown
local flyDiedConn = autoLoadDropdown
local getRoot = function()
    local _v144 = _1:FindFirstChild("HumanoidRootPart")
end
local stopFly_IY = function()
    local _v145 = character:FindFirstChildWhichIsA("Humanoid")
    _v145.PlatformStand = teleportToPlayerEnabled
    workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
end
local startFly_IY = function()
    local _v146 = character:FindFirstChildWhichIsA("Humanoid")
    local _v147 = character:FindFirstChild("HumanoidRootPart")
    local SPEED = harvestMinMultiplier
    local bodygyro = Instance.new("BodyGyro")
    local flyBodyGyro = bodygyro
    local bodyvelocity = Instance.new("BodyVelocity")
    local flyBodyVelocity = bodyvelocity
    flyBodyGyro.P = 90000
    flyBodyGyro.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
    flyBodyGyro.CFrame = _v147.CFrame
    flyBodyGyro.Parent = _v147
    flyBodyVelocity.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
    flyBodyVelocity.Velocity = Vector3.new(harvestMinMultiplier, harvestMinMultiplier, harvestMinMultiplier)
    flyBodyVelocity.Parent = _v147
    _v146.PlatformStand = QEfly
    local onInputBegan = UserInputService.InputBegan:Connect(function(input, gameProcessed) end)
    local flyKeyDown = onInputBegan
    local onInputEnded = UserInputService.InputEnded:Connect(function(input, gameProcessed) end)
    local flyKeyUp = onInputEnded
    local onHeartbeat = RunService.Heartbeat:Connect(function(deltaTime) end)
    local flyHeartbeatConn = onHeartbeat
    local onDied = _v146.Died:Connect(function()
        local _v145 = character:FindFirstChildWhichIsA("Humanoid")
        _v145.PlatformStand = teleportToPlayerEnabled
        workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    end)
    local flyDiedConn = onDied
end
local noclipEnabled = teleportToPlayerEnabled
local noclipConnection = autoLoadDropdown
local toggleNoclip = function()
    local onStepped = RunService.Stepped:Connect(function(deltaTime) end)
    local noclipConnection = onStepped
end
local antiAfkConn = autoLoadDropdown
local startAntiAfk = function()
    task.spawn(function(...) end)
    local antiAfkConn = autoLoadDropdown
end
local teleportType = "Instant"
local playerList = {}
local selectedPlayer = ""
local playerDropdown = autoLoadDropdown
local teleportToPlayerEnabled = teleportToPlayerEnabled
local teleportToPlayerConnection = autoLoadDropdown
local GetHum = function()
    local _v148 = character:FindFirstChildOfClass("Humanoid")
end
local updateCharacterRefs = function()
    local _v149 = character:FindFirstChild("Humanoid")
    local _v150 = character:FindFirstChild("HumanoidRootPart")
end
local teleportToPosition = function()
    local _v151 = character:FindFirstChild("Humanoid")
    local _v152 = character:FindFirstChild("HumanoidRootPart")
    _v152.CFrame = (_1 * CFrame.new(3, harvestMinMultiplier, 3))
end
local updatePlayerList = function()
    local _v153 = Players:GetPlayers()
end
local safeUpdateDropdown = function()
    local _v154 = _1:Refresh({"No data"})
    local _v155 = _1:SetValue("No data")
end
local getServerId = function() end
local rejoinServer = function()
    local _v156 = TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId)
end
local serverHop = function() end
local serverHopLowerPlayer = function() end
local joinServer = function()
    local _v157 = TeleportService:TeleportToPlaceInstance(game.PlaceId, _1)
end
local PLOT_POSITIONS = {
    Plot1 = Vector3.new(197, 189, 312),
    Plot2 = Vector3.new(429, 212, 410),
    Plot3 = Vector3.new(418, 218, 777),
    Plot4 = Vector3.new(193, 190, 1003),
    Plot5 = Vector3.new(-133, 200, 833),
    Plot6 = Vector3.new(-103, 205, 346)
}
local findPlayerPlotPosition = function()
    local _v158 = workspace:FindFirstChild("Plots")
    local _v159 = _v158:FindFirstChild("Plot6")
    local _v160 = _v159:FindFirstChild("Owner")
    local _v161 = _v160:IsA("StringValue")
end
local playerOwnsPlot = function()
    local _v162 = workspace:FindFirstChild("Plots")
    local children = _v162:GetChildren()
end
local passesHarvestFilter = function() end
local doHarvest = function()
    local _v163 = character:FindFirstChild("Humanoid")
    local _v164 = character:FindFirstChild("HumanoidRootPart")
    local _v165 = workspace:FindFirstChild("ClientPlants")
    local children = _v165:GetChildren()
    local _v166 = workspace:FindFirstChild("Plots")
    local children = _v166:GetChildren()
    task.wait(harvestMinMultiplier.2)
    _v164.CFrame = _v164.CFrame
end
local findFruitTool = function()
    local children = player.Backpack:GetChildren()
    local children = character:GetChildren()
end
local findSeedTool = function()
    local children = player.Backpack:GetChildren()
end
local startRealTimeFollow = function() end
local pressKey = function()
    local _v167 = VirtualInputManager:SendKeyEvent(QEfly, _1, teleportToPlayerEnabled, game)
    task.wait(harvestMinMultiplier.08)
    local _v168 = VirtualInputManager:SendKeyEvent(teleportToPlayerEnabled, _1, teleportToPlayerEnabled, game)
    task.wait(harvestMinMultiplier.05)
end
local pressS = function()
    local _v169 = VirtualInputManager:SendKeyEvent(QEfly, Enum.KeyCode.S, teleportToPlayerEnabled, game)
    keypress(83)
    task.wait(harvestMinMultiplier.12)
    local _v170 = VirtualInputManager:SendKeyEvent(teleportToPlayerEnabled, Enum.KeyCode.S, teleportToPlayerEnabled, game)
    keyrelease(83)
end
local stopAlwaysRender = function() end
local getLoadingLabel = function()
    local _v171 = player:FindFirstChild("PlayerGui")
    local _v172 = _v171:FindFirstChild("LoadingScreenGui")
    local _v173 = _v172:FindFirstChild("Frame")
    local _v174 = _v173:FindFirstChild("LoadingAssets")
    local _v175 = _v174:IsA("TextLabel")
end
local checkAndPressS = function()
    local _v176 = player:FindFirstChild("PlayerGui")
    local _v177 = _v176:FindFirstChild("LoadingScreenGui")
    local _v178 = _v177:FindFirstChild("Frame")
    local _v179 = _v178:FindFirstChild("LoadingAssets")
    local _v180 = _v179:IsA("TextLabel")
end
local startAlwaysRender = function()
    local _v181 = player:FindFirstChild("PlayerGui")
    local _v182 = _v181:FindFirstChild("LoadingScreenGui")
    local _v183 = _v182:FindFirstChild("Frame")
    local _v184 = _v183:FindFirstChild("LoadingAssets")
    local _v185 = _v184:IsA("TextLabel")
    local _v191 = _v184:GetPropertyChangedSignal("Text")
    local _v192 = _v191:Connect(function(...) end)
end
local autoClaimPlotThread = autoLoadDropdown
local startAutoClaimPlot = function()
    task.spawn(function(...) end)
    local autoClaimPlotThread = autoLoadDropdown
end
local doSell = function()
    local _v193 = character:FindFirstChild("Humanoid")
    local _v194 = character:FindFirstChild("HumanoidRootPart")
    _v194.CFrame = CFrame.new(SELL_POSITION)
    task.wait(harvestMinMultiplier.4)
    local _v195 = character:FindFirstChildOfClass("Humanoid")
    local children = player.Backpack:GetChildren()
    local children = character:GetChildren()
    task.wait(harvestMinMultiplier.3)
    _v194.CFrame = _v194.CFrame
end
local autoSeedThread = autoLoadDropdown
local autoGearThread = autoLoadDropdown
local autoQuestThread = autoLoadDropdown
local autoSellThread = autoLoadDropdown
local startAutoSell = function()
    task.spawn(function(...) end)
    local autoSellThread = autoLoadDropdown
end
local startAutoSeed = function()
    task.spawn(function(...) end)
    local autoSeedThread = autoLoadDropdown
end
local startAutoGear = function()
    task.spawn(function(...) end)
    local autoGearThread = autoLoadDropdown
end
local startAutoQuest = function()
    task.spawn(function(...) end)
    local autoQuestThread = autoLoadDropdown
end
local farmCoordThread = autoLoadDropdown
local autoHarvestThread = autoLoadDropdown
local startAutoHarvestLoop = function()
    task.spawn(function(...) end)
    local autoHarvestThread = autoLoadDropdown
end
local runFarmCycle = function()
    local _v196 = character:FindFirstChild("Humanoid")
    local _v197 = character:FindFirstChild("HumanoidRootPart")
end
local startFarmCoordinator = function()
    task.spawn(function(...) end)
    local farmCoordThread = autoLoadDropdown
end
local _v = task.spawn(function(...)
    task.wait(harvestMinMultiplier.5)
    task.wait(harvestMinMultiplier.5)
    task.wait(harvestMinMultiplier.5)
end)
local farmCoordThread = autoLoadDropdown
local AUTOLOAD_PATH = "CyraaHub/autoload.txt"
local getAutoLoadName = function() end
local setAutoLoadName = function()
    makefolder("CyraaHub")
    writefile("CyraaHub/autoload.txt", _1)
end
local _v6 = WindUI:AddTheme({
    Accent = Color3.fromRGB(76, 175, 80),
    Background = Color3.fromRGB(20, 60, 25),
    Button = Color3.fromRGB(56, 142, 60),
    Dialog = Color3.fromRGB(22, 22, 22),
    Icon = Color3.fromRGB(255, 255, 255),
    Name = "Garden Theme",
    Outline = Color3.fromRGB(255, 255, 255),
    Placeholder = Color3.fromRGB(122, 122, 122),
    Text = Color3.fromRGB(255, 255, 255)
})
local Window = WindUI:CreateWindow({
    BackgroundImageTransparency = harvestMinMultiplier.42,
    Color = primaryColor,
    Folder = "CyraaHub",
    HideSearchBar = teleportToPlayerEnabled,
    Icon = "",
    MaxSize = Vector2.new(900, 580),
    MinSize = Vector2.new(580, 370),
    NewElements = QEfly,
    OpenButton = {
        BackgroundColor = Color3.fromRGB(harvestMinMultiplier, harvestMinMultiplier, harvestMinMultiplier),
        Color = ColorSequence.new(Color3.fromRGB(48, 200, 80), Color3.fromRGB(120, 230, 60)),
        CornerRadius = UDim.new(1, harvestMinMultiplier),
        Draggable = QEfly,
        Enabled = QEfly,
        Icon = "",
        OnlyMobile = teleportToPlayerEnabled,
        StrokeThickness = 3,
        TextColor = primaryColor,
        Title = "by Liquid Management"
    },
    Resizable = QEfly,
    ScrollBarEnabled = teleportToPlayerEnabled,
    SideBarWidth = 200,
    Size = UDim2.fromOffset(580, 370),
    SubTitle = "v1.harvestMinMultiplier.5",
    Theme = "Garden Theme",
    Title = "Liquid Hub",
    Topbar = {ButtonsType = "Mac", Color = Color3.fromRGB(harvestMinMultiplier, harvestMinMultiplier, harvestMinMultiplier), Height = 44},
    Transparent = QEfly
})
local Window = Window
local ConfigManager = Window.ConfigManager
local currentConfig = ConfigManager:CreateConfig("default")
local currentConfig = currentConfig
local _v9 = Window:Tag({
    Border = QEfly,
    Color = Color3.fromRGB(255, 255, 255),
    Icon = "github",
    Title = "v1.harvestMinMultiplier.5"
})
local _v10 = Window:Tag({
    Border = QEfly,
    Color = Color3.fromRGB(20, 60, 25),
    Icon = "rbxthumb://type=Asset&id=106624117427771&w=150&h=150",
    Title = "Garden Horizons"
})
local HomeTab = Window:Tab({Color = primaryColor, Icon = "solar:home-2-bold", Title = "Home"})
local HomeTab = HomeTab
local _v12 = HomeTab:Section({Title = "Update Log"})
local _v13 = HomeTab:Paragraph({
    Desc = "Fix bug on script",
    Image = "solar:document-text-bold",
    ImageSize = 20,
    Title = "Version 1.harvestMinMultiplier.5"
})
local _v14 = HomeTab:Section({Title = "Game Information"})
local GameTimeParagraph = HomeTab:Paragraph({Desc = "harvestMinMultiplier", Image = "timer", ImageSize = 20, Title = "Game Time"})
local GameTimeParagraph = GameTimeParagraph
local _v = task.spawn(function(...)
    task.wait(harvestMinMultiplier)
    task.wait(harvestMinMultiplier)
    task.wait(harvestMinMultiplier)
end)
local FpsParagraph = HomeTab:Paragraph({Desc = "harvestMinMultiplier", Image = "monitor", ImageSize = 20, Title = "FPS"})
local FpsParagraph = FpsParagraph
local _v = task.spawn(function(...)
    local _v198 = workspace:GetRealPhysicsFPS()
    local _v199 = workspace:GetRealPhysicsFPS()
    local _v200 = workspace:GetRealPhysicsFPS()
end)
local PingParagraph = HomeTab:Paragraph({Desc = "harvestMinMultiplier", Image = "signal", ImageSize = 20, Title = "Ping"})
local PingParagraph = PingParagraph
local _v = task.spawn(function(...)
    local Stats = game:GetService("Stats")
    local _v250198 = Stats.Network.ServerStatsItem["Data Ping"]:GetValueString()
    local _v250199 = PingParagraph:SetDesc(_v250198)
    local _v250200 = Stats.Network.ServerStatsItem["Data Ping"]:GetValueString()
    local _v250201 = PingParagraph:SetDesc(_v250200)
    local _v250202 = Stats.Network.ServerStatsItem["Data Ping"]:GetValueString()
    local _v250203 = PingParagraph:SetDesc(_v250202)
end)
local _v18 = HomeTab:Section({Title = "Config Management"})
local configNameInput = "default"
local getAllConfigs = function()
    local _v583532 = ConfigManager:AllConfigs()
end
local configDropdown = autoLoadDropdown
local autoLoadDropdown = autoLoadDropdown
local _v19 = HomeTab:Input({
    Callback = function()
    local _v583533 = _1:gsub("%.json$", "")
end,
    Placeholder = "Enter config name...",
    Title = "Config Name"
})
local _v20 = ConfigManager:AllConfigs()
local configDropdown = HomeTab:Dropdown({
    Callback = function() end,
    Title = "Select Config",
    Value = "default",
    Values = {"default"}
})
local configDropdown = configDropdown
local refreshConfigDropdowns = function()
    local _v583534 = ConfigManager:AllConfigs()
    local _v583535 = configDropdown:Refresh({"default"})
    local _v583536 = configDropdown:SetValue(_1)
    local _v583537 = autoLoadDropdown:Refresh({"default"})
    local _v583538 = autoLoadDropdown:SetValue("default")
end
local _v22 = HomeTab:Button({Callback = function()
    local _v583534 = ConfigManager:AllConfigs()
    local _v583535 = configDropdown:Refresh({"default"})
    local _v583536 = configDropdown:SetValue(_1)
    local _v583537 = autoLoadDropdown:Refresh({"default"})
    local _v583538 = autoLoadDropdown:SetValue("default")
end, Title = "Refresh List"})
local _v23 = HomeTab:Button({Callback = function()
    local _v583539 = _1:gsub("%.json$", "")
    local _v583540 = _v583539:match("^%s*(.-)%s*$")
    local _v583541 = ConfigManager:CreateConfig(_v583540)
    local _v583542 = _v583541:Save()
    local _v583543 = ConfigManager:AllConfigs()
    local _v583544 = configDropdown:Refresh({"default"})
    local _v583545 = configDropdown:SetValue(_1)
    local _v583546 = autoLoadDropdown:Refresh({"default"})
    local _v583547 = autoLoadDropdown:SetValue("default")
    local _v583548 = WindUI:Notify({Content = (Saved ' .. (_v583540 .. ')), Duration = 2, Title = "Config"})
end, Title = "Save Config"})
local _v24 = HomeTab:Button({Callback = function()
    local _v583549 = _1:gsub("%.json$", "")
    local _v583550 = _v583549:match("^%s*(.-)%s*$")
    local _v583551 = ConfigManager:CreateConfig(_v583550)
    local _v583552 = _v583551:Load()
    local _v583553 = WindUI:Notify({Content = (Loaded ' .. (_v583550 .. ')), Duration = 2, Title = "Config"})
end, Title = "Load Config"})
local _v25 = HomeTab:Button({Callback = function() --[[callback:flySpeed]] end, Title = "Delete Config"})
local _v26 = HomeTab:Section({Title = "Auto Load Config"})
local _v27 = ConfigManager:AllConfigs()
local autoLoadDropdown = HomeTab:Dropdown({
    Callback = function()
    makefolder("CyraaHub")
    writefile("CyraaHub/autoload.txt", _1)
end,
    Title = "Config for Auto Load",
    Value = "default",
    Values = {"default"}
})
local autoLoadDropdown = autoLoadDropdown
local _v29 = HomeTab:Button({Callback = function()
    local _v583564 = _1:gsub("%.json$", "")
    local _v583565 = _v583564:match("^%s*(.-)%s*$")
    makefolder("CyraaHub")
    writefile("CyraaHub/autoload.txt", _v583565)
    local _v583566 = ConfigManager:AllConfigs()
    local _v583567 = configDropdown:Refresh({"default"})
    local _v583568 = configDropdown:SetValue(_1)
    local _v583569 = autoLoadDropdown:Refresh({"default"})
    local _v583570 = autoLoadDropdown:SetValue("default")
    local _v583571 = WindUI:Notify({
    Content = (Will auto-load: ' .. (_v583565 .. ')),
    Duration = 3,
    Title = "Auto Load"
})
end, Title = "Set Auto Load"})
local _v30 = HomeTab:Button({Callback = function()
    makefolder("CyraaHub")
    writefile("CyraaHub/autoload.txt", "")
    local _v583572 = WindUI:Notify({Content = "Auto Load disabled.", Duration = 2, Title = "Auto Load"})
end, Title = "Disable Auto Load"})
local _v31 = HomeTab:Section({Title = "Social Links"})
local _v32 = HomeTab:Paragraph({
    Buttons = {{Callback = function()
    setclipboard("https://discord.gg/BMrXHt4rJv")
end, Title = "Copy Discord Link"}},
    Desc = "Liquid Hub Community",
    Title = "Discord Server"
})
--[[local _v33 = HomeTab:Paragraph({
    Buttons = {{Callback = function()
    setclipboard("https://www.tiktok.com/@komtolmmek2script")
end, Title = "Copy Link"}},
    Desc = "komtolmmek2 Script",
    Title = "TikTok"
})
]]
local FarmTab = Window:Tab({Color = primaryColor, Icon = "solar:cpu-bold", Title = "Farm"})
local FarmTab = FarmTab
local HarvestSection = FarmTab:Section({Title = "Auto Harvest"})
local HarvestSection = HarvestSection
local plantNames = {}
local children = PlantsFolder:GetChildren()
local HarvestModeDD = FarmTab:Dropdown({
    Callback = function() end,
    Flag = "HarvestMode",
    Section = HarvestSection,
    Title = "Harvest Mode",
    Value = "Filter",
    Values = {"All", "Filter", "No Mutation", "Mutation Only"}
})
local HarvestModeDD = HarvestModeDD
local _v37 = currentConfig:Register("HarvestMode", HarvestModeDD)
local _v38 = FarmTab:Dropdown({
    Callback = function() end,
    Multi = QEfly,
    Section = HarvestSection,
    Title = "Plant Type Filter",
    Values = {
        "Carrot",
        "Tomato",
        "Potato",
        "Wheat",
        "Pumpkin",
        "Corn",
        "Strawberry",
        "Blueberry",
        "Onion",
        "Garlic",
        "Cabbage",
        "Banana",
        "Apple",
        "Plum",
        "Cherry",
        "Mushroom",
        "Rose",
        "Dandelion",
        "Bellpepper",
        "Birch",
        "Orange",
        "Olive",
        "Beetroot",
        "Sunpetal",
        "Goldenberry",
        "Amberpine",
        "Emberwood",
        "Dawn Blossom",
        "Dawnfruit"
    }
})
local HarvestTraitDD = FarmTab:Dropdown({
    Callback = function() end,
    Flag = "HarvestTrait",
    Multi = QEfly,
    Section = HarvestSection,
    Title = "Trait Filter",
    Value = {"Lush"},
    Values = {"None", "Unripe", "Ripened", "Lush"}
})
local HarvestTraitDD = HarvestTraitDD
local _v40 = currentConfig:Register("HarvestTrait", HarvestTraitDD)
local HarvestMutDD = FarmTab:Dropdown({
    Callback = function() end,
    Flag = "HarvestMut",
    Multi = QEfly,
    Section = HarvestSection,
    Title = "Mutation Filter",
    Value = {"None"},
    Values = {
        "None",
        "Soaked",
        "Foggy",
        "Chilled",
        "Flooded",
        "Snowy",
        "Sandy",
        "Frostbit",
        "Mossy",
        "Shocked",
        "Muddy",
        "Starstruck"
    }
})
local HarvestMutDD = HarvestMutDD
local _v42 = currentConfig:Register("HarvestMut", HarvestMutDD)
local HarvestVarDD = FarmTab:Dropdown({
    Callback = function() end,
    Flag = "HarvestVar",
    Multi = QEfly,
    Section = HarvestSection,
    Title = "Variant Filter",
    Value = {"None"},
    Values = {"None", "Silver", "Gold"}
})
local HarvestVarDD = HarvestVarDD
local _v44 = currentConfig:Register("HarvestVar", HarvestVarDD)
local HarvestRarDD = FarmTab:Dropdown({
    Callback = function() end,
    Flag = "HarvestRar",
    Multi = QEfly,
    Section = HarvestSection,
    Title = "Rarity Filter",
    Value = {
        "Common",
        "Uncommon",
        "Rare",
        "Epic",
        "Legendary"
    },
    Values = {
        "Common",
        "Uncommon",
        "Rare",
        "Epic",
        "Legendary"
    }
})
local HarvestRarDD = HarvestRarDD
local _v46 = currentConfig:Register("HarvestRar", HarvestRarDD)
local HarvestMinSlider = FarmTab:Slider({
    Callback = function() end,
    Desc = "If harvestMinMultiplier, disabled",
    Flag = "HarvestMin",
    Section = HarvestSection,
    Step = harvestMinMultiplier.5,
    Title = "Min Ripeness Multiplier",
    Value = {Default = harvestMinMultiplier, Max = 7, Min = harvestMinMultiplier}
})
local HarvestMinSlider = HarvestMinSlider
local _v48 = currentConfig:Register("HarvestMin", HarvestMinSlider)
local LushOnlyToggle = FarmTab:Toggle({
    Callback = function() end,
    Flag = "HarvestLush",
    Section = HarvestSection,
    Title = "Lush Only",
    Value = teleportToPlayerEnabled
})
local LushOnlyToggle = LushOnlyToggle
local _v50 = currentConfig:Register("HarvestLush", LushOnlyToggle)
local _v51 = FarmTab:Button({
    Callback = function()
    local _v583573 = character:FindFirstChild("Humanoid")
    local _v583574 = character:FindFirstChild("HumanoidRootPart")
    local _v583575 = workspace:FindFirstChild("ClientPlants")
    local children = _v583575:GetChildren()
    local _v583576 = workspace:FindFirstChild("Plots")
    local children = _v583576:GetChildren()
    task.wait(harvestMinMultiplier.2)
    _v583574.CFrame = _v583574.CFrame
    local _v583577 = WindUI:Notify({Content = "Harvested harvestMinMultiplier fruits!", Duration = 2, Title = "Harvest"})
end,
    Section = HarvestSection,
    Title = "Harvest Now"
})
local AutoHarvestToggle = FarmTab:Toggle({
    Callback = function()
    task.spawn(function(...) end)
    local autoHarvestThread = autoLoadDropdown
end,
    Flag = "AutoHarvest",
    Section = HarvestSection,
    Title = "Auto Harvest",
    Value = teleportToPlayerEnabled
})
local AutoHarvestToggle = AutoHarvestToggle
local _v53 = currentConfig:Register("AutoHarvest", AutoHarvestToggle)
local PlantSection = FarmTab:Section({Title = "Auto Plant"})
local PlantSection = PlantSection
local SeedsWithAll = {"All"}
local _v55 = FarmTab:Dropdown({
    Callback = function() end,
    Multi = QEfly,
    Section = PlantSection,
    Title = "Select Seeds to Plant",
    Values = {
        "All",
        "Carrot",
        "Tomato",
        "Potato",
        "Wheat",
        "Pumpkin",
        "Corn",
        "Strawberry",
        "Blueberry",
        "Onion",
        "Garlic",
        "Cabbage",
        "Banana",
        "Apple",
        "Plum",
        "Cherry",
        "Mushroom",
        "Rose",
        "Dandelion",
        "Bellpepper",
        "Birch",
        "Orange",
        "Olive",
        "Beetroot",
        "Sunpetal",
        "Goldenberry",
        "Amberpine",
        "Emberwood",
        "Dawn Blossom",
        "Dawnfruit"
    }
})
local _v56 = FarmTab:Button({
    Callback = function()
    local _v583578 = character:FindFirstChild("Humanoid")
    local _v583579 = character:FindFirstChild("HumanoidRootPart")
    local _v583580 = workspace:FindFirstChild("Plots")
    local _v583581 = _v583580:FindFirstChild("Plot6")
    local _v583582 = _v583581:FindFirstChild("Owner")
    local _v583583 = _v583582:IsA("StringValue")
    local _v583584 = WindUI:Notify({Content = "Planted seeds!", Duration = 2, Title = "Plant"})
end,
    Section = PlantSection,
    Title = "Plant Now"
})
local AutoPlantToggle = FarmTab:Toggle({
    Callback = function() end,
    Flag = "AutoPlant",
    Section = PlantSection,
    Title = "Auto Plant Seeds",
    Value = teleportToPlayerEnabled
})
local AutoPlantToggle = AutoPlantToggle
local _v58 = currentConfig:Register("AutoPlant", AutoPlantToggle)
local ClaimSection = FarmTab:Section({Title = "Claim Plot"})
local ClaimSection = ClaimSection
local _v60 = FarmTab:Button({
    Callback = function()
    local _v583585 = ClaimPlotRemote:FireServer(ClaimPlotRemote, "Plot1")
    task.wait(harvestMinMultiplier.3)
    local _v583586 = ClaimPlotRemote:InvokeServer(ClaimPlotRemote, "Plot1")
    local _v583587 = WindUI:Notify({Content = "Attempted to claim Plot1", Duration = 2, Title = "Claim Plot"})
end,
    Section = ClaimSection,
    Title = "Claim Plot Now"
})
local AutoClaimPlotToggle = FarmTab:Toggle({
    Callback = function()
    local _v583588 = WindUI:Notify({Content = "Auto Claim active!", Duration = 3, Title = "Claim Plot"})
    task.spawn(function(...) end)
    local autoClaimPlotThread = autoLoadDropdown
end,
    Flag = "AutoClaimPlot",
    Section = ClaimSection,
    Title = "Auto Claim Plot",
    Value = teleportToPlayerEnabled
})
local AutoClaimPlotToggle = AutoClaimPlotToggle
local _v62 = currentConfig:Register("AutoClaimPlot", AutoClaimPlotToggle)
local AlwaysRenderToggle = FarmTab:Toggle({
    Callback = function()
    local _v583589 = _v192:Disconnect()
    local _v583590 = player:FindFirstChild("PlayerGui")
    local _v583591 = _v583590:FindFirstChild("LoadingScreenGui")
    local _v583592 = _v583591:FindFirstChild("Frame")
    local _v583593 = _v583592:FindFirstChild("LoadingAssets")
    local _v583594 = _v583593:IsA("TextLabel")
    local _v583595 = player:FindFirstChild("PlayerGui")
    local _v583596 = _v583595:FindFirstChild("LoadingScreenGui")
    local _v583597 = _v583596:FindFirstChild("Frame")
    local _v583598 = _v583597:FindFirstChild("LoadingAssets")
    local _v583599 = _v583598:IsA("TextLabel")
    local _v583600 = _v583593:GetPropertyChangedSignal("Text")
    local _v583601 = _v583600:Connect(function(...) end)
end,
    Flag = "AlwaysRender",
    Section = ClaimSection,
    Title = "Always Render Plot",
    Value = teleportToPlayerEnabled
})
local AlwaysRenderToggle = AlwaysRenderToggle
local _v64 = currentConfig:Register("AlwaysRender", AlwaysRenderToggle)
local QuestSection = FarmTab:Section({Title = "Quest"})
local QuestSection = QuestSection
local _v66 = FarmTab:Button({
    Callback = function()
    local _v583602 = character:FindFirstChild("Humanoid")
    local _v583603 = character:FindFirstChild("HumanoidRootPart")
    _v583603.CFrame = CFrame.new(BUY_QUEST_POSITION)
    task.wait(harvestMinMultiplier.3)
    local _v583604 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "1")
    task.wait(harvestMinMultiplier.1)
    local _v583605 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "2")
    task.wait(harvestMinMultiplier.1)
    local _v583606 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "3")
    task.wait(harvestMinMultiplier.1)
    local _v583607 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "4")
    local _v583608 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "5")
    local _v583609 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "6")
    local _v583610 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "7")
    local _v583611 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "8")
    local _v583612 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "9")
    local _v583613 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "10")
    local _v583614 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "11")
    local _v583615 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "12")
    local _v583616 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "13")
    local _v583617 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "14")
    local _v583618 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "15")
    local _v583619 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "16")
    local _v583620 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "17")
    local _v583621 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "18")
    local _v583622 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "19")
    local _v583623 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Daily", "20")
    local _v583624 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "1")
    local _v583625 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "2")
    local _v583626 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "3")
    local _v583627 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "4")
    local _v583628 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "5")
    local _v583629 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "6")
    local _v583630 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "7")
    local _v583631 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "8")
    local _v583632 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "9")
    local _v583633 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "10")
    local _v583634 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "11")
    local _v583635 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "12")
    local _v583636 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "13")
    local _v583637 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "14")
    local _v583638 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "15")
    local _v583639 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "16")
    local _v583640 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "17")
    local _v583641 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "18")
    local _v583642 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "19")
    local _v583643 = ClaimQuestRemote:FireServer(ClaimQuestRemote, "Weekly", "20")
    task.wait(harvestMinMultiplier.2)
    _v583603.CFrame = _v583603.CFrame
    local _v583644 = WindUI:Notify({Content = "Claimed all quests!", Duration = 2, Title = "Quest"})
end,
    Section = QuestSection,
    Title = "Claim All Now"
})
local AutoQuestToggle = FarmTab:Toggle({
    Callback = function()
    task.spawn(function(...) end)
    local autoQuestThread = autoLoadDropdown
end,
    Flag = "AutoQuest",
    Section = QuestSection,
    Title = "Auto Claim All Quests",
    Value = teleportToPlayerEnabled
})
local AutoQuestToggle = AutoQuestToggle
local _v68 = currentConfig:Register("AutoQuest", AutoQuestToggle)
local ShopTab = Window:Tab({Color = primaryColor, Icon = "solar:cart-bold", Title = "Shop"})
local ShopTab = ShopTab
local ShopSeedSection = ShopTab:Section({Title = "Auto Buy Seeds"})
local ShopSeedSection = ShopSeedSection
local _v71 = ShopTab:Dropdown({
    Callback = function() end,
    Multi = QEfly,
    Section = ShopSeedSection,
    Title = "Select Seeds to Buy",
    Values = {
        "Carrot Seed",
        "Tomato Seed",
        "Potato Seed",
        "Wheat Seed",
        "Pumpkin Seed",
        "Corn Seed",
        "Strawberry Seed",
        "Blueberry Seed",
        "Onion Seed",
        "Garlic Seed",
        "Cabbage Seed",
        "Banana Seed",
        "Apple Seed",
        "Plum Seed",
        "Cherry Seed",
        "Mushroom Seed",
        "Rose Seed",
        "Dandelion Seed",
        "Bellpepper Seed",
        "Birch Seed",
        "Orange Seed",
        "Olive Seed",
        "Sunpetal Seed",
        "Goldenberry Seed",
        "Amberpine Seed",
        "Emberwood Seed",
        "Dawn Blossom Seed",
        "Dawnfruit Seed",
        "Beetroot Seed"
    }
})
local _v72 = ShopTab:Button({
    Callback = function()
    local _v583645 = character:FindFirstChild("Humanoid")
    local _v583646 = character:FindFirstChild("HumanoidRootPart")
    _v583646.CFrame = CFrame.new(BUY_SEED_POSITION)
    task.wait(harvestMinMultiplier.3)
    _v583646.CFrame = _v583646.CFrame
    local _v583647 = WindUI:Notify({Content = "Bought seeds!", Duration = 2, Title = "Shop"})
end,
    Section = ShopSeedSection,
    Title = "Buy Seeds Now"
})
local AutoSeedToggle = ShopTab:Toggle({
    Callback = function() end,
    Flag = "AutoSeed",
    Section = ShopSeedSection,
    Title = "Auto Buy Seeds",
    Value = teleportToPlayerEnabled
})
local AutoSeedToggle = AutoSeedToggle
local _v74 = currentConfig:Register("AutoSeed", AutoSeedToggle)
local ShopGearSection = ShopTab:Section({Title = "Auto Buy Gear"})
local ShopGearSection = ShopGearSection
local _v76 = ShopTab:Dropdown({
    Callback = function() end,
    Multi = QEfly,
    Section = ShopGearSection,
    Title = "Select Gear to Buy",
    Values = {
        "Watering Can",
        "Basic Sprinkler",
        "Harvest All",
        "Turbo Sprinkler",
        "Favorite Tool",
        "Super Sprinkler"
    }
})
local _v77 = ShopTab:Button({
    Callback = function()
    local _v583648 = character:FindFirstChild("Humanoid")
    local _v583649 = character:FindFirstChild("HumanoidRootPart")
    _v583649.CFrame = CFrame.new(BUY_GEAR_POSITION)
    task.wait(harvestMinMultiplier.3)
    _v583649.CFrame = _v583649.CFrame
    local _v583650 = WindUI:Notify({Content = "Bought gear!", Duration = 2, Title = "Shop"})
end,
    Section = ShopGearSection,
    Title = "Buy Gear Now"
})
local AutoGearToggle = ShopTab:Toggle({
    Callback = function() end,
    Flag = "AutoGear",
    Section = ShopGearSection,
    Title = "Auto Buy Gear",
    Value = teleportToPlayerEnabled
})
local AutoGearToggle = AutoGearToggle
local _v79 = currentConfig:Register("AutoGear", AutoGearToggle)
local ShopSellSection = ShopTab:Section({Title = "Sell Items"})
local ShopSellSection = ShopSellSection
local SellModeDD = ShopTab:Dropdown({
    Callback = function() end,
    Flag = "SellMode",
    Section = ShopSellSection,
    Title = "Sell Mode",
    Value = "Hand (Filtered)",
    Values = {"All", "Hand (Filtered)"}
})
local SellModeDD = SellModeDD
local _v82 = currentConfig:Register("SellMode", SellModeDD)
local _v83 = ShopTab:Dropdown({
    Callback = function() end,
    Multi = QEfly,
    Section = ShopSellSection,
    Title = "Plant Type",
    Values = {
        "Carrot",
        "Tomato",
        "Potato",
        "Wheat",
        "Pumpkin",
        "Corn",
        "Strawberry",
        "Blueberry",
        "Onion",
        "Garlic",
        "Cabbage",
        "Banana",
        "Apple",
        "Plum",
        "Cherry",
        "Mushroom",
        "Rose",
        "Dandelion",
        "Bellpepper",
        "Birch",
        "Orange",
        "Olive",
        "Beetroot",
        "Sunpetal",
        "Goldenberry",
        "Amberpine",
        "Emberwood",
        "Dawn Blossom",
        "Dawnfruit"
    }
})
local SellTraitDD = ShopTab:Dropdown({
    Callback = function() end,
    Flag = "SellTrait",
    Multi = QEfly,
    Section = ShopSellSection,
    Title = "Trait",
    Value = {"Lush"},
    Values = {"None", "Unripe", "Ripened", "Lush"}
})
local SellTraitDD = SellTraitDD
local _v85 = currentConfig:Register("SellTrait", SellTraitDD)
local SellMutDD = ShopTab:Dropdown({
    Callback = function() end,
    Flag = "SellMut",
    Multi = QEfly,
    Section = ShopSellSection,
    Title = "Mutation",
    Value = {"None"},
    Values = {
        "None",
        "Soaked",
        "Foggy",
        "Chilled",
        "Flooded",
        "Snowy",
        "Sandy",
        "Frostbit",
        "Mossy",
        "Shocked",
        "Muddy",
        "Starstruck"
    }
})
local SellMutDD = SellMutDD
local _v87 = currentConfig:Register("SellMut", SellMutDD)
local SellVarDD = ShopTab:Dropdown({
    Callback = function() end,
    Flag = "SellVar",
    Multi = QEfly,
    Section = ShopSellSection,
    Title = "Variant",
    Value = {"None"},
    Values = {"None", "Silver", "Gold"}
})
local SellVarDD = SellVarDD
local _v89 = currentConfig:Register("SellVar", SellVarDD)
local SellRarDD = ShopTab:Dropdown({
    Callback = function() end,
    Flag = "SellRar",
    Multi = QEfly,
    Section = ShopSellSection,
    Title = "Rarity",
    Value = {
        "Common",
        "Uncommon",
        "Rare",
        "Epic",
        "Legendary"
    },
    Values = {
        "Common",
        "Uncommon",
        "Rare",
        "Epic",
        "Legendary"
    }
})
local SellRarDD = SellRarDD
local _v91 = currentConfig:Register("SellRar", SellRarDD)
local _v92 = ShopTab:Button({
    Callback = function()
    task.spawn(function(...) end)
end,
    Section = ShopSellSection,
    Title = "Sell Now"
})
local AutoSellToggle = ShopTab:Toggle({
    Callback = function() end,
    Flag = "AutoSell",
    Section = ShopSellSection,
    Title = "Auto Sell",
    Value = teleportToPlayerEnabled
})
local AutoSellToggle = AutoSellToggle
local _v94 = currentConfig:Register("AutoSell", AutoSellToggle)
local FavoriteSection = ShopTab:Section({Title = "Inventory - Auto Favorite"})
local FavoriteSection = FavoriteSection
local _v96 = ShopTab:Dropdown({
    Callback = function() end,
    Multi = QEfly,
    Section = FavoriteSection,
    Title = "Plant Type",
    Values = {
        "Carrot",
        "Tomato",
        "Potato",
        "Wheat",
        "Pumpkin",
        "Corn",
        "Strawberry",
        "Blueberry",
        "Onion",
        "Garlic",
        "Cabbage",
        "Banana",
        "Apple",
        "Plum",
        "Cherry",
        "Mushroom",
        "Rose",
        "Dandelion",
        "Bellpepper",
        "Birch",
        "Orange",
        "Olive",
        "Beetroot",
        "Sunpetal",
        "Goldenberry",
        "Amberpine",
        "Emberwood",
        "Dawn Blossom",
        "Dawnfruit"
    }
})
local _v97 = ShopTab:Dropdown({
    Callback = function() end,
    Multi = QEfly,
    Section = FavoriteSection,
    Title = "Trait",
    Values = {"None", "Unripe", "Ripened", "Lush"}
})
local _v98 = ShopTab:Dropdown({
    Callback = function() end,
    Multi = QEfly,
    Section = FavoriteSection,
    Title = "Mutation",
    Values = {
        "None",
        "Soaked",
        "Foggy",
        "Chilled",
        "Flooded",
        "Snowy",
        "Sandy",
        "Frostbit",
        "Mossy",
        "Shocked",
        "Muddy",
        "Starstruck"
    }
})
local _v99 = ShopTab:Dropdown({
    Callback = function() end,
    Multi = QEfly,
    Section = FavoriteSection,
    Title = "Variant",
    Values = {"None", "Silver", "Gold"}
})
local _v100 = ShopTab:Dropdown({
    Callback = function() end,
    Multi = QEfly,
    Section = FavoriteSection,
    Title = "Rarity",
    Values = {
        "Common",
        "Uncommon",
        "Rare",
        "Epic",
        "Legendary"
    }
})
local _v101 = ShopTab:Button({
    Callback = function()
    local _v583651 = character:FindFirstChildOfClass("Humanoid")
    local children = player.Backpack:GetChildren()
    local children = character:GetChildren()
    local _v583652 = WindUI:Notify({Content = "Favorited harvestMinMultiplier items!", Duration = 2, Title = "Favorite"})
end,
    Section = FavoriteSection,
    Title = "Favorite Now"
})
local AutoFavToggle = ShopTab:Toggle({
    Callback = function() end,
    Flag = "AutoFav",
    Section = FavoriteSection,
    Title = "Auto Favorite",
    Value = teleportToPlayerEnabled
})
local AutoFavToggle = AutoFavToggle
local _v103 = currentConfig:Register("AutoFav", AutoFavToggle)
local RedeemSection = ShopTab:Section({Title = "Redeem Code"})
local RedeemSection = RedeemSection
local _v105 = ShopTab:Button({
    Callback = function()
    local _v583653 = RedeemRemote:InvokeServer(RedeemRemote, "RELEASE")
    task.wait(harvestMinMultiplier.3)
    local _v583654 = RedeemRemote:InvokeServer(RedeemRemote, "DAWN")
    task.wait(harvestMinMultiplier.3)
    local _v583655 = RedeemRemote:InvokeServer(RedeemRemote, "358")
    local _v583656 = RedeemRemote:InvokeServer(RedeemRemote, "DAWNFRUIT")
    local _v583657 = RedeemRemote:InvokeServer(RedeemRemote, "THANKYOU")
    local _v583658 = WindUI:Notify({Content = "Attempted to redeem all codes!", Duration = 3, Title = "Redeem"})
end,
    Section = RedeemSection,
    Title = "Redeem All Codes"
})
local TeleportTab = Window:Tab({Color = primaryColor, Icon = "solar:map-point-bold", Title = "Teleport"})
local TeleportTab = TeleportTab
local TpMiscSection = TeleportTab:Section({Title = "Misc"})
local TpMiscSection = TpMiscSection
local TeleportTypeDD = TeleportTab:Dropdown({
    Callback = function() end,
    Flag = "TeleportType",
    Section = TpMiscSection,
    Title = "Teleport Type",
    Value = "Instant",
    Values = {"Instant", "Tween"}
})
local TeleportTypeDD = TeleportTypeDD
local _v109 = currentConfig:Register("TeleportType", TeleportTypeDD)
local PlayerTpSection = TeleportTab:Section({Title = "Player Teleport"})
local PlayerTpSection = PlayerTpSection
local refreshPlayerList = function()
    local _v583659 = Players:GetPlayers()
    local _v583660 = playerDropdown:Refresh({"No other players"})
    local _v583661 = playerDropdown:SetValue("No other players")
end
local playerDropdown = TeleportTab:Dropdown({
    Callback = function() end,
    Section = PlayerTpSection,
    Title = "Select Player",
    Value = "Loading...",
    Values = {"Loading..."}
})
local playerDropdown = playerDropdown
local _v112 = TeleportTab:Button({
    Callback = function()
    local _v583659 = Players:GetPlayers()
    local _v583660 = playerDropdown:Refresh({"No other players"})
    local _v583661 = playerDropdown:SetValue("No other players")
end,
    Section = PlayerTpSection,
    Title = "Refresh Player List"
})
local _v113 = TeleportTab:Button({
    Callback = function()
    local _v583662 = character:FindFirstChild("Humanoid")
    local _v583663 = character:FindFirstChild("HumanoidRootPart")
    local _v583664 = Players:FindFirstChild(_1)
    local _v583665 = _v583664.Character:FindFirstChild("HumanoidRootPart")
    local _v583666 = character:FindFirstChild("Humanoid")
    local _v583667 = character:FindFirstChild("HumanoidRootPart")
    _v583667.CFrame = (_v583664.Character.HumanoidRootPart.CFrame * CFrame.new(3, harvestMinMultiplier, 3))
    local _v583668 = WindUI:Notify({Content = (Teleported to  .. _1), Duration = 2, Title = "Teleport"})
end,
    Section = PlayerTpSection,
    Title = "Teleport to Player"
})
local _v114 = TeleportTab:Toggle({
    Callback = function()
    local onHeartbeat = RunService.Heartbeat:Connect(function(deltaTime) end)
    local teleportToPlayerConnection = onHeartbeat
end,
    Section = PlayerTpSection,
    Title = "Follow Player (Real-time)"
})
local ServerTab = Window:Tab({Color = primaryColor, Icon = "solar:server-bold", Title = "Server"})
local ServerTab = ServerTab
local _v116 = ServerTab:Section({Title = "Server Information"})
local serverIdDisplay = ServerTab:Paragraph({Desc = "Loading...", Title = "Current Server ID"})
local serverIdDisplay = serverIdDisplay
local _v = task.spawn(function(...)
    task.wait(1)
    local _v583669 = serverIdDisplay:SetDesc(game.JobId)
    task.wait(1)
    local _v583670 = serverIdDisplay:SetDesc(game.JobId)
    task.wait(1)
    local _v583671 = serverIdDisplay:SetDesc(game.JobId)
end)
local _v118 = ServerTab:Button({Callback = function()
    setclipboard(game.JobId)
end, Title = "Copy Server ID"})
local _v119 = ServerTab:Section({Title = "Server Actions"})
local _v120 = ServerTab:Button({Callback = function()
    local _v156 = TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId)
end, Title = "Rejoin Server"})
local _v121 = ServerTab:Button({Callback = function() end, Title = "Server Hop (Random)"})
local _v122 = ServerTab:Button({
    Callback = function() end,
    Title = "Server Hop (Lower Player Count)"
})
local _v123 = ServerTab:Section({Title = "Join Server"})
local _v124 = ServerTab:Input({
    Callback = function()
    local _v157 = TeleportService:TeleportToPlaceInstance(game.PlaceId, _1)
end,
    Placeholder = "Enter server ID...",
    Title = "Server ID"
})
local MiscTab = Window:Tab({Color = primaryColor, Icon = "solar:settings-bold", Title = "Misc"})
local MiscTab = MiscTab
local CharSection = MiscTab:Section({Title = "Character"})
local CharSection = CharSection
local _v127 = MiscTab:Slider({
    Callback = function()
    local _v833669 = character:FindFirstChildOfClass("Humanoid")
    local _v833670 = character:FindFirstChildOfClass("Humanoid")
    _v833670.WalkSpeed = _1
end,
    Section = CharSection,
    Step = 1,
    Title = "Walk Speed",
    Value = {Default = 16, Max = 200, Min = 16}
})
local _v128 = MiscTab:Slider({
    Callback = function()
    local _v833671 = character:FindFirstChildOfClass("Humanoid")
    _v833672.JumpPower = _1
end,
    Section = CharSection,
    Step = 1,
    Title = "Jump Power",
    Value = {Default = flySpeed, Max = 200, Min = flySpeed}
})
local FlySection = MiscTab:Section({Title = "Fly"})
local FlySection = FlySection
local FlyToggle = MiscTab:Toggle({
    Callback = function()
    local _v833673 = flyKeyDown:Disconnect()
    local _v833674 = flyKeyUp:Disconnect()
    local _v833675 = flyHeartbeatConn:Disconnect()
    local _v833676 = flyDiedConn:Disconnect()
    local _v833677 = flyBodyGyro:Destroy()
    local _v833678 = flyBodyVelocity:Destroy()
    local _v833679 = character:FindFirstChildWhichIsA("Humanoid")
    _v833679.PlatformStand = teleportToPlayerEnabled
    workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    local _v833680 = character:FindFirstChildWhichIsA("Humanoid")
    local _v833681 = character:FindFirstChild("HumanoidRootPart")
    local bodygyro = Instance.new("BodyGyro")
    local flyBodyGyro = bodygyro
    local bodyvelocity = Instance.new("BodyVelocity")
    local flyBodyVelocity = bodyvelocity
    flyBodyGyro.P = 90000
    flyBodyGyro.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
    flyBodyGyro.CFrame = _v833681.CFrame
    flyBodyGyro.Parent = _v833681
    flyBodyVelocity.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
    flyBodyVelocity.Velocity = Vector3.new(harvestMinMultiplier, harvestMinMultiplier, harvestMinMultiplier)
    flyBodyVelocity.Parent = _v833681
    _v833680.PlatformStand = QEfly
    local onInputBegan = UserInputService.InputBegan:Connect(function(input, gameProcessed) end)
    local flyKeyDown = onInputBegan
    local onInputEnded = UserInputService.InputEnded:Connect(function(input, gameProcessed) end)
    local flyKeyUp = onInputEnded
    local onHeartbeat = RunService.Heartbeat:Connect(function(deltaTime) end)
    local flyHeartbeatConn = onHeartbeat
    local onDied = _v833680.Died:Connect(function()
        local _v145 = character:FindFirstChildWhichIsA("Humanoid")
        _v145.PlatformStand = teleportToPlayerEnabled
        workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    end)
    local flyDiedConn = onDied
end,
    Flag = "FlyEnabled",
    Section = FlySection,
    Title = "Enable Fly",
    Value = teleportToPlayerEnabled
})
local FlyToggle = FlyToggle
local _v131 = currentConfig:Register("FlyEnabled", FlyToggle)
local FlySpeedSlider = MiscTab:Slider({
    Callback = function() end,
    Flag = "FlySpeed",
    Section = FlySection,
    Step = 1,
    Title = "Fly Speed",
    Value = {Default = flySpeed, Max = 200, Min = 10}
})
local FlySpeedSlider = FlySpeedSlider
local _v133 = currentConfig:Register("FlySpeed", FlySpeedSlider)
local NoclipSection = MiscTab:Section({Title = "Noclip"})
local NoclipSection = NoclipSection
local NoclipToggle = MiscTab:Toggle({
    Callback = function()
    local _v833682 = noclipConnection:Disconnect()
    local onStepped = RunService.Stepped:Connect(function(deltaTime) end)
end,
    Flag = "Noclip",
    Section = NoclipSection,
    Title = "Enable Noclip",
    Value = teleportToPlayerEnabled
})
local NoclipToggle = NoclipToggle
local _v136 = currentConfig:Register("Noclip", NoclipToggle)
local AntiAfkSection = MiscTab:Section({Title = "Anti AFK"})
local AntiAfkSection = AntiAfkSection
local AntiAfkToggle = MiscTab:Toggle({
    Callback = function()
    task.spawn(function(...) end)
    local antiAfkConn = autoLoadDropdown
end,
    Flag = "AntiAfk",
    Section = AntiAfkSection,
    Title = "Enable Anti AFK",
    Value = teleportToPlayerEnabled
})
local AntiAfkToggle = AntiAfkToggle
local _v139 = currentConfig:Register("AntiAfk", AntiAfkToggle)
local onCharacterAdded = player.CharacterAdded:Connect(function(character)
    task.wait(harvestMinMultiplier.5)
    local _v833683 = character:FindFirstChild("Humanoid")
    local _v833684 = character:FindFirstChild("HumanoidRootPart")
    local _v833685 = RS:WaitForChild("RemoteEvents", 10)
    local _v833686 = _v833685:WaitForChild("PurchaseShopItem", 10)
    local _v833687 = _v833685:WaitForChild("SellItems", 10)
    local _v833688 = _v833685:WaitForChild("PlantSeed", 10)
    local _v833689 = _v833685:WaitForChild("HarvestFruit", 10)
    local _v833690 = _v833685:FindFirstChild("ToggleFavorite")
    local _v833691 = _v833685:FindFirstChild("ClaimSelectedPlot")
    local _v833692 = _v833685:FindFirstChild("ClaimQuest")
    local _v833693 = _v833685:WaitForChild("RedeemCode", 10)
    task.spawn(function(...) end)
    local autoHarvestThread = autoLoadDropdown
    task.spawn(function(...) end)
    local autoQuestThread = autoLoadDropdown
    task.spawn(function(...) end)
    local autoClaimPlotThread = autoLoadDropdown
    task.spawn(function(...) end)
    local antiAfkConn = autoLoadDropdown
    local _v833694 = flyKeyDown:Disconnect()
    local _v833695 = flyKeyUp:Disconnect()
    local _v833696 = flyHeartbeatConn:Disconnect()
    local _v833697 = flyDiedConn:Disconnect()
    local _v833698 = flyBodyGyro:Destroy()
    local _v833699 = flyBodyVelocity:Destroy()
    local _v833700 = character:FindFirstChildWhichIsA("Humanoid")
    _v833700.PlatformStand = teleportToPlayerEnabled
    workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    local _v833701 = character:FindFirstChildWhichIsA("Humanoid")
    local _v833702 = character:FindFirstChild("HumanoidRootPart")
    local bodygyro = Instance.new("BodyGyro")
    local flyBodyGyro = bodygyro
    local bodyvelocity = Instance.new("BodyVelocity")
    local flyBodyVelocity = bodyvelocity
    flyBodyGyro.P = 90000
    flyBodyGyro.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
    flyBodyGyro.CFrame = _v833702.CFrame
    flyBodyGyro.Parent = _v833702
    flyBodyVelocity.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
    flyBodyVelocity.Velocity = Vector3.new(harvestMinMultiplier, harvestMinMultiplier, harvestMinMultiplier)
    flyBodyVelocity.Parent = _v833702
    _v833701.PlatformStand = QEfly
    local onInputBegan = UserInputService.InputBegan:Connect(function(input, gameProcessed) end)
    local flyKeyDown = onInputBegan
    local onInputEnded = UserInputService.InputEnded:Connect(function(input, gameProcessed) end)
    local flyKeyUp = onInputEnded
    local onHeartbeat = RunService.Heartbeat:Connect(function(deltaTime) end)
    local flyHeartbeatConn = onHeartbeat
    local onDied = _v833701.Died:Connect(function()
        local _v145 = character:FindFirstChildWhichIsA("Humanoid")
        _v145.PlatformStand = teleportToPlayerEnabled
        workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    end)
    local flyDiedConn = onDied
    local _v833703 = onStepped:Disconnect()
    local onStepped = RunService.Stepped:Connect(function(deltaTime) end)
    local _v833704 = teleportToPlayerConnection:Disconnect()
    local onHeartbeat = RunService.Heartbeat:Connect(function(deltaTime) end)
    local teleportToPlayerConnection = onHeartbeat
end)
local onPlayerAdded = Players.PlayerAdded:Connect(function(player)
    task.wait(1)
    local _v833705 = Players:GetPlayers()
    local _v833706 = playerDropdown:Refresh({"No other players"})
    local _v833707 = playerDropdown:SetValue("No other players")
end)
local onPlayerRemoving = Players.PlayerRemoving:Connect(function(player)
    task.wait(1)
    local _v833708 = Players:GetPlayers()
    local _v833709 = playerDropdown:Refresh({"No other players"})
    local _v833710 = playerDropdown:SetValue("No other players")
end)
local _v = task.wait(1)
local _v140 = Players:GetPlayers()
local _v141 = playerDropdown:Refresh({"No other players"})
local _v142 = playerDropdown:SetValue("No other players")
local _v = task.spawn(function(...)
    task.wait(1)
    local _v833711 = _v583551:Load()
end)
local _v143 = WindUI:Notify({
    Content = "Garden Horizons v1.harvestMinMultiplier.5 Loaded!\nby komtolmmek2 script",
    Duration = 5,
    Icon = "rbxthumb://type=Asset&id=106624117427771&w=150&h=150",
    Title = "Cyraa Hub"
})
print("Cyraa Hub v1.0.5 - Made by komtolmmek2 script")

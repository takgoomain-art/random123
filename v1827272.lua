local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- 🔗 URLs
local WINDUI_URL = "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"
local SCRIPT_URL = "https://codeberg.org/tkgoo31/liquid/raw/branch/main/v1827272.lua"

-- 🚫 Blacklisted UserIds
local Blacklist = {
    12345678,
    87654321
}

-- 🔍 Check blacklist
local function isBlacklisted()
    for _, id in ipairs(Blacklist) do
        if player.UserId == id then
            return true
        end
    end
    return false
end

-- ❌ Block early (no WindUI yet)
if isBlacklisted() then
    warn("You are blacklisted.")
    return
end

-------------------------------------------------
-- 🌬️ LOAD WIND UI
-------------------------------------------------
local WindUI
local successUI, resultUI = pcall(function()
    return game:HttpGet(WINDUI_URL)
end)

if successUI and resultUI then
    local ok, lib = pcall(function()
        return loadstring(resultUI)()
    end)

    if ok and lib then
        WindUI = lib
        _G.WindUI = WindUI -- 🔥 share globally
    else
        warn("Failed to execute WindUI")
        return
    end
else
    warn("Failed to fetch WindUI")
    return
end

-------------------------------------------------
-- 🔔 NOTIFY 
-------------------------------------------------
local function notify(title, text)
    pcall(function()
        _G.WindUI:Notify({
            Title = title,
            Content = text,
            Duration = 4
        })
    end)
end

-- ❌ Double check blacklist (with UI)
if isBlacklisted() then
    notify("Access Denied", "You are blacklisted.")
    return
end


-- 🚀 LOAD MAIN SCRIPT
-------------------------------------------------
local success, script = pcall(function()
    return game:HttpGet(SCRIPT_URL)
end)

if success and script then
    notify("Loader", "Loading script...")

    local runSuccess, err = pcall(function()
        loadstring(script)()
    end)

    if runSuccess then
        notify("Success", "Script loaded successfully")
    else
        notify("Error", "Execution failed")
        warn(err)
    end
else
    notify("Error", "Failed to fetch script")
end

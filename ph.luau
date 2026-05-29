local v1 = game:GetService("Players")
local vu2 = game:GetService("RunService")
local vu3 = game:GetService("UserInputService")
game:GetService("TweenService")
local vu4 = v1.LocalPlayer
local v5 = vu4:WaitForChild("PlayerGui")

local existing = v5:FindFirstChild("CrouchGui")
if existing then existing:Destroy() end

local v6 = Instance.new("ScreenGui")
v6.Name = "CrouchGui"
v6.Parent = v5
local v7 = Instance.new("Frame")
v7.Name = "TouchControls"
v7.Size = UDim2.new(1, 0, 1, 0)
v7.BackgroundTransparency = 1
v7.Parent = v6
local v8 = v5:FindFirstChild("JumpButton", true)
local vu9
if v8 then
    vu9 = v8
else
    local v10, v11, v12 = ipairs(v5:GetDescendants())
    while true do
        v12, vu9 = v10(v11, v12)
        if v12 == nil then
            vu9 = v8
            break
        end
        if vu9:IsA("ImageButton") and (vu9.Name == "JumpButton" or string.find(string.lower(vu9.Name), "jump")) then
            break
        end
    end
end

local vu13 = "rbxassetid://109660173469064"
local vu14 = "rbxassetid://139705395031155"
local vu15 = "rbxassetid://137525751454426"
local vu16 = "rbxassetid://107078800928182"
local vu17 = Instance.new("ImageButton")
vu17.Name = "CrouchButton"
vu17.BackgroundTransparency = 1
vu17.Image = vu13
vu17.Parent = v7

if vu9 then
    vu17.Size = vu9.Size
    vu17.Position = UDim2.new(0, vu9.AbsolutePosition.X - (vu9.AbsoluteSize.X + 10), 0, vu9.AbsolutePosition.Y)
else
    vu17.Size = UDim2.new(0, 60, 0, 60)
    vu17.Position = UDim2.new(0, 50, 1, -150)
end

local vu18 = false
local vu19 = 16
local vu20 = 50
local vu21 = nil
local vu22 = nil
local vu23 = 0.2
local vu24 = vu3:GetLastInputType()

local function vu26()
    local v25 = vu3:GetLastInputType()
    vu24 = v25
    vu17.Visible = v25 == Enum.UserInputType.Touch
end

local function vu28()
    local v27 = vu4.Character
    if v27 then
        return v27:FindFirstChildOfClass("Humanoid")
    else
        return nil
    end
end

local function vu29()
    if vu21 then
        vu21:Stop()
        vu21 = nil
    end
    if vu22 then
        vu22:Stop()
        vu22 = nil
    end
end

local function vu34()
    if vu18 then return end
    local vu30 = vu28()
    if vu30 then
        vu18 = true
        vu17.Image = vu14
        vu19 = vu30.WalkSpeed
        vu20 = vu30.JumpPower
        local v31 = Instance.new("Animation")
        v31.AnimationId = vu15
        local v32 = Instance.new("Animation")
        v32.AnimationId = vu16
        vu21 = vu30:LoadAnimation(v31)
        vu22 = vu30:LoadAnimation(v32)
        vu22:AdjustSpeed(vu23)
        vu21:Play()
        vu30.JumpPower = 0
        vu30.WalkSpeed = 8
        local vu33 = nil
        vu33 = vu2.Heartbeat:Connect(function()
            if vu18 and (vu30 and vu30.Health > 0) then
                if vu30.MoveDirection.Magnitude > 0.1 then
                    if vu21 and vu21.IsPlaying then vu21:Stop() end
                    if vu22 and not vu22.IsPlaying then vu22:Play() end
                else
                    if vu22 and vu22.IsPlaying then vu22:Stop() end
                    if vu21 and not vu21.IsPlaying then vu21:Play() end
                end
            else
                vu33:Disconnect()
            end
        end)
        if vu9 then vu9.Visible = false end
    end
end

local function vu36()
    if vu18 then
        local v35 = vu28()
        if v35 then
            vu18 = false
            vu17.Image = vu13
            vu29()
            v35.WalkSpeed = vu19
            v35.JumpPower = vu20
            if vu9 then vu9.Visible = true end
        end
    end
end

local function vu37()
    if vu18 then vu36() else vu34() end
end

vu17.MouseButton1Click:Connect(vu37)

vu3.InputBegan:Connect(function(p38, p39)
    if not p39 then
        if p38.KeyCode == Enum.KeyCode.LeftControl or p38.KeyCode == Enum.KeyCode.C then
            vu37()
        end
    end
end)

vu3.JumpRequest:Connect(function()
    if not vu18 then end
end)

vu3.LastInputTypeChanged:Connect(function(_)
    vu26()
end)

vu4.CharacterAdded:Connect(function(p40)
    vu18 = false
    vu17.Image = vu13
    vu29()
    if vu9 then vu9.Visible = true end
    p40:WaitForChild("Humanoid")
    task.delay(0.5, function() vu26() end)
end)

vu4.CharacterRemoving:Connect(function()
    vu29()
end)

v6.ResetOnSpawn = false
vu26()

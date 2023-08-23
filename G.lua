local core = game:GetService("CoreGui")
if not game:IsLoaded() then
    local mes = Instance.new("Message")
    mes.Parent = core
    mes.Text = "Hello Hub is Waiting for the Game to load..."
    game.Loaded:Wait()
    mes:Destroy()
end

task.wait()

local Time = tick()
local player = game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener
local store = game:GetService("ReplicatedStorage").Lib
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
local speaker = game:GetService("Players").LocalPlayer
speeds = 3.5
nowe = false

local HelloHub = loadstring(game:HttpGet("https://pastebin.com/raw/TFKcNhTp"))()
local Win = HelloHub.CreateWin("Eternal Bob")

local Main = Win:NewTab("Main")
local Tel = Win:NewTab("Teleports")

Main:NewLabel("Game")
Main:NewToggle(
    "Auto Hit Bob",
    function(bool)
        autoHit = bool
        if bool == true then
            while autoHit do
                task.wait(.1)
                local Event = game:GetService("Workspace").bobBoss.DamageEvent
                Event:FireServer()
            end
        end
    end
)

Main:NewToggle(
    "Auto Click Tycoon (Laggy on Mobile)",
    function(bool)
        autoClick = bool
        if bool == true then
            while autoClick do
                task.wait(.1)
                for i, v in pairs(workspace:GetDescendants()) do
                    if v.Name == "Click" and v:FindFirstChild("ClickDetector") then
                        fireclickdetector(v.ClickDetector)
                    end
                end
            end
        end
    end
)

Main:NewLabel("Graphics")
Main:NewButton(
    "FPS Booster",
    function()
        local decalsyeeted = true
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            end
        end
    end
)

Main:NewButton(
    "FPS Booster V2",
    function()
        local ToDisable = {
            Textures = true,
            VisualEffects = true,
            Parts = true,
            Particles = true,
            Sky = true
        }

        local ToEnable = {
            FullBright = false
        }

        local Stuff = {}

        for _, v in next, game:GetDescendants() do
            if ToDisable.Parts then
                if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
                    v.Material = Enum.Material.SmoothPlastic
                    table.insert(Stuff, 1, v)
                end
            end

            if ToDisable.Particles then
                if
                    v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or
                        v:IsA("Fire")
                 then
                    v.Enabled = false
                    table.insert(Stuff, 1, v)
                end
            end

            if ToDisable.VisualEffects then
                if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
                    v.Enabled = false
                    table.insert(Stuff, 1, v)
                end
            end

            if ToDisable.Textures then
                if v:IsA("Decal") or v:IsA("Texture") then
                    v.Texture = ""
                    table.insert(Stuff, 1, v)
                end
            end

            if ToDisable.Sky then
                if v:IsA("Sky") then
                    v.Parent = nil
                    table.insert(Stuff, 1, v)
                end
            end
        end

        game:GetService("TestService"):Message(
            "Effects Disabler Script : Successfully disabled " .. #Stuff .. " assets / effects. Settings :"
        )

        for i, v in next, ToDisable do
            print(tostring(i) .. ": " .. tostring(v))
        end

        if ToEnable.FullBright then
            local Lighting = game:GetService("Lighting")

            Lighting.FogColor = Color3.fromRGB(255, 255, 255)
            Lighting.FogEnd = math.huge
            Lighting.FogStart = math.huge
            Lighting.Ambient = Color3.fromRGB(255, 255, 255)
            Lighting.Brightness = 5
            Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
            Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
            Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
            Lighting.Outlines = true
        end
    end
)

Main:NewButton(
    "FPS Booster V3 (Can Break Glove but Much Better!)",
    function()
        _G.Settings = {
            Players = {
                ["Ignore Me"] = true, -- Ignore your Character
                ["Ignore Others"] = true -- Ignore other Characters
            },
            Meshes = {
                Destroy = false, -- Destroy Meshes
                LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
            },
            Images = {
                Invisible = true, -- Invisible Images
                LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
                Destroy = false -- Destroy Images
            },
            Other = {
                ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
                ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
                ["No Explosions"] = true, -- Makes Explosion's invisible
                ["No Clothes"] = true, -- Removes Clothing from the game
                ["Low Water Graphics"] = true, -- Removes Water Quality
                ["No Shadows"] = true, -- Remove Shadows
                ["Low Rendering"] = true, -- Lower Rendering
                ["Low Quality Parts"] = true -- Lower quality parts
            }
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))(

        )
    end
)

Main:NewLabel("Details")
Main:NewButton(
    "Remove Small Meteors (Visual Effects Only)",
    function()
        if player:FindFirstChild("SmallMeteorVFX") then
            require(player.SmallMeteorVFX:Destroy())
        end
    end
)

Main:NewButton(
    "Remove Big Meteors Explosions Impact",
    function()
        if player:FindFirstChild("BigExplosion") then
            require(player.BigExplosion:Destroy())
        end
    end
)

Main:NewButton(
    "Remove Lightning Strikes (Phase 3)",
    function()
        if store:FindFirstChild("LightningBolt") then
            require(store.LightningBolt:Destroy())
        end
    end
)

Main:NewLabel("Tools")
Main:NewButton(
    "Teleport Tool",
    function()
        tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Teleport Tool"
        tool.Activated:Connect(
            function()
                local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
                pos = CFrame.new(pos.X, pos.Y, pos.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
            end
        )
        tool.Parent = game.Players.LocalPlayer.Backpack
    end
)

Main:NewButton(
    "Fly (Press Again to Turn Off)",
    function()
        if nowe == true then
            nowe = false

            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
            speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
        else
            nowe = true

            for i = 1, speeds do
                spawn(
                    function()
                        local hb = game:GetService("RunService").Heartbeat

                        tpwalking = true
                        local chr = game.Players.LocalPlayer.Character
                        local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                        while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                            if hum.MoveDirection.Magnitude > 0 then
                                chr:TranslateBy(hum.MoveDirection)
                            end
                        end
                    end
                )
            end
            game.Players.LocalPlayer.Character.Animate.Disabled = true
            local Char = game.Players.LocalPlayer.Character
            local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

            for i, v in next, Hum:GetPlayingAnimationTracks() do
                v:AdjustSpeed(0)
            end
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false)
            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
            speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
        end

        if
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType ==
                Enum.HumanoidRigType.R6
         then
            local plr = game.Players.LocalPlayer
            local torso = plr.Character.Torso
            local flying = true
            local deb = true
            local ctrl = {f = 0, b = 0, l = 0, r = 0}
            local lastctrl = {f = 0, b = 0, l = 0, r = 0}
            local maxspeed = 50
            local speed = 0

            local bg = Instance.new("BodyGyro", torso)
            bg.P = 9e4
            bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            bg.cframe = torso.CFrame
            local bv = Instance.new("BodyVelocity", torso)
            bv.velocity = Vector3.new(0, 0.1, 0)
            bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
            if nowe == true then
                plr.Character.Humanoid.PlatformStand = true
            end
            while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
                game:GetService("RunService").RenderStepped:Wait()

                if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                    speed = speed + .5 + (speed / maxspeed)
                    if speed > maxspeed then
                        speed = maxspeed
                    end
                elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                    speed = speed - 1
                    if speed < 0 then
                        speed = 0
                    end
                end
                if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                    bv.velocity =
                        ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f + ctrl.b)) +
                        ((game.Workspace.CurrentCamera.CoordinateFrame *
                            CFrame.new(ctrl.l + ctrl.r, (ctrl.f + ctrl.b) * .2, 0).p) -
                            game.Workspace.CurrentCamera.CoordinateFrame.p)) *
                        speed
                    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                    bv.velocity =
                        ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f + lastctrl.b)) +
                        ((game.Workspace.CurrentCamera.CoordinateFrame *
                            CFrame.new(lastctrl.l + lastctrl.r, (lastctrl.f + lastctrl.b) * .2, 0).p) -
                            game.Workspace.CurrentCamera.CoordinateFrame.p)) *
                        speed
                else
                    bv.velocity = Vector3.new(0, 0, 0)
                end
                --	game.Players.LocalPlayer.Character.Animate.Disabled = true
                bg.cframe =
                    game.Workspace.CurrentCamera.CoordinateFrame *
                    CFrame.Angles(-math.rad((ctrl.f + ctrl.b) * 50 * speed / maxspeed), 0, 0)
            end
            ctrl = {f = 0, b = 0, l = 0, r = 0}
            lastctrl = {f = 0, b = 0, l = 0, r = 0}
            speed = 0
            bg:Destroy()
            bv:Destroy()
            plr.Character.Humanoid.PlatformStand = false
            game.Players.LocalPlayer.Character.Animate.Disabled = false
            tpwalking = false
        else
            local plr = game.Players.LocalPlayer
            local UpperTorso = plr.Character.UpperTorso
            local flying = true
            local deb = true
            local ctrl = {f = 0, b = 0, l = 0, r = 0}
            local lastctrl = {f = 0, b = 0, l = 0, r = 0}
            local maxspeed = 50
            local speed = 0

            local bg = Instance.new("BodyGyro", UpperTorso)
            bg.P = 9e4
            bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            bg.cframe = UpperTorso.CFrame
            local bv = Instance.new("BodyVelocity", UpperTorso)
            bv.velocity = Vector3.new(0, 0.1, 0)
            bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
            if nowe == true then
                plr.Character.Humanoid.PlatformStand = true
            end
            while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
                wait()

                if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                    speed = speed + .5 + (speed / maxspeed)
                    if speed > maxspeed then
                        speed = maxspeed
                    end
                elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                    speed = speed - 1
                    if speed < 0 then
                        speed = 0
                    end
                end
                if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                    bv.velocity =
                        ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f + ctrl.b)) +
                        ((game.Workspace.CurrentCamera.CoordinateFrame *
                            CFrame.new(ctrl.l + ctrl.r, (ctrl.f + ctrl.b) * .2, 0).p) -
                            game.Workspace.CurrentCamera.CoordinateFrame.p)) *
                        speed
                    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                    bv.velocity =
                        ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f + lastctrl.b)) +
                        ((game.Workspace.CurrentCamera.CoordinateFrame *
                            CFrame.new(lastctrl.l + lastctrl.r, (lastctrl.f + lastctrl.b) * .2, 0).p) -
                            game.Workspace.CurrentCamera.CoordinateFrame.p)) *
                        speed
                else
                    bv.velocity = Vector3.new(0, 0, 0)
                end

                bg.cframe =
                    game.Workspace.CurrentCamera.CoordinateFrame *
                    CFrame.Angles(-math.rad((ctrl.f + ctrl.b) * 50 * speed / maxspeed), 0, 0)
            end
            ctrl = {f = 0, b = 0, l = 0, r = 0}
            lastctrl = {f = 0, b = 0, l = 0, r = 0}
            speed = 0
            bg:Destroy()
            bv:Destroy()
            plr.Character.Humanoid.PlatformStand = false
            game.Players.LocalPlayer.Character.Animate.Disabled = false
            tpwalking = false
        end
    end
)

Main:NewLabel("More Features Coming Soon!")

Tel:NewLabel("Modes")
Tel:NewButton(
    "TP to Slap Battles",
    function()
        game:GetService("TeleportService"):Teleport(6403373529)
        wait(.1)
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "Button Toggled!",
                Text = "Teleporting to Normal Gamemode...",
                Duration = 8
            }
        )
    end
)

Tel:NewButton(
    "TP to Killstreak Only",
    function()
        game:GetService("TeleportService"):Teleport(11520107397)
        wait(.1)
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "Button Toggled!",
                Text = "Teleporting to Killstreak Only Gamemode...",
                Duration = 8
            }
        )
    end
)

Tel:NewButton(
    "TP to No Oneshot",
    function()
        game:GetService("TeleportService"):Teleport(9015014224)
        wait(.1)
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "Button Toggled!",
                Text = "Teleporting to No Oneshot Gamemode...",
                Duration = 8
            }
        )
    end
)

Tel:NewButton(
    "TP to Slap Royale",
    function()
        game:GetService("TeleportService"):Teleport(9426795465)
        wait(.1)
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "Button Toggled!",
                Text = "Teleporting to Slap Royale...",
                Duration = 8
            }
        )
    end
)

wait(.1)
game.StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Script Loaded!",
        Text = "Thanks for using our Script!!",
        Duration = 10
    }
)

print("Hello Hub Took " .. tick() - Time .. " Seconds To Fully Load! ")

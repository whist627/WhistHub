if not game:IsLoaded() then
    game.Loaded:Wait()
end

task.wait()

if game.CoreGui:FindFirstChild("HubGui") then
    game.CoreGui["HubGui"]:Destroy()
end

local GUI = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local ui = Instance.new("UICorner")
local label = Instance.new("TextLabel")
local label1 = Instance.new("TextLabel")
local label2 = Instance.new("TextLabel")
local label3 = Instance.new("TextLabel")
local label4 = Instance.new("TextLabel")
local label5 = Instance.new("TextLabel")
local label6 = Instance.new("TextLabel")
local label7 = Instance.new("TextLabel")
local label8 = Instance.new("TextLabel")
local label9 = Instance.new("TextLabel")
local label10 = Instance.new("TextLabel")
local label11 = Instance.new("TextLabel")
local label12 = Instance.new("TextLabel")
local label13 = Instance.new("TextLabel")
local label14 = Instance.new("TextLabel")
local label15 = Instance.new("TextLabel")
local label16 = Instance.new("TextLabel")
local label17 = Instance.new("TextLabel")
local label18 = Instance.new("TextLabel")
local label19 = Instance.new("TextLabel")
local label20 = Instance.new("TextLabel")

GUI.Name = "HubGui"
GUI.Parent = game.CoreGui
GUI.ResetOnSpawn = false

frame.Parent = GUI
frame.Size = UDim2.new(0, 0, 0, 0)
frame.Position = UDim2.new(0.5, 0, 0.5, -50)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)

ui.Parent = frame
ui.CornerRadius = UDim.new(0, 20)

label.Parent = frame
label.Size = UDim2.new(1, 0, 0, 45)
label.Position = UDim2.new(0, 0, 0, 10)
label.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label.BackgroundTransparency = 1
label.Text = "Welcome to..."
label.TextTransparency = 1
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.FredokaOne
label.TextScaled = true
label.TextWrapped = true

label1.Parent = frame
label1.Size = UDim2.new(1, 0, 0, 45)
label1.Position = UDim2.new(0, 0, 0, 50)
label1.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label1.BackgroundTransparency = 1
label1.Text = "Hello Hub!"
label1.TextTransparency = 1
label1.TextColor3 = Color3.fromRGB(255, 255, 255)
label1.Font = Enum.Font.FredokaOne
label1.TextScaled = true
label1.TextWrapped = true

label2.Parent = frame
label2.Size = UDim2.new(1, 0, 0, 30)
label2.Position = UDim2.new(0, 0, 0, 130)
label2.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label2.BackgroundTransparency = 1
label2.Text = "Scanning Game."
label2.TextTransparency = 1
label2.TextColor3 = Color3.fromRGB(255, 255, 255)
label2.Font = Enum.Font.FredokaOne
label2.TextScaled = true
label2.TextWrapped = true

label3.Parent = frame
label3.Size = UDim2.new(1, 0, 0, 30)
label3.Position = UDim2.new(0, 0, 0, 130)
label3.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label3.BackgroundTransparency = 1
label3.Text = "Loading Script."
label3.TextTransparency = 1
label3.TextColor3 = Color3.fromRGB(255, 255, 255)
label3.Font = Enum.Font.FredokaOne
label3.TextScaled = true
label3.TextWrapped = true

label4.Parent = frame
label4.Size = UDim2.new(1, 0, 0, 35)
label4.Position = UDim2.new(0, 0, 0, 130)
label4.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label4.BackgroundTransparency = 1
label4.Text = "Game Detected! Slap Battles"
label4.TextTransparency = 1
label4.TextColor3 = Color3.fromRGB(255, 255, 255)
label4.Font = Enum.Font.FredokaOne
label4.TextScaled = true
label4.TextWrapped = true

label5.Parent = frame
label5.Size = UDim2.new(1, 0, 0, 35)
label5.Position = UDim2.new(0, 0, 0, 130)
label5.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label5.BackgroundTransparency = 1
label5.Text = "Game Detected! Slap Royale"
label5.TextTransparency = 1
label5.TextColor3 = Color3.fromRGB(255, 255, 255)
label5.Font = Enum.Font.FredokaOne
label5.TextScaled = true
label5.TextWrapped = true

label6.Parent = frame
label6.Size = UDim2.new(1, 0, 0, 35)
label6.Position = UDim2.new(0, 0, 0, 130)
label6.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label6.BackgroundTransparency = 1
label6.Text = "Game Detected! Elude Maze"
label6.TextTransparency = 1
label6.TextColor3 = Color3.fromRGB(255, 255, 255)
label6.Font = Enum.Font.FredokaOne
label6.TextScaled = true
label6.TextWrapped = true

label7.Parent = frame
label7.Size = UDim2.new(1, 0, 0, 35)
label7.Position = UDim2.new(0, 0, 0, 130)
label7.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label7.BackgroundTransparency = 1
label7.Text = "Game Detected! Bob Bossfight"
label7.TextTransparency = 1
label7.TextColor3 = Color3.fromRGB(255, 255, 255)
label7.Font = Enum.Font.FredokaOne
label7.TextScaled = true
label7.TextWrapped = true

label8.Parent = frame
label8.Size = UDim2.new(1, 0, 0, 35)
label8.Position = UDim2.new(0, 0, 0, 130)
label8.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label8.BackgroundTransparency = 1
label8.Text = "Script Loaded!"
label8.TextTransparency = 1
label8.TextColor3 = Color3.fromRGB(255, 255, 255)
label8.Font = Enum.Font.FredokaOne
label8.TextScaled = true
label8.TextWrapped = true

label9.Parent = frame
label9.Size = UDim2.new(1, 0, 0, 35)
label9.Position = UDim2.new(0, 0, 0, 130)
label9.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label9.BackgroundTransparency = 1
label9.Text = "Game Not Supported! Sorry :("
label9.TextTransparency = 1
label9.TextColor3 = Color3.fromRGB(255, 255, 255)
label9.Font = Enum.Font.FredokaOne
label9.TextScaled = true
label9.TextWrapped = true

label10.Parent = frame
label10.Size = UDim2.new(1, 0, 0, 35)
label10.Position = UDim2.new(0, 0, 0, 130)
label10.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label10.BackgroundTransparency = 1
label10.Text = "Thank you for using! Enjoy :)"
label10.TextTransparency = 1
label10.TextColor3 = Color3.fromRGB(255, 255, 255)
label10.Font = Enum.Font.FredokaOne
label10.TextScaled = true
label10.TextWrapped = true

label11.Parent = frame
label11.Size = UDim2.new(1, 0, 0, 30)
label11.Position = UDim2.new(0, 0, 0, 130)
label11.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label11.BackgroundTransparency = 1
label11.Text = "Scanning Game.."
label11.TextTransparency = 1
label11.TextColor3 = Color3.fromRGB(255, 255, 255)
label11.Font = Enum.Font.FredokaOne
label11.TextScaled = true
label11.TextWrapped = true

label12.Parent = frame
label12.Size = UDim2.new(1, 0, 0, 30)
label12.Position = UDim2.new(0, 0, 0, 130)
label12.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label12.BackgroundTransparency = 1
label12.Text = "Scanning Game..."
label12.TextTransparency = 1
label12.TextColor3 = Color3.fromRGB(255, 255, 255)
label12.Font = Enum.Font.FredokaOne
label12.TextScaled = true
label12.TextWrapped = true

label13.Parent = frame
label13.Size = UDim2.new(1, 0, 0, 30)
label13.Position = UDim2.new(0, 0, 0, 130)
label13.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label13.BackgroundTransparency = 1
label13.Text = "Loading Script.."
label13.TextTransparency = 1
label13.TextColor3 = Color3.fromRGB(255, 255, 255)
label13.Font = Enum.Font.FredokaOne
label13.TextScaled = true
label13.TextWrapped = true

label14.Parent = frame
label14.Size = UDim2.new(1, 0, 0, 30)
label14.Position = UDim2.new(0, 0, 0, 130)
label14.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label14.BackgroundTransparency = 1
label14.Text = "Loading Script..."
label14.TextTransparency = 1
label14.TextColor3 = Color3.fromRGB(255, 255, 255)
label14.Font = Enum.Font.FredokaOne
label14.TextScaled = true
label14.TextWrapped = true

label15.Parent = frame
label15.Size = UDim2.new(1, 0, 0, 35)
label15.Position = UDim2.new(0, 0, 0, 130)
label15.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label15.BackgroundTransparency = 1
label15.Text = "Kicking in...5"
label15.TextTransparency = 1
label15.TextColor3 = Color3.fromRGB(255, 255, 255)
label15.Font = Enum.Font.FredokaOne
label15.TextScaled = true
label15.TextWrapped = true

label16.Parent = frame
label16.Size = UDim2.new(1, 0, 0, 35)
label16.Position = UDim2.new(0, 0, 0, 130)
label16.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label16.BackgroundTransparency = 1
label16.Text = "Kicking in...4"
label16.TextTransparency = 1
label16.TextColor3 = Color3.fromRGB(255, 255, 255)
label16.Font = Enum.Font.FredokaOne
label16.TextScaled = true
label16.TextWrapped = true

label17.Parent = frame
label17.Size = UDim2.new(1, 0, 0, 35)
label17.Position = UDim2.new(0, 0, 0, 130)
label17.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label17.BackgroundTransparency = 1
label17.Text = "Kicking in...3"
label17.TextTransparency = 1
label17.TextColor3 = Color3.fromRGB(255, 255, 255)
label17.Font = Enum.Font.FredokaOne
label17.TextScaled = true
label17.TextWrapped = true

label18.Parent = frame
label18.Size = UDim2.new(1, 0, 0, 35)
label18.Position = UDim2.new(0, 0, 0, 130)
label18.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label18.BackgroundTransparency = 1
label18.Text = "Kicking in...2"
label18.TextTransparency = 1
label18.TextColor3 = Color3.fromRGB(255, 255, 255)
label18.Font = Enum.Font.FredokaOne
label18.TextScaled = true
label18.TextWrapped = true

label19.Parent = frame
label19.Size = UDim2.new(1, 0, 0, 35)
label19.Position = UDim2.new(0, 0, 0, 130)
label19.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label19.BackgroundTransparency = 1
label19.Text = "Kicking in...1"
label19.TextTransparency = 1
label19.TextColor3 = Color3.fromRGB(255, 255, 255)
label19.Font = Enum.Font.FredokaOne
label19.TextScaled = true
label19.TextWrapped = true

label20.Parent = frame
label20.Size = UDim2.new(1, 0, 0, 35)
label20.Position = UDim2.new(0, 0, 0, 130)
label20.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
label20.BackgroundTransparency = 1
label20.Text = "Kicked!"
label20.TextTransparency = 1
label20.TextColor3 = Color3.fromRGB(255, 255, 255)
label20.Font = Enum.Font.FredokaOne
label20.TextScaled = true
label20.TextWrapped = true

local tweenService = game:GetService("TweenService")
local time = 1
local time1 = 0.01

local tween = tweenService:Create(label, TweenInfo.new(time), {TextTransparency = 0})
local tween1 = tweenService:Create(label1, TweenInfo.new(time), {TextTransparency = 0})
local tween2 = tweenService:Create(label2, TweenInfo.new(time), {TextTransparency = 0})
local tween3 = tweenService:Create(label11, TweenInfo.new(time1), {TextTransparency = 0})
local tween4 = tweenService:Create(label12, TweenInfo.new(time1), {TextTransparency = 0})
local tween5 = tweenService:Create(label12, TweenInfo.new(time), {TextTransparency = 1})
local tween6 = tweenService:Create(label4, TweenInfo.new(time), {TextTransparency = 0})
local tween7 = tweenService:Create(label5, TweenInfo.new(time), {TextTransparency = 0})
local tween8 = tweenService:Create(label6, TweenInfo.new(time), {TextTransparency = 0})
local tween9 = tweenService:Create(label7, TweenInfo.new(time), {TextTransparency = 0})
local tween10 = tweenService:Create(label3, TweenInfo.new(time), {TextTransparency = 0})
local tween11 = tweenService:Create(label3, TweenInfo.new(time1), {TextTransparency = 0})
local tween12 = tweenService:Create(label4, TweenInfo.new(time), {TextTransparency = 1})
local tween13 = tweenService:Create(label5, TweenInfo.new(time), {TextTransparency = 1})
local tween14 = tweenService:Create(label6, TweenInfo.new(time), {TextTransparency = 1})
local tween15 = tweenService:Create(label7, TweenInfo.new(time), {TextTransparency = 1})
local tween16 = tweenService:Create(label14, TweenInfo.new(time), {TextTransparency = 1})
local tween17 = tweenService:Create(label8, TweenInfo.new(time), {TextTransparency = 0})
local tween18 = tweenService:Create(label8, TweenInfo.new(time), {TextTransparency = 1})
local tween19 = tweenService:Create(label, TweenInfo.new(time), {TextTransparency = 1})
local tween20 = tweenService:Create(label1, TweenInfo.new(time), {TextTransparency = 1})
local tween21 = tweenService:Create(label9, TweenInfo.new(time), {TextTransparency = 0})
local tween22 = tweenService:Create(label9, TweenInfo.new(time), {TextTransparency = 1})
local tween23 = tweenService:Create(label10, TweenInfo.new(time), {TextTransparency = 0})
local tween24 = tweenService:Create(label10, TweenInfo.new(time), {TextTransparency = 1})
local tween25 = tweenService:Create(label2, TweenInfo.new(time1), {TextTransparency = 0})
local tween26 = tweenService:Create(label2, TweenInfo.new(time1), {TextTransparency = 1})
local tween27 = tweenService:Create(label11, TweenInfo.new(time1), {TextTransparency = 1})
local tween28 = tweenService:Create(label12, TweenInfo.new(time1), {TextTransparency = 1})
local tween29 = tweenService:Create(label13, TweenInfo.new(time1), {TextTransparency = 0})
local tween30 = tweenService:Create(label14, TweenInfo.new(time1), {TextTransparency = 0})
local tween31 = tweenService:Create(label3, TweenInfo.new(time1), {TextTransparency = 1})
local tween32 = tweenService:Create(label13, TweenInfo.new(time1), {TextTransparency = 1})
local tween33 = tweenService:Create(label14, TweenInfo.new(time1), {TextTransparency = 1})
local tween34 = tweenService:Create(label15, TweenInfo.new(time), {TextTransparency = 0})
local tween35 = tweenService:Create(label16, TweenInfo.new(time1), {TextTransparency = 0})
local tween36 = tweenService:Create(label17, TweenInfo.new(time1), {TextTransparency = 0})
local tween37 = tweenService:Create(label18, TweenInfo.new(time1), {TextTransparency = 0})
local tween38 = tweenService:Create(label19, TweenInfo.new(time1), {TextTransparency = 0})
local tween39 = tweenService:Create(label15, TweenInfo.new(time1), {TextTransparency = 1})
local tween40 = tweenService:Create(label16, TweenInfo.new(time1), {TextTransparency = 1})
local tween41 = tweenService:Create(label17, TweenInfo.new(time1), {TextTransparency = 1})
local tween42 = tweenService:Create(label18, TweenInfo.new(time1), {TextTransparency = 1})
local tween43 = tweenService:Create(label19, TweenInfo.new(time1), {TextTransparency = 1})
local tween44 = tweenService:Create(label20, TweenInfo.new(time1), {TextTransparency = 0})
local tween45 = tweenService:Create(label20, TweenInfo.new(time), {TextTransparency = 1})

wait(1)

frame:TweenSizeAndPosition(
    UDim2.new(0, 520, 0, 10),
    UDim2.new(0.5, -250, 0.5, -50),
    Enum.EasingDirection.Out,
    Enum.EasingStyle.Sine,
    1,
    true,
    nil
)

task.wait(.8)

frame:TweenSizeAndPosition(
    UDim2.new(0, 520, 0, 250),
    UDim2.new(0.5, -250, 0.5, -135),
    Enum.EasingDirection.Out,
    Enum.EasingStyle.Sine,
    1,
    true,
    nil
)

task.wait(1.2)

tween:Play()
task.wait(1)
tween1:Play()
task.wait(2)
tween2:Play()
task.wait(.8)
tween26:Play()
tween3:Play()
task.wait(.8)
tween27:Play()
tween4:Play()
task.wait(.8)
tween28:Play()
tween25:Play()
task.wait(.8)
tween26:Play()
tween3:Play()
task.wait(.8)
tween27:Play()
tween4:Play()
task.wait(.8)
tween28:Play()
tween25:Play()
task.wait(.8)
tween26:Play()
tween3:Play()
task.wait(.8)
tween27:Play()
tween4:Play()
task.wait(.8)
tween28:Play()
tween25:Play()
task.wait(.8)
tween26:Play()
tween3:Play()
task.wait(.8)
tween27:Play()
tween4:Play()
task.wait(1)
tween5:Play()
task.wait(1)

local gameid = game.PlaceId

if (gameid == 11520107397 or gameid == 9015014224 or gameid == 6403373529) then
    print("Game Detected! Slap Battles Script!")
    tween6:Play()
    task.wait(2)
    tween12:Play()
    task.wait(1)
    tween10:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(.8)
    tween33:Play()
    tween11:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(.8)
    tween33:Play()
    tween11:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(.8)
    loadstring(
        game:HttpGet(
            "https://raw.githubusercontent.com/LyricArc72030/HelloHub/main/Scripts/Slap-Battles.lua",
            true
        )
    )()
    tween33:Play()
    tween11:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(1)
    tween16:Play()
    task.wait(1)
    tween17:Play()
    task.wait(1)
    tween18:Play()
    task.wait(.5)
    tween23:Play()
    task.wait(2)
    tween24:Play()
    tween19:Play()
    tween20:Play()
    task.wait(1)
    frame:TweenPosition(UDim2.new(0.5, -250, 1.5, -135), Enum.EasingDirection.In, Enum.EasingStyle.Back, 2, true, nil)
    task.wait(2)
    game.CoreGui["HubGui"]:Destroy()
elseif (gameid == 9431156611) then
    print("Game Detected! Slap Royale Script!")
    tween7:Play()
    task.wait(2)
    tween13:Play()
    task.wait(1)
    tween10:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(.8)
    tween33:Play()
    tween11:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(.8)
    tween33:Play()
    tween11:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(.8)
    loadstring(
        game:HttpGet(
            "https://raw.githubusercontent.com/LyricArc72030/Slap-Battles-Scripts/main/Rlap-Soyale-Hub.lua",
            true
        )
    )()
    tween33:Play()
    tween11:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(1)
    tween16:Play()
    task.wait(1)
    tween17:Play()
    task.wait(1)
    tween18:Play()
    task.wait(.5)
    tween23:Play()
    task.wait(2)
    tween24:Play()
    tween19:Play()
    tween20:Play()
    task.wait(1)
    frame:TweenPosition(UDim2.new(0.5, -250, 1.5, -135), Enum.EasingDirection.In, Enum.EasingStyle.Back, 2, true, nil)
    task.wait(2)
    game.CoreGui["HubGui"]:Destroy()
elseif (gameid == 11828384869) then
    print("Game Detected! Maze Elude Script!")
    tween8:Play()
    task.wait(2)
    tween14:Play()
    task.wait(1)
    tween10:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(.8)
    tween33:Play()
    tween11:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(.8)
    tween33:Play()
    tween11:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LyricArc72030/Slap-Battles-Scripts/main/Maze.lua", true))(

    )
    tween33:Play()
    tween11:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(1)
    tween16:Play()
    task.wait(1)
    tween17:Play()
    task.wait(1)
    tween18:Play()
    task.wait(.5)
    tween23:Play()
    task.wait(2)
    tween24:Play()
    tween19:Play()
    tween20:Play()
    task.wait(1)
    frame:TweenPosition(UDim2.new(0.5, -250, 1.5, -135), Enum.EasingDirection.In, Enum.EasingStyle.Back, 2, true, nil)
    task.wait(2)
    game.CoreGui["HubGui"]:Destroy()
elseif (gameid == 13833961666) then
    print("Game Detected! Bob Boss Script!")
    tween9:Play()
    task.wait(2)
    tween15:Play()
    task.wait(1)
    tween10:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(.8)
    tween33:Play()
    tween11:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(.8)
    tween33:Play()
    tween11:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LyricArc72030/Slap-Battles-Scripts/main/Bob.lua", true))(

    )
    tween33:Play()
    tween11:Play()
    task.wait(.8)
    tween31:Play()
    tween29:Play()
    task.wait(.8)
    tween32:Play()
    tween30:Play()
    task.wait(1)
    tween16:Play()
    task.wait(1)
    tween17:Play()
    task.wait(1)
    tween18:Play()
    task.wait(.5)
    tween23:Play()
    task.wait(2)
    tween24:Play()
    tween19:Play()
    tween20:Play()
    task.wait(1)
    frame:TweenPosition(UDim2.new(0.5, -250, 1.5, -135), Enum.EasingDirection.In, Enum.EasingStyle.Back, 2, true, nil)
    task.wait(2)
    game.CoreGui["HubGui"]:Destroy()
else
    print("Game Not Supported!")
    tween21:Play()
    task.wait(2)
    tween22:Play()
    task.wait(1.5)
    tween34:Play()
    task.wait(1.1)
    tween39:Play()
    tween35:Play()
    task.wait(1.1)
    tween40:Play()
    tween36:Play()
    task.wait(1.1)
    tween41:Play()
    tween37:Play()
    task.wait(1.1)
    tween42:Play()
    tween38:Play()
    task.wait(1.1)
    game.Players.LocalPlayer:Kick("Game not Supported! :(")
    tween43:Play()
    tween44:Play()
    task.wait(2)
    tween45:Play()
    tween19:Play()
    tween20:Play()
    task.wait(1)
    frame:TweenPosition(UDim2.new(0.5, -250, 1.5, -135), Enum.EasingDirection.In, Enum.EasingStyle.Back, 2, true, nil)
    task.wait(2)
    game.CoreGui["HubGui"]:Destroy()
end

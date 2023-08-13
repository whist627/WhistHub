local HelloHub = {}
local UIS = game:GetService("UserInputService")
local tween = game:GetService("TweenService")
local viewport = workspace.CurrentCamera.ViewportSize
local coreGui = game:GetService("CoreGui")
local tweenInfo = TweenInfo.new

function HelloHub:MakeDraggable(frame)
    local drag = false
    local dragInput, mousePos, framePos

    frame.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                drag = true
                mousePos = input.Position
                framePos = frame.Position
                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            drag = false
                        end
                    end
                )
            end
        end
    )

    frame.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
             then
                dragInput = input
            end
        end
    )

    UIS.InputChanged:Connect(
        function(input)
            if input == dragInput and drag then
                local delta = input.Position - mousePos
                frame.Position =
                    UDim2.new(
                    framePos.X.Scale,
                    framePos.X.Offset + delta.X,
                    framePos.Y.Scale,
                    framePos.Y.Offset + delta.Y
                )
            end
        end
    )
end

local RanName =
    tostring(math.random(1, 100)) ..
    tostring(math.random(1, 50)) ..
        tostring(math.random(1, 100)) ..
            tostring(math.random(1, 50)) ..
                tostring(math.random(1, 100)) ..
                    tostring(math.random(1, 50)) ..
                        tostring(math.random(1, 100)) ..
                            tostring(math.random(1, 50)) ..
                                tostring(math.random(1, 100)) ..
                                    tostring(math.random(1, 50)) ..
                                        tostring(math.random(1, 100)) ..
                                            tostring(math.random(1, 50)) ..
                                                tostring(math.random(1, 100)) ..
                                                    tostring(math.random(1, 50)) ..
                                                        tostring(math.random(1, 100)) ..
                                                            tostring(math.random(1, 50)) ..
                                                                tostring(math.random(1, 100))

function HelloHub.CreateWin(title)
    title = title or "Title"
    local tb = true
    local currenttab = ""
    local Hello = Instance.new("ScreenGui", coreGui)
    local MainFrame = Instance.new("Frame", Hello)
    local MainCorner = Instance.new("UICorner", MainFrame)
    local ShadowHolder = Instance.new("Frame", MainFrame)
    local Shadow = Instance.new("ImageLabel", ShadowHolder)
    local UITitle = Instance.new("TextLabel", MainFrame)
    local Title = Instance.new("TextLabel", MainFrame)
    local CloseBtn = Instance.new("ImageButton", MainFrame)
    local TabHolder = Instance.new("Frame", MainFrame)
    local TabList = Instance.new("UIListLayout", TabHolder)
    local TabPad = Instance.new("UIPadding", TabHolder)
    local ContentHolder = Instance.new("Frame", MainFrame)

    Hello.Name = RanName
    Hello.ResetOnSpawn = false
    Hello.IgnoreGuiInset = true

    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(0, 530, 0, 300)
    MainFrame.Position =
        UDim2.fromOffset(
        (viewport.X / 2) - (MainFrame.Size.X.Offset / 2),
        (viewport.Y / 2) - (MainFrame.Size.Y.Offset / 2)
    )
    MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    MainFrame.Active = true
    MainFrame.ClipsDescendants = true
    MainCorner.CornerRadius = UDim.new(0, 6)

    ShadowHolder.Name = "ShadowHolder"
    ShadowHolder.Size = UDim2.new(1, 0, 1, 0)
    ShadowHolder.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
    ShadowHolder.BackgroundTransparency = 1
    ShadowHolder.ZIndex = -1

    Shadow.Name = "Shadow"
    Shadow.Size = UDim2.new(1, 159.5, 1, 120)
    Shadow.Position = UDim2.new(.5, 0, .5, 0)
    Shadow.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
    Shadow.BackgroundTransparency = 1
    Shadow.AnchorPoint = Vector2.new(.5, .5)
    Shadow.ZIndex = -1
    Shadow.Image = "rbxassetid://14236708399"
    Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Shadow.ImageTransparency = .2

    UITitle.Name = "UITitle"
    UITitle.Size = UDim2.new(0, 150, .1, 7)
    UITitle.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
    UITitle.BackgroundTransparency = 1
    UITitle.Text = "HELLO HUB"
    UITitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    UITitle.TextSize = 21
    UITitle.TextTransparency = .1
    UITitle.Font = Enum.Font.SourceSansBold

    Title.Name = "Title"
    Title.Size = UDim2.new(1, 0, .1, 7)
    Title.Position = UDim2.new(0, 73, 0, 0)
    Title.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
    Title.BackgroundTransparency = 1
    Title.Text = title
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 17
    Title.Font = Enum.Font.Ubuntu

    CloseBtn.Name = "CloseBtn"
    CloseBtn.Size = UDim2.new(0, 20, 0, 20)
    CloseBtn.Position = UDim2.new(1, -30, 0, 10)
    CloseBtn.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
    CloseBtn.BackgroundTransparency = 1
    CloseBtn.Image = "rbxassetid://14243709419"
    CloseBtn.ImageColor3 = Color3.fromRGB(120, 120, 120)
    CloseBtn.AutoButtonColor = false

    TabHolder.Name = "TabHolder"
    TabHolder.Size = UDim2.new(0, 135, .9, 0)
    TabHolder.Position = UDim2.new(0, 6, .1, 0)
    TabHolder.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
    TabHolder.BackgroundTransparency = 1
    TabList.Padding = UDim.new(0, 1)
    TabList.SortOrder = Enum.SortOrder.LayoutOrder
    TabPad.PaddingBottom = UDim.new(0, 8)
    TabPad.PaddingTop = UDim.new(0, 8)

    ContentHolder.Name = "ContentContainer"
    ContentHolder.Size = UDim2.new(1, -152, 1, -37.5)
    ContentHolder.Position = UDim2.new(1, -6, 0, 37.5)
    ContentHolder.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
    ContentHolder.BackgroundTransparency = 1
    ContentHolder.AnchorPoint = Vector2.new(1, 0)

    CloseBtn.MouseButton1Click:Connect(
        function()
            MainFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
            task.wait(.3)
            Hello:Destroy()
        end
    )

    CloseBtn.MouseEnter:Connect(
        function()
            CloseBtn.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
    )

    CloseBtn.MouseLeave:Connect(
        function()
            CloseBtn.ImageColor3 = Color3.fromRGB(120, 120, 120)
        end
    )

    HelloHub:MakeDraggable(MainFrame)
    local TabCreate = {}
    function TabCreate:NewTab(tabTitle)
        tabTitle = tabTitle or "Tab"
        local TabBtn = Instance.new("TextButton", TabHolder)
        local TabBtnCorner = Instance.new("UICorner", TabBtn)
        local TabFrame = Instance.new("ScrollingFrame", ContentHolder)
        local TabFramePad = Instance.new("UIPadding", TabFrame)
        local TabFrameList = Instance.new("UIListLayout", TabFrame)

        TabBtn.Name = tabTitle .. "TabBtn"
        TabBtn.Size = UDim2.new(1, 0, 0, 35)
        TabBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabBtn.BackgroundTransparency = 1
        TabBtn.BorderSizePixel = 0
        TabBtn.Text = tabTitle
        TabBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
        TabBtn.TextSize = 14
        TabBtn.Font = Enum.Font.GothamMedium
        TabBtn.AutoButtonColor = false
        TabBtnCorner.CornerRadius = UDim.new(0, 5)

        TabFrame.Name = "TabFrame"
        TabFrame.Size = UDim2.new(1, 0, 1, 0)
        TabFrame.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
        TabFrame.BackgroundTransparency = 1
        TabFrame.BorderSizePixel = 0
        TabFrame.ScrollBarThickness = 7
        TabFrame.ClipsDescendants = true
        TabFramePad.PaddingBottom = UDim.new(0, 1)
        TabFramePad.PaddingLeft = UDim.new(0, 1)
        TabFramePad.PaddingRight = UDim.new(0, 1)
        TabFramePad.PaddingTop = UDim.new(0, 1)
        TabFrameList.Padding = UDim.new(0, 6)
        TabFrameList.SortOrder = Enum.SortOrder.LayoutOrder

        TabBtn.MouseEnter:Connect(
            function()
                if currenttab ~= TabBtn.Name then
                    tween:Create(
                        TabBtn,
                        tweenInfo(.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0, false, 0),
                        {TextColor3 = Color3.fromRGB(255, 255, 255)}
                    ):Play()
                end
            end
        )

        TabBtn.MouseLeave:Connect(
            function()
                if currenttab ~= TabBtn.Name then
                    tween:Create(
                        TabBtn,
                        tweenInfo(.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0, false, 0),
                        {TextColor3 = Color3.fromRGB(180, 180, 180)}
                    ):Play()
                end
            end
        )

        TabBtn.MouseButton1Click:Connect(
            function()
                for i, v in next, ContentHolder:GetChildren() do
                    if v.Name == "TabFrame" then
                        v.Visible = false
                    end
                    TabFrame.Visible = true
                end
                for i, v in next, TabHolder:GetChildren() do
                    if v.ClassName == "TextButton" then
                        v.BackgroundTransparency = 1
                        v.TextColor3 = Color3.fromRGB(180, 180, 180)
                    end
                end
                tween:Create(
                    TabBtn,
                    tweenInfo(.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0, false, 0),
                    {BackgroundTransparency = .9, TextColor3 = Color3.fromRGB(255, 255, 255)}
                ):Play()
                currenttab = TabBtn.Name
            end
        )

        if tb then
            tb = false
            tween:Create(
                TabBtn,
                tweenInfo(.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0, false, 0),
                {BackgroundTransparency = .9, TextColor3 = Color3.fromRGB(255, 255, 255)}
            ):Play()
            currenttab = TabBtn.Name
            TabFrame.Visible = true
        else
            TabBtn.BackgroundTransparency = 1
            TabBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
            TabFrame.Visible = false
        end

        local focus = false
        local Content = {}
        function Content:NewLabel(labelTitle)
            labelTitle = labelTitle or "Label"
            local Label = Instance.new("Frame", TabFrame)
            local LabelPad = Instance.new("UIPadding", Label)
            local LabelTitle = Instance.new("TextLabel", Label)

            Label.Name = "Label"
            Label.Size = UDim2.new(1, -10, 0, 21)
            Label.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
            Label.BackgroundTransparency = 1
            LabelPad.PaddingBottom = UDim.new(0, 6)
            LabelPad.PaddingLeft = UDim.new(0, 6)
            LabelPad.PaddingRight = UDim.new(0, 6)
            LabelPad.PaddingTop = UDim.new(0, 6)

            LabelTitle.Name = "Title"
            LabelTitle.Size = UDim2.new(1, 0, 1, 0)
            LabelTitle.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
            LabelTitle.BackgroundTransparency = 1
            LabelTitle.Text = labelTitle
            LabelTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelTitle.TextXAlignment = Enum.TextXAlignment.Left
            LabelTitle.TextSize = 14
            LabelTitle.Font = Enum.Font.Ubuntu
        end

        function Content:NewButton(btnTitle, callback)
            btnTitle = btnTitle or "Button"
            callback = callback or function()
                end
            local Button = Instance.new("TextButton", TabFrame)
            local ButtonPad = Instance.new("UIPadding", Button)
            local ButtonCorner = Instance.new("UICorner", Button)
            local BtnTitle = Instance.new("TextLabel", Button)
            local ButtonIcon = Instance.new("ImageLabel", Button)

            Button.Name = "Button"
            Button.Size = UDim2.new(1, -10, 0, 35)
            Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            Button.Text = ""
            Button.AutoButtonColor = false
            ButtonPad.PaddingBottom = UDim.new(0, 6)
            ButtonPad.PaddingLeft = UDim.new(0, 6)
            ButtonPad.PaddingRight = UDim.new(0, 6)
            ButtonPad.PaddingTop = UDim.new(0, 6)
            ButtonCorner.CornerRadius = UDim.new(0, 4)

            BtnTitle.Name = "Title"
            BtnTitle.Size = UDim2.new(1, -20, 1, 0)
            BtnTitle.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
            BtnTitle.BackgroundTransparency = 1
            BtnTitle.Text = btnTitle
            BtnTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            BtnTitle.TextXAlignment = Enum.TextXAlignment.Left
            BtnTitle.TextSize = 14
            BtnTitle.Font = Enum.Font.Ubuntu

            ButtonIcon.Name = "Icon"
            ButtonIcon.Size = UDim2.new(0, 20, 0, 20)
            ButtonIcon.Position = UDim2.new(1, 0, 0, 0)
            ButtonIcon.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
            ButtonIcon.BackgroundTransparency = 1
            ButtonIcon.AnchorPoint = Vector2.new(1, 0)
            ButtonIcon.Image = "rbxassetid://14257223921"
            ButtonIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)

            Button.MouseButton1Click:Connect(
                function()
                    pcall(callback)
                    BtnTitle.TextSize = 0
                    ButtonIcon.Size = UDim2.new(0, 0, 0, 0)
                    tween:Create(
                        BtnTitle,
                        tweenInfo(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0),
                        {TextSize = 14}
                    ):Play()
                    ButtonIcon:TweenSize(
                        UDim2.new(0, 20, 0, 20),
                        Enum.EasingDirection.Out,
                        Enum.EasingStyle.Quad,
                        .2,
                        true
                    )
                end
            )

            Button.MouseEnter:Connect(
                function()
                    tween:Create(
                        Button,
                        tweenInfo(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0),
                        {BackgroundColor3 = Color3.fromRGB(80, 80, 80)}
                    ):Play()
                end
            )

            Button.MouseLeave:Connect(
                function()
                    tween:Create(
                        Button,
                        tweenInfo(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0),
                        {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}
                    ):Play()
                end
            )
        end

        function Content:NewToggle(tglTitle, callback)
            tglTitle = tglTitle or "Toggle"
            callback = callback or function()
                end
            local toggled = false
            local Toggle = Instance.new("TextButton", TabFrame)
            local TogglePad = Instance.new("UIPadding", Toggle)
            local ToggleCorner = Instance.new("UICorner", Toggle)
            local ToggleTitle = Instance.new("TextLabel", Toggle)
            local ToggleBtn = Instance.new("Frame", Toggle)
            local ToggleBtnCorner = Instance.new("UICorner", ToggleBtn)
            local ToggleBtnCircle = Instance.new("Frame", ToggleBtn)
            local ToggleBtnCircleCorner = Instance.new("UICorner", ToggleBtnCircle)

            Toggle.Name = "Toggle"
            Toggle.Size = UDim2.new(1, -10, 0, 35)
            Toggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            Toggle.Text = ""
            Toggle.AutoButtonColor = false
            TogglePad.PaddingBottom = UDim.new(0, 6)
            TogglePad.PaddingLeft = UDim.new(0, 6)
            TogglePad.PaddingRight = UDim.new(0, 6)
            TogglePad.PaddingTop = UDim.new(0, 6)
            ToggleCorner.CornerRadius = UDim.new(0, 4)

            ToggleTitle.Name = "Title"
            ToggleTitle.Size = UDim2.new(1, -26, 1, 0)
            ToggleTitle.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
            ToggleTitle.BackgroundTransparency = 1
            ToggleTitle.Text = tglTitle
            ToggleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
            ToggleTitle.TextSize = 14
            ToggleTitle.Font = Enum.Font.Ubuntu

            ToggleBtn.Name = "Btn"
            ToggleBtn.Size = UDim2.new(0, 40, 0, 21)
            ToggleBtn.Position = UDim2.new(1, -3, .5, 0)
            ToggleBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
            ToggleBtn.AnchorPoint = Vector2.new(1, .5)
            ToggleBtnCorner.CornerRadius = UDim.new(1, 8)

            ToggleBtnCircle.Name = "Circle"
            ToggleBtnCircle.Size = UDim2.new(0, 16, 0, 16)
            ToggleBtnCircle.Position = UDim2.new(.2, -6, .15, -1)
            ToggleBtnCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleBtnCircleCorner.CornerRadius = UDim.new(1, 0)

            Toggle.MouseButton1Click:Connect(
                function()
                    if toggled == false then
                        tween:Create(
                            ToggleBtn,
                            tweenInfo(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0),
                            {BackgroundColor3 = Color3.fromRGB(80, 200, 100)}
                        ):Play()
                        ToggleBtnCircle:TweenPosition(
                            UDim2.new(.2, 13, .15, -1),
                            Enum.EasingDirection.Out,
                            Enum.EasingStyle.Quart,
                            .3,
                            true
                        )
                    else
                        tween:Create(
                            ToggleBtn,
                            tweenInfo(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0),
                            {BackgroundColor3 = Color3.fromRGB(100, 100, 100)}
                        ):Play()
                        ToggleBtnCircle:TweenPosition(
                            UDim2.new(.2, -6, .15, -1),
                            Enum.EasingDirection.Out,
                            Enum.EasingStyle.Quart,
                            .3,
                            true
                        )
                    end
                    toggled = not toggled
                    pcall(callback, toggled)
                end
            )
        end

        function Content:NewSlider(sldTitle, min, max, callback)
            sldTitle = sldTitle or "Slider"
            min = min or 50
            max = max or 100
            callback = callback or function()
                end
            local Slider = Instance.new("Frame", TabFrame)
            local SliderPad = Instance.new("UIPadding", Slider)
            local SliderCorner = Instance.new("UICorner", Slider)
            local SliderTitle = Instance.new("TextLabel", Slider)
            local SliderValue = Instance.new("TextLabel", Slider)
            local SliderBack = Instance.new("TextButton", Slider)
            local BackCorner = Instance.new("UICorner", SliderBack)
            local SliderDrag = Instance.new("Frame", SliderBack)
            local DragCorner = Instance.new("UICorner", SliderDrag)

            Slider.Name = "MainSlider"
            Slider.Size = UDim2.new(1, -10, 0, 46)
            Slider.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            SliderPad.PaddingBottom = UDim.new(0, 6)
            SliderPad.PaddingLeft = UDim.new(0, 6)
            SliderPad.PaddingRight = UDim.new(0, 6)
            SliderPad.PaddingTop = UDim.new(0, 6)
            SliderCorner.CornerRadius = UDim.new(0, 4)

            SliderTitle.Name = "Title"
            SliderTitle.Size = UDim2.new(1, -24, 1, -13)
            SliderTitle.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
            SliderTitle.BackgroundTransparency = 1
            SliderTitle.Text = sldTitle
            SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
            SliderTitle.TextSize = 14
            SliderTitle.Font = Enum.Font.Ubuntu

            SliderBack.Name = "SliderBack"
            SliderBack.Size = UDim2.new(1, 0, 0, 6)
            SliderBack.Position = UDim2.new(0, 0, 1, 0)
            SliderBack.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
            SliderBack.AnchorPoint = Vector2.new(0, 1)
            SliderBack.Text = ""
            SliderBack.AutoButtonColor = false
            BackCorner.CornerRadius = UDim.new(0, 4)

            SliderDrag.Name = "Draggable"
            SliderDrag.Size = UDim2.new(0, 0, 1, 0)
            SliderDrag.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
            DragCorner.CornerRadius = UDim.new(0, 4)

            SliderValue.Name = "Value"
            SliderValue.Size = UDim2.new(0, 24, 1, -13)
            SliderValue.Position = UDim2.new(1, 0, 0, 0)
            SliderValue.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
            SliderValue.BackgroundTransparency = 1
            SliderValue.AnchorPoint = Vector2.new(1, 0)
            SliderValue.Text = min
            SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderValue.TextXAlignment = Enum.TextXAlignment.Right
            SliderValue.TextSize = 14
            SliderValue.Font = Enum.Font.Ubuntu
            SliderValue.TextTransparency = 1

            local mouse = game:GetService("Players").LocalPlayer:GetMouse()

            local value
            SliderBack.MouseButton1Down:Connect(
                function()
                    if not focus then
                        tween:Create(
                            SliderValue,
                            tweenInfo(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
                            {TextTransparency = 0}
                        ):Play()
                        value =
                            math.floor(
                            (((tonumber(max) - tonumber(min)) / 355) * SliderDrag.AbsoluteSize.X) + tonumber(min)
                        ) or 0
                        pcall(
                            function()
                                callback(value)
                            end
                        )
                        SliderDrag:TweenSize(
                            UDim2.new(0, math.clamp(mouse.X - SliderDrag.AbsolutePosition.X, 0, 355), 0, 6),
                            "InOut",
                            "Linear",
                            0.05,
                            true
                        )
                        moveconnection =
                            mouse.Move:Connect(
                            function()
                                SliderValue.Text = value
                                value =
                                    math.floor(
                                    (((tonumber(max) - tonumber(min)) / 355) * SliderDrag.AbsoluteSize.X) +
                                        tonumber(min)
                                )
                                pcall(
                                    function()
                                        callback(value)
                                    end
                                )
                                SliderDrag:TweenSize(
                                    UDim2.new(0, math.clamp(mouse.X - SliderDrag.AbsolutePosition.X, 0, 355), 0, 6),
                                    "InOut",
                                    "Linear",
                                    0.05,
                                    true
                                )
                            end
                        )
                        releaseconnection =
                            UIS.InputEnded:Connect(
                            function(Mouse)
                                if
                                    Mouse.UserInputType == Enum.UserInputType.MouseButton1 or
                                        Mouse.UserInputType == Enum.UserInputType.Touch
                                 then
                                    value =
                                        math.floor(
                                        (((tonumber(max) - tonumber(min)) / 355) * SliderDrag.AbsoluteSize.X) +
                                            tonumber(min)
                                    )
                                    pcall(
                                        function()
                                            callback(value)
                                        end
                                    )
                                    SliderValue.Text = value
                                    tween:Create(
                                        SliderValue,
                                        tweenInfo(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
                                        {TextTransparency = 1}
                                    ):Play()
                                    SliderDrag:TweenSize(
                                        UDim2.new(0, math.clamp(mouse.X - SliderDrag.AbsolutePosition.X, 0, 355), 0, 6),
                                        "InOut",
                                        "Linear",
                                        0.05,
                                        true
                                    )
                                    moveconnection:Disconnect()
                                    releaseconnection:Disconnect()
                                end
                            end
                        )
                    end
                end
            )
        end
        return Content
    end
    return TabCreate
end
return HelloHub

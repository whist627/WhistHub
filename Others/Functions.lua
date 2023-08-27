shared.createSpot = function()

    local SafeSpot = Instance.new("Part")
    SafeSpot.Name = "Spot"
    SafeSpot.Anchored = true
    SafeSpot.Position = Vector3.new(-100000, 100, -1500)
    SafeSpot.Size = Vector3.new(45, 2, 45)
    SafeSpot.Transparency = .5
    SafeSpot.Parent = workspace

    local SafeSpot2 = Instance.new("Part")
    SafeSpot2.Name = "SpotBarrier1"
    SafeSpot2.Anchored = true
    SafeSpot2.Position = Vector3.new(-100000, 120, -1523)
    SafeSpot2.Size = Vector3.new(45, 100000, 1)
    SafeSpot2.Transparency = 1
    SafeSpot2.Parent = workspace:FindFirstChild("Spot")

    local SafeSpot3 = Instance.new("Part")
    SafeSpot3.Name = "SpotBarrier2"
    SafeSpot3.Anchored = true
    SafeSpot3.Position = Vector3.new(-99977, 120, -1500)
    SafeSpot3.Size = Vector3.new(1, 100000, 45)
    SafeSpot3.Transparency = 1
    SafeSpot3.Parent = workspace:FindFirstChild("Spot")

    local SafeSpot4 = Instance.new("Part") 
    SafeSpot4.Name = "SpotBarrier3" 
    SafeSpot4.Anchored = true 
    SafeSpot4.Position = Vector3.new(-100000, 120, -1477) 
    SafeSpot4.Size = Vector3.new(45, 100000, 1) 
    SafeSpot4.Transparency = 1
    SafeSpot4.Parent = workspace:FindFirstChild("Spot")

    local SafeSpot5 = Instance.new("Part") 
    SafeSpot5.Name = "SpotBarrier4" 
    SafeSpot5.Anchored = true 
    SafeSpot5.Position = Vector3.new(-100023, 120, -1500) 
    SafeSpot5.Size = Vector3.new(1, 100000, 45) 
    SafeSpot5.Transparency = 1
    SafeSpot5.Parent = workspace:FindFirstChild("Spot")

end
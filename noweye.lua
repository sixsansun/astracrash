local Event = game:GetService("ReplicatedStorage").PlacementEvent

local Placements = {
    {
        CFrame.new(-851.87188720703, 5.1394219398499, 60.797706604004, 1, 0, 0, 0, 1, 0, 0, 0, 1),
        "Sac urgences adulte"
    },
    {
        CFrame.new(-851.87188720703, 5.1394219398499, 60.797706604004, 1, 0, 0, 0, 1, 0, 0, 0, 1),
        "02"
    },
    {
        CFrame.new(-851.87188720703, 5.1394219398499, 60.797706604004, 1, 0, 0, 0, 1, 0, 0, 0, 1),
        "Sac 02 SM"
    },
    {
        CFrame.new(-851.87188720703, 5.1394219398499, 60.797706604004, 1, 0, 0, 0, 1, 0, 0, 0, 1),
        "Sac PS SM"
    },
    {
        CFrame.new(-851.87188720703, 5.1394219398499, 60.797706604004, 1, 0, 0, 0, 1, 0, 0, 0, 1),
        "Sac urgences adulte"
    }
}

while true do
    for _, placement in ipairs(Placements) do
        Event:FireServer(
            "Place",
            placement[1],
            placement[2]
        )
    end

    Event:FireServer("RemoveAll")

    task.wait(0.001)
end

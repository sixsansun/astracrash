local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")

local Event = ReplicatedStorage
    :WaitForChild("Packages")
    :WaitForChild("Packet")
    :WaitForChild("RemoteEvent")

local NombreDeFois = 50

for i = 1, NombreDeFois do
    -- Juste avant le 50e (= après 49)
    if i == 50 then
        local packet2 = buffer.create(1)
        buffer.writeu8(packet2, 0, 2)

        Event:FireServer(packet2)
        print("Packet {2} envoyé après 49")
    end

    -- Récupère la position au moment de chaque envoi
    local pos = root.Position
    local dir = root.CFrame.LookVector

    local b = buffer.create(25)

    buffer.writeu8(b, 0, 1)

    buffer.writef32(b, 1, pos.X)
    buffer.writef32(b, 5, pos.Y)
    buffer.writef32(b, 9, pos.Z)

    buffer.writef32(b, 13, dir.X)
    buffer.writef32(b, 17, dir.Y)
    buffer.writef32(b, 21, dir.Z)

    Event:FireServer(b)

    print("Position envoyée :", i)
end

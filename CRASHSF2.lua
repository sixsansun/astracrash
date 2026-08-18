local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")

local Event = ReplicatedStorage
    :WaitForChild("Packages")
    :WaitForChild("Packet")
    :WaitForChild("RemoteEvent")

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

print("Remote envoyé :", pos, dir)

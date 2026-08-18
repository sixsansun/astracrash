local Event = game:GetService("ReplicatedStorage"):WaitForChild("ChangeTeamEvent")

local TeamName = "Il | Ilegale"
local NombreDeFois = 900000

for i = 1, NombreDeFois do
    Event:FireServer(TeamName)
end

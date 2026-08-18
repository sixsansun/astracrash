local Event = game:GetService("ReplicatedStorage"):WaitForChild("ChangeTeamEvent")

local TeamName = "CV I Citoyen"
local NombreDeFois = 900000

for i = 1, NombreDeFois do
    Event:FireServer(TeamName)
end

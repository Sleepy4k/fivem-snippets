- Player PED
Ganti semua GetPlayerPed(-1) dengan PlayerPedId()

- Distance
local playercoords = GetEntityCoords(PlayerPedId())
local vehiclecoords = GetEntityCoords(vehicle)
-- Dari ini
if GetDistanceBetweenCoords(playercoords.x, playercoords.y, playercoords.z, vehiclecoords.x, vehiclecoords.y, vehiclecoords.z, true) < 5 then 
-- Ganti ke
if #(playercoords - vehiclecoords) < 5 then

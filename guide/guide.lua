--// Player PED //--
GetPlayerPed(-1) = PlayerPedId()

--// Distance //--
local playercoords = GetEntityCoords(PlayerPedId())
local vehiclecoords = GetEntityCoords(vehicle)

--// Coords //--
if GetDistanceBetweenCoords(playercoords.x, playercoords.y, playercoords.z, vehiclecoords.x, vehiclecoords.y, vehiclecoords.z, true) < 5 then = if #(playercoords - vehiclecoords) < 5 then

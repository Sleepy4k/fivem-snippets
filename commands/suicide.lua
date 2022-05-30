--// don't touch this please \\--
local setentityhealth = SetEntityHealth

RegisterCommand('suicide', function(source, args, RawCommand)
    local ped = PlayerPedId()
    setentityhealth(ped, 0)
end)
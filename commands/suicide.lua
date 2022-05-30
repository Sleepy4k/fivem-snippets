RegisterCommand('suicide', function(source, args, RawCommand)
    local ped = PlayerPedId()
    SetEntityHealth(ped, 0)
end)
AddEventHandler('playerSpawned', function(spawn)
    local ped = PlayerPedId()
    if GetPedMaxHealth(ped) ~= 200 and not IsEntityDead(ped) then
        SetPedMaxHealth(ped, 200)
        SetEntityHealth(ped, GetEntityHealth(ped) + 25)
    end
end)

AddEventHandler('playerSpawned', function(spawn)
    local ped = PlayerPedId()

    if GetPedMaxHealth(ped) ~= 200 and not IsEntityDead(ped) then
        SetPedMaxHealth(ped, 200)

        local max_health = GetEntityMaxHealth(ped)
        local ped_health = GetEntityHealth(ped)
        local health_boost = max_health - ped_health

        SetEntityHealth(ped, ped_health + health_boost)
    end
end)
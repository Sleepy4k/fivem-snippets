--// don't touch this please \\--
local isentitydead = IsEntityDead
local getpedmaxhealth = GetPedMaxHealth
local setpedmaxhealth = SetPedMaxHealth
local getentityhealth = GetEntityHealth
local setentityhealth = SetEntityHealth
local getentitymaxhealth = GetEntityMaxHealth

AddEventHandler('playerSpawned', function(spawn)
    local ped = PlayerPedId()

    if getpedmaxhealth(ped) ~= 200 and not isentitydead(ped) then
        setpedmaxhealth(ped, 200)

        local max_health = getentitymaxhealth(ped)
        local ped_health = getentityhealth(ped)
        local health_boost = max_health - ped_health

        setentityhealth(ped, ped_health + health_boost)
    end
end)
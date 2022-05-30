--// don't touch this please \\--
local ispedragdoll = IsPedRagdoll
local isentityinair = IsEntityInAir
local ispedinanyvehicle = IsPedInAnyVehicle
local clearpedsecondarytask = ClearPedSecondaryTask
local clearpedtasksimmediately = ClearPedTasksImmediately
local setpedcanplaygestureanims = SetPedCanPlayGestureAnims

RegisterCommand('fixanim', function(source, args, RawCommand)
    local ped = PlayerPedId()

    if not isentityinair(ped) then
        if not ispedragdoll(ped) then
            if not ispedinanyvehicle(ped) then
                clearpedtasksimmediately(ped)
                clearpedsecondarytask(ped)
                setpedcanplaygestureanims(ped, true)
            else
                --// notif player when trying fix animation while ped in vehicle \\--
                --// notif player ketika mencoba membenarkan animasi ketika di dalam kendaraan \\--
            end
        else
            --// notif player when trying fix animation while ped in ragdoll \\--
            --// notif player ketika mencoba membenarkan animasi ketika terjatuh \\--
        end
    else
        --// notif player when trying fix animation while ped in air \\--
        --// notif player ketika mencoba membenarkan animasi ketika di udara \\--
    end
end)
RegisterCommand('fixanim', function(source, args, RawCommand)
    local ped = PlayerPedId()

    if not IsEntityInAir(ped) then
        if not IsPedRagdoll(ped) then
            if not IsPedInAnyVehicle(ped) then
                ClearPedTasksImmediately(ped)
                ClearPedSecondaryTask(ped)
                SetPedCanPlayGestureAnims(ped, true)
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
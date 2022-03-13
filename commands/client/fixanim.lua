if Config.EnableFixanim == true then
    RegisterCommand(Config.FixanimCommand, function(source, args, rawCommand)
        local ped = PlayerPedId()

        if not IsEntityInAir(ped) then
            if not IsPedRagdoll(ped) then
                if not IsPedInAnyVehicle(ped) then
                    ClearPedTasksImmediately(ped)
                    ClearPedSecondaryTask(ped)
                    SetPedCanPlayGestureAnims(ped, true)
                else
                    kendaraan(_U('notif_when_in_vehicle'))
                end
            else
                jatuh(_U('notif_when_falling'))
            end
        else
            udara(_U('notif_when_in_air'))
        end
    end, false)
end
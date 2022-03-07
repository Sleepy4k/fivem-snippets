RegisterCommand("animfix", function(source, args, rawCommand)
    local ped = GetPlayerPed(-1)
    local isDead = false

    if not IsEntityInAir(ped) then
        if not IsPedRagdoll(ped) then
            if not IsPedInAnyVehicle(ped) then
                ClearPedTasksImmediately(ped)
                ClearPedSecondaryTask(ped)
                SetPedCanPlayGestureAnims(ped, true)
            else
                exports['mythic_notify']:SendAlert('inform', 'You can\'t use this command while you\'re in a car.', 6500)
            end
        else
            exports['mythic_notify']:SendAlert('inform', 'You can\'t use this command if you\'re not standing.', 6500)
        end
    else
        exports['mythic_notify']:SendAlert('inform', 'You can\'t use this command if you\'re in the air.', 6500)
    end

end, false)

Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/animfix', 'Use this command if your animation gets bugged. It will stop your animation and save you.')
end)

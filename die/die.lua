function KillYourself()
    Citizen.CreateThread(function()
        local playerPed = PlayerPedId()
        SetEntityHealth(playerPed, 0)
    end)
end

RegisterCommand('die', function()
    KillYourself()  
end, false)

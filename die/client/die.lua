if Config.EnableDie == true then
    RegisterCommand(Config.DieCommand, function()
        local playerPed = PlayerPedId()
        SetEntityHealth(playerPed, 0)
    end, false)
end
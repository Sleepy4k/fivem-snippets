local ayang = Config.invisinterval

if Config.EnableFixinvis == true then
    RegisterCommand(Config.FixinvisCommand, function(source, args)
        Citizen.Wait(ayang)
        local playerPed = PlayerPedId()
        SetEntityLocallyVisible(playerPed)
        NetworkSetEntityInvisibleToNetwork(playerPed, false)
        SetPlayerVisibleLocally(source, true)
        SetEntityVisible(playerPed, true, 0)
        SetLocalPlayerVisibleLocally(true)
    end, false)
end
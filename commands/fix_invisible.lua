RegisterCommand('fixinvis', function(source, args, RawCommand)
    local ped = PlayerPedId()
        
    SetEntityLocallyVisible(ped)
    NetworkSetEntityInvisibleToNetwork(ped, false)
    SetPlayerVisibleLocally(source, true)
    SetEntityVisible(ped, true, 0)
    SetLocalPlayerVisibleLocally(true)
end)
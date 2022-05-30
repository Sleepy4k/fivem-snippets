CreateThread(function()
    local id = PlayerId()

    for i = 1, 15 do 
        EnableDispatchService(i, false) 
    end

    SetRandomBoats(false)
    SetGarbageTrucks(false)
    SetRandomTrains(false)
    SetCreateRandomCops(false)
    SetCreateRandomCopsOnScenarios(false)
    SetCreateRandomCopsNotOnScenarios(false)
    SetDispatchCopsForPlayer(id, false)
    SetPedPopulationBudget(0.0)
    SetNumberOfParkedVehicles(0.0)
    SetVehiclePopulationBudget(0.0)
    DistantCopCarSirens(false)
    DisableVehicleDistantlights(true)
end)
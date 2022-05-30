--// don't touch this please \\--
local setrandomboats = SetRandomBoats
local setrandomtrains = SetRandomTrains
local setgarbagetrucks = SetGarbageTrucks
local setcreaterandomcops = SetCreateRandomCops
local distantcopcarsirens = DistantCopCarSirens
local enabledispatchservice = EnableDispatchService
local setpedpopulationbudget = SetPedPopulationBudget
local setdispatchcopsforplayer = SetDispatchCopsForPlayer
local setnumberofparkedvehicles = SetNumberOfParkedVehicles
local setvehiclepopulationbudget = SetVehiclePopulationBudget
local disablevehicledistantlights = DisableVehicleDistantlights
local setcreaterandomcopsonscenarios = SetCreateRandomCopsOnScenarios
local setcreaterandomcopsnotonscenarios = SetCreateRandomCopsNotOnScenarios

CreateThread(function()
    local id = PlayerId()

    for i = 1, 15 do 
        enabledispatchservice(i, false) 
    end

    setrandomboats(false)
    setgarbagetrucks(false)
    setrandomtrains(false)
    setcreaterandomcops(false)
    setcreaterandomcopsonscenarios(false)
    setcreaterandomcopsnotonscenarios(false)
    setdispatchcopsforplayer(id, false)
    setpedpopulationbudget(0.0)
    setnumberofparkedvehicles(0.0)
    setvehiclepopulationbudget(0.0)
    distantcopcarsirens(false)
    disablevehicledistantlights(true)
end)
--// don't touch this please \\--
local setentityvisible = SetEntityVisible
local setplayervisiblelocally = SetPlayerVisibleLocally
local setentitylocallyvisible = SetEntityLocallyVisible
local setlocalplayervisiblelocally = SetLocalPlayerVisibleLocally
local networksetentityinvisibletonetwork = NetworkSetEntityInvisibleToNetwork

RegisterCommand('fixinvis', function(source, args, RawCommand)
    local ped = PlayerPedId()
        
    setentitylocallyvisible(ped)
    networksetentityinvisibletonetwork(ped, false)
    setplayervisiblelocally(source, true)
    setentityvisible(ped, true, 0)
    setlocalplayervisiblelocally(true)
end)
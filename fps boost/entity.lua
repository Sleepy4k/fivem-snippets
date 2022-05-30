local function OptimizeFPS()
    local ped = PlayerPedId()

    ClearAllBrokenGlass()
    ClearAllHelpMessages()
    LeaderboardsReadClearAll()
    ClearBrief()
    ClearGpsFlags()
    ClearPrints()
    ClearSmallPrints()
    ClearReplayStats()
    LeaderboardsClearCacheData()
    ClearFocus()
    ClearHdArea()
    ClearPedBloodDamage(ped)
    ClearPedWetness(ped)
    ClearPedEnvDirt(ped)
    ResetPedVisibleDamage(ped)
end

CreateThread(function()
    while true do
        local msec = 60000

        OptimizeFPS()

        Wait(msec)
    end
end)

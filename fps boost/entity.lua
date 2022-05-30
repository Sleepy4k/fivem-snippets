--// don't touch this please \\--
local clearfocus = ClearFocus
local clearbrief = ClearBrief
local clearhdarea = ClearHdArea
local clearprints = ClearPrints
local cleargpsflags = ClearGpsFlags
local clearpedwetness = ClearPedWetness
local clearpedenvdirt = ClearPedEnvDirt
local clearsmallprints = ClearSmallPrints
local clearreplaystats = ClearReplayStats
local clearallbrokenglass = ClearAllBrokenGlass
local clearpedblooddamage = ClearPedBloodDamage
local clearallhelpmessages = ClearAllHelpMessages
local resetpedvisibledamage = ResetPedVisibleDamage
local leaderboardsreadclearall = LeaderboardsReadClearAll
local leaderboardsclearcachedata = LeaderboardsClearCacheData

local function optimize_prop()
    local ped = PlayerPedId()

    clearallbrokenglass()
    clearallhelpmessages()
    leaderboardsreadclearall()
    clearbrief()
    cleargpsflags()
    clearprints()
    clearsmallprints()
    clearreplaystats()
    leaderboardsclearcachedata()
    clearfocus()
    clearhdarea()
    clearpedblooddamage(ped)
    clearpedwetness(ped)
    clearpedenvdirt(ped)
    resetpedvisibledamage(ped)
end

CreateThread(function()
    while true do
        local msec = 60000

        optimize_prop()

        Wait(msec)
    end
end)

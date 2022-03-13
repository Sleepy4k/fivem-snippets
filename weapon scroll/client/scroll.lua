local halo = Config.Interval
if Config.EnableWeaponScroll == true then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(halo)
            HideHudComponentThisFrame(19)
            HideHudComponentThisFrame(20)
            BlockWeaponWheelThisFrame()
            DisableControlAction(0, Keys["TAB"],true)
        end
    end)
end
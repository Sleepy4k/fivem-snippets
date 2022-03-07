local recoils = {
    [453432689] = 0.3, -- PISTOL
    [3219281620] = 0.5, -- PISTOL MK2
    [1593441988] = 0.2, -- COMBAT PISTOL
    [584646201] = 0.1, -- AP PISTOL
    [-1716589765] = 6.0, -- PISTOL .50
    [324215364] = 0.2, -- MICRO SMG
    [736523883] = 6.1, -- SMG
}
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsPedShooting(PlayerPedId()) and not IsPedDoingDriveby(PlayerPedId()) then
            local _,wep = GetCurrentPedWeapon(PlayerPedId())
            _,cAmmo = GetAmmoInClip(PlayerPedId(), wep)
            if recoils[wep] and recoils[wep] ~= 0 then
                tv = 0
                if GetFollowPedCamViewMode() ~= 4 then
                    repeat 
                        Wait(0)
                        SetWeaponAnimationOverride(PlayerPedId(), GetHashKey("Default"))
                        p = GetGameplayCamRelativePitch()
                        SetGameplayCamRelativePitch(p+0.1, 0.5)
                        tv = tv+0.1
                    until tv >= recoils[wep]
                else
                    repeat 
                        Wait(0)
                        SetWeaponAnimationOverride(PlayerPedId(), GetHashKey("FirstPersonAiming"))
                        p = GetGameplayCamRelativePitch()
                        if recoils[wep] > 0.1 then
                            SetGameplayCamRelativePitch(p+0.6, 1.2)
                            tv = tv+0.6
                        else
                            SetGameplayCamRelativePitch(p+0.016, 0.333)
                            tv = tv+0.1
                        end
                    until tv >= recoils[wep]
                end
            end
        end
    end
end)

local recoils = Config.WeaponSettings

local montok = Config.NaikInterval
if Config.EnableRecoilNaik == true then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(montok)
            local player = PlayerPedId()
    
            if IsPedShooting(player) and not IsPedDoingDriveby(player) then
                local _,wep = GetCurrentPedWeapon(player)
                _,cAmmo = GetAmmoInClip(player, wep)
                if recoils[wep] and recoils[wep] ~= 0 then
                    tv = 0
                    if GetFollowPedCamViewMode() ~= 4 then
                        repeat 
                            Wait(0)
                            if Config.EnableCamOverride == true then
                                SetWeaponAnimationOverride(player, GetHashKey("Default"))
                            end
                            
                            p = GetGameplayCamRelativePitch()
                            SetGameplayCamRelativePitch(p+0.1, Config.RelativePitch)
                            tv = tv+0.1
                        until tv >= recoils[wep]
                    else
                        repeat 
                            Wait(0)
                            if Config.EnableCamOverride == true then
                                SetWeaponAnimationOverride(player, GetHashKey("FirstPersonAiming"))
                            end
                            
                            p = GetGameplayCamRelativePitch()
                            if recoils[wep] > 0.1 then
                                SetGameplayCamRelativePitch(p+0.6, Config.RelativePitch)
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
end

local sange = Config.GeterInterval
if Config.EnableRecoilGeter == true then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(sange)
            local ped = PlayerPedId()
            local weapon = GetSelectedPedWeapon(ped)
    
            -- Disable ammo HUD
            DisplayAmmoThisFrame(Config.DisplayAmmoThisFrame)
            
            for k,v in pairs(Config.ShakeCamList) do 
                if weapon == GetHashKey(v.weapon) then
                    if IsPedShooting(ped) then
                        ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', v.value)
                    end
                end
            end		
        end
    end)
end
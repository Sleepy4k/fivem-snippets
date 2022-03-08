local scopedWeapons = 
{
    100416529,  -- WEAPON_SNIPERRIFLE
    205991906,  -- WEAPON_HEAVYSNIPER
    3342088282, -- WEAPON_MARKSMANRIFLE
	177293209,   -- WEAPON_HEAVYSNIPER MKII
	1785463520  -- WEAPON_MARKSMANRIFLE_MK2
}

function HashInTable( hash )
    for k, v in pairs( scopedWeapons ) do 
        if ( hash == v ) then 
            return true 
        end 
    end 

    return false 
end 

function ManageReticle()
    local ped = PlayerPedId()
    local _, hash = GetCurrentPedWeapon(ped,true)
    if not HashInTable(hash) then 
        HideHudComponentThisFrame(14)
    end 
end 

Citizen.CreateThread(function()
    while true do
        Wait(3)
        ManageReticle()
    end
end)

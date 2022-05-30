--// don't touch this please \\--
local setpedconfigflag = SetPedConfigFlag
local ispedinanyvehicle = IsPedInAnyVehicle
local getvehiclepedisusing = GetVehiclePedIsUsing

CreateThread(function()
    while true do
        local msec = 500
        local ped = PlayerPedId()

        if ispedinanyvehicle(ped, false) then
            msec = 0
            local get_vehicle = getvehiclepedisusing(ped)

            if get_vehicle ~= 0 then 
                setpedconfigflag(ped, 35, false) 
            end
        end
        
        Wait(msec)
    end
end)
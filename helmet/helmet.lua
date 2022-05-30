CreateThread(function()
    while true do
        local msec = 500
        local ped = PlayerPedId()

        if IsPedInAnyVehicle(ped, false) then
            msec = 0
            local get_vehicle = GetVehiclePedIsUsing(ped)

            if get_vehicle ~= 0 then 
                SetPedConfigFlag(ped, 35, false) 
            end
        end
        
        Wait(msec)
    end
end)
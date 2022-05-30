CreateThread(function()
	while true do
		local msec = 500

		local ped = PlayerPedId()
		local ped_in_vehicle = GetVehiclePedIsIn(ped, false)

		if ped_in_vehicle then
			msec = 0
            local id = PlayerId()

			if GetPedInVehicleSeat(ped_in_vehicle, -1) == ped then
				SetPlayerCanDoDriveBy(id, false)
			elseif passengerDriveBy then
				SetPlayerCanDoDriveBy(id, true)
			else
				SetPlayerCanDoDriveBy(id, false)
			end
		end

		Wait(msec)
	end
end)
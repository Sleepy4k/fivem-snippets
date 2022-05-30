--// don't touch this please \\--
local getvehiclepedisin = GetVehiclePedIsIn
local getpedinvehicleseat = GetPedInVehicleSeat
local setplayercandodriveby = SetPlayerCanDoDriveBy

CreateThread(function()
	while true do
		local msec = 500

		local ped = PlayerPedId()
		local ped_in_vehicle = getvehiclepedisin(ped, false)

		if ped_in_vehicle then
			msec = 0
            local id = PlayerId()

			if getpedinvehicleseat(ped_in_vehicle, -1) == ped then
				setplayercandodriveby(id, false)
			elseif passengerDriveBy then
				setplayercandodriveby(id, true)
			else
				setplayercandodriveby(id, false)
			end
		end

		Wait(msec)
	end
end)
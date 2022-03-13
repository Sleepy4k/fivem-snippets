local beb = Config.Interval
if Config.DisableWeaponReward == true then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(beb)
			DisablePlayerVehicleRewards(PlayerId())
		end
	end)
end
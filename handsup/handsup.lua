RegisterKeyMapping('+handsup', 'Angkat Tangan', 'keyboard', 'x')

RegisterCommand('+handsup', function()
	local ped = PlayerPedId()

	if DoesEntityExist(ped) then 
		CreateThread(function()  
			RequestAnimDict("random@mugging3")
			while not HasAnimDictLoaded("random@mugging3") do 
				Wait(100) 
			end

			TaskPlayAnim(ped, "random@mugging3", "handsup_standing_base", 8.0, -8, -1, 49, 0, 0, 0, 0)
		end)
	end
end)

RegisterCommand('-handsup', function() 
	local ped = PlayerPedId()
  	ClearPedSecondaryTask(ped)
end)

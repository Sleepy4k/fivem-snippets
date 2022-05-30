--// don't touch this please \\--
local taskplayanim = TaskPlayAnim
local doesentityexist = DoesEntityExist
local requestanimdict = RequestAnimDict
local hasanimdictloaded = HasAnimDictLoaded
local ClearPedSecondaryTask = ClearPedSecondaryTask

RegisterKeyMapping('+handsup', 'Angkat Tangan', 'keyboard', 'x')

RegisterCommand('+handsup', function()
	local ped = PlayerPedId()

	if doesentityexist(ped) then 
		CreateThread(function()  
			requestanimdict("random@mugging3")
			while not hasanimdictloaded("random@mugging3") do 
				Wait(100) 
			end

			taskplayanim(ped, "random@mugging3", "handsup_standing_base", 8.0, -8, -1, 49, 0, 0, 0, 0)
		end)
	end
end)

RegisterCommand('-handsup', function() 
	local ped = PlayerPedId()
	clearpedsecondarytask(ped)
end)

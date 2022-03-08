local weapons = {
	`WEAPON_KNIFE`,
	`WEAPON_HAMMER`,
	`WEAPON_BAT`,
	`WEAPON_GOLFCLUB`,
	`WEAPON_CROWBAR`,
	`WEAPON_BOTTLE`,
	`WEAPON_DAGGER`,
	`WEAPON_HATCHET`,
	`WEAPON_MACHETE`,
	`WEAPON_BATTLEAXE`,
	`WEAPON_POOLCUE`,
	`WEAPON_WRENCH`,
	`WEAPON_PISTOL`,
	`WEAPON_APPISTOL`,
	`WEAPON_COMBATPISTOL`,
	`WEAPON_PISTOL50`,
	`WEAPON_REVOLVER`,
	`WEAPON_REVOLVER_MK2`,
	`WEAPON_SNSPISTOL`,
	`WEAPON_HEAVYPISTOL`,
	`WEAPON_VINTAGEPISTOL`,
	`WEAPON_MICROSMG`,
	`WEAPON_ASSAULTSMG`,
	`WEAPON_MINISMG`,
	`WEAPON_MACHINEPISTOL`,
	`WEAPON_COMBATPDW`,
	`WEAPON_SAWNOFFSHOTGUN`,
	`WEAPON_COMPACTRIFLE`,
	`WEAPON_GUSENBERG`,
	`WEAPON_SMOKEGRENADE`,
	`WEAPON_BZGAS`,
	`WEAPON_MOLOTOV`,
	`WEAPON_FLAREGUN`,
	`WEAPON_MARKSMANPISTOL`,
	`WEAPON_DBSHOTGUN`,
	`WEAPON_DOUBLEACTION`,
	`WEAPON_STUNGUN`,
    `WEAPON_CARBINERIFLE`,
    `WEAPON_CARBINERIFLE_MK2`,
    `WEAPON_ASSAULTRIFLE`,
    `WEAPON_ASSAULTRIFLE_MK2`,
    `WEAPON_SPECIALCARBINE`,
    `WEAPON_SPECIALCARBINE_MK2`,
    `WEAPON_COMBATPDW`,
    `WEAPON_ASSAULTSMG`,
    `WEAPON_HEAVYSNIPER`,
    `WEAPON_HEAVYSNIPER_MK2`,
    `WEAPON_MARKSMANRIFLE`,
    `WEAPON_SNIPERRIFLE`,
    `WEAPON_BULLPUPSHOTGUN`,
    `WEAPON_PUMPSHOTGUN`,
    `WEAPON_COMBATSHOTGUN`,
    `WEAPON_MG`,
    `WEAPON_COMBATMG`,
    `WEAPON_BULLPUPRIFLE_MK2`,
    `WEAPON_BULLPUPRIFLE`,
    `WEAPON_ADVANCEDRIFLE`,
    `WEAPON_SMG`,
    `WEAPON_BAT`,
    `WEAPON_APPISTOL`,
}

local ESX      	 = nil
local holstered = true
local canFire = true
local currWeapon = `WEAPON_UNARMED`
local PlayerData = {}
------------------------

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  	PlayerData.job = job
end)

Citizen.CreateThread(function()
	currWeapon = GetSelectedPedWeapon(PlayerPedId())
	while true do
		Citizen.Wait(0)
		local player = PlayerPedId()
		if PlayerData.job ~= nil and PlayerData.job.name == 'ambulance' then
			if DoesEntityExist( player ) and not IsEntityDead( player ) and not IsPedInAnyVehicle(PlayerPedId(-1), true) and not IsPedInParachuteFreeFall(player) and GetPedParachuteState(player) == -1 then
				if currWeapon ~= GetSelectedPedWeapon(player) then
					pos = GetEntityCoords(player, true)
					rot = GetEntityHeading(player)

					local newWeap = GetSelectedPedWeapon(player)
					SetCurrentPedWeapon(player, currWeapon, true)

					if CheckWeapon(newWeap) then
						if holstered then
							canFire = false
							grab2h()
							SetCurrentPedWeapon(player, newWeap, true)
							currWeapon = newWeap
							Citizen.Wait(500)
	
							holstered = false
							canFire = true
						elseif newWeap ~= currWeapon and CheckWeapon(currWeapon) then
							canFire = false
							grab2h()
							SetCurrentPedWeapon(player, GetHashKey('WEAPON_UNARMED'), true)
							--ClearPedTasks(player)
							grab2h()
							SetCurrentPedWeapon(player, newWeap, true)
							currWeapon = newWeap
							Citizen.Wait(500)
	
							holstered = false
							canFire = true
						else
							SetCurrentPedWeapon(player, GetHashKey('WEAPON_UNARMED'), true)
							--ClearPedTasks(player)
							grab2h()
							SetCurrentPedWeapon(player, newWeap, true)
							currWeapon = newWeap
							Citizen.Wait(500)
	
							holstered = false
							canFire = true
						end
					else
						if not holstered and CheckWeapon(currWeapon) then
							canFire = false
							grab2h()
							SetCurrentPedWeapon(player, GetHashKey('WEAPON_UNARMED'), true)
							
							SetCurrentPedWeapon(player, newWeap, true)
							holstered = true
							canFire = true
							currWeapon = newWeap
						else
							SetCurrentPedWeapon(player, newWeap, true)
							holstered = false
							canFire = true
							currWeapon = newWeap
						end
					end
				end
			end
		else
			if DoesEntityExist( player ) and not IsEntityDead( player ) and not IsPedInAnyVehicle(PlayerPedId(-1), true) and not IsPedInParachuteFreeFall(player) and GetPedParachuteState(player) == -1 then
				if currWeapon ~= GetSelectedPedWeapon(player) then
					pos = GetEntityCoords(player, true)
					rot = GetEntityHeading(player)

					local newWeap = GetSelectedPedWeapon(player)
					SetCurrentPedWeapon(player, currWeapon, true)

					if CheckWeapon(newWeap) then
						if holstered then
							canFire = false
							grab3h()
							SetCurrentPedWeapon(player, newWeap, true)
							currWeapon = newWeap
							Citizen.Wait(500)
	
							holstered = false
							canFire = true
						elseif newWeap ~= currWeapon and CheckWeapon(currWeapon) then
							canFire = false
							grab3h()
							SetCurrentPedWeapon(player, GetHashKey('WEAPON_UNARMED'), true)
							--ClearPedTasks(player)
							grab3h()
							SetCurrentPedWeapon(player, newWeap, true)
							currWeapon = newWeap
							Citizen.Wait(500)
	
							holstered = false
							canFire = true
						else
							SetCurrentPedWeapon(player, GetHashKey('WEAPON_UNARMED'), true)
							--ClearPedTasks(player)
							grab3h()
							SetCurrentPedWeapon(player, newWeap, true)
							currWeapon = newWeap
							Citizen.Wait(500)
	
							holstered = false
							canFire = true
						end
					else
						if not holstered and CheckWeapon(currWeapon) then
							canFire = false
							grab3h()
							SetCurrentPedWeapon(player, GetHashKey('WEAPON_UNARMED'), true)
							
							SetCurrentPedWeapon(player, newWeap, true)
							holstered = true
							canFire = true
							currWeapon = newWeap
						else
							SetCurrentPedWeapon(player, newWeap, true)
							holstered = false
							canFire = true
							currWeapon = newWeap
						end
					end
				end
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if not canFire then
			DisableControlAction(0, 25, true)
			DisablePlayerFiring(player, true)
		end
	end
end)

function CheckWeapon(newWeap)
	for i = 1, #weapons do
		if weapons[i] == newWeap then
			return true
		end
	end
	return false
end

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end


function grab2h()
	local dict = "reaction@intimidation@cop@unarmed"
	local anim = "intro"
	local ped = GetPlayerPed(-1)
    loadAnimDict(dict) 
    TaskPlayAnim(ped, dict, anim, 1.5, 1.5, -1, 49, 10, 0, 0, 0)   
    Citizen.Wait(1200)

    ClearPedTasks(ped)

end

function grab3h()
	local dict = "reaction@intimidation@cop@unarmed"
	local anim = "intro"
	local ped = GetPlayerPed(-1)
    loadAnimDict(dict) 
    TaskPlayAnim(ped, dict, anim, 1.5, 1.5, -1, 49, 10, 0, 0, 0)   
    Citizen.Wait(800)

    ClearPedTasks(ped)

end

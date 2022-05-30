local enable_anti_modifier = true

--// don't touch this please \\--
local ispedarmed = IsPedArmed
local getcurrentpedweapon = GetCurrentPedWeapon
local getweapondamagemodifier = GetWeaponDamageModifier

CreateThread(function()
	while true do
		local msec = 500
		local ped = PlayerPedId()

		if ispedarmed(ped, 4) and enable_anti_modifier then
			msec = 0
			local _, weapon = getcurrentpedweapon(ped, 1)

			--// Change value if you feel too many triggering \\--
			--// Ganti angka validasi jika kamu merasa terlalu banyak melakukan trigger \\--
			if getweapondamagemodifier(weapon) > 1.0 then
				--// use your server side trigger for kick player and discord log \\--
				--// gunakan trigger server side kalian untuk kick player dan log discord \\-- 
				Wait(2000)
			end
		end

		Wait(msec)
	end
end)
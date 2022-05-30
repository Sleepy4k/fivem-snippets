local enable_anti_spectate = true

--// don't touch this please \\--
local networkisinspectatormode = NetworkIsInSpectatorMode

CreateThread(function()
	while true do
		local msec = 2000

		if networkisinspectatormode() and enable_anti_spectate then
			--// use your server side trigger for kick player and discord log \\--
			--// gunakan trigger server side kalian untuk kick player dan log discord \\-- 
			msec = 1*60000
		end

		Wait(msec)
	end
end)

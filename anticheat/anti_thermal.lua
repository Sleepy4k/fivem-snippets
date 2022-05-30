local enbale_anti_thermal = true

--// don't touch this please \\--
local ispedonfoot = IsPedOnFoot
local getusingseethrough = GetUsingseethrough

CreateThread(function()
    while true do
        local msec = 500
        local ped = PlayerPedId()

        if ispedonfoot(ped) and enbale_anti_thermal then
            if getusingseethrough() then
                msec = 0
                --// use your server side trigger for kick player and discord log \\--
				--// gunakan trigger server side kalian untuk kick player dan log discord \\-- 
            end
        end

        Wait(msec)
    end
end)

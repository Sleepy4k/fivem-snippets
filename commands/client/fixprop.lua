if Config.EnableFixprop == true then
    RegisterCommand(Config.FixpropCommand, function()
        local ped = PlayerPedId()
        for k, v in pairs(GetGamePool('CObject')) do
            if IsEntityAttachedToEntity(ped, v) then
                SetEntityAsMissionEntity(v, true, true)
                DetachEntity(obj, true, false)
                DeleteObject(v)
                DeleteEntity(v)
                fixprop(_U('notif_when_fixprop'))
            end
        end
    end)
end
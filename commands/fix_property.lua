local notif = false

RegisterCommand('fixprop', function(source, args, RawCommand)
    local ped = PlayerPedId()
    local game_pool = GetGamePool('CObject')

    for k,v in pairs(game_pool) do
        if IsEntityAttachedToEntity(ped, v) then
            SetEntityAsMissionEntity(v, true, true)
            DetachEntity(v, true, false)
            DeleteObject(v)
            DeleteEntity(v)
            notif = true
        end
    end

    if notif then
        --// notif player when successfuly fix prop \\--
        --// notif player ketika berhasil menghilangkan prop \\--
        notif = false
    end
end)
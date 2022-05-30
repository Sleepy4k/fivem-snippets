local notif = false

--// don't touch this please \\--
local getgamepool = GetGamePool
local detachentity = DetachEntity
local deleteobject = DeleteObject
local deleteentity = DeleteEntity
local setentityasmissionentity = SetEntityAsMissionEntity
local isentityattachedtoentity = IsEntityAttachedToEntity

RegisterCommand('fixprop', function(source, args, RawCommand)
    local ped = PlayerPedId()
    local game_pool = getgamepool('CObject')

    for k,v in pairs(game_pool) do
        if isentityattachedtoentity(ped, v) then
            setentityasmissionentity(v, true, true)
            detachentity(v, true, false)
            deleteobject(v)
            deleteentity(v)
            notif = true
        end
    end

    if notif then
        --// notif player when successfuly fix prop \\--
        --// notif player ketika berhasil menghilangkan prop \\--
        notif = false
    end
end)
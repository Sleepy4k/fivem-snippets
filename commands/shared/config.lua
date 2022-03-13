Config                          = {}

--// Fix Prop //--
Config.EnableFixprop            = true
Config.FixpropCommand           = "fixprop"

function fixprop(msg)
    exports['naka_9z5c2s1h']:Alert("System Info", msg, 2500, 'info')
end

--// Fix Animation //--
Config.EnableFixanim            = true
Config.FixanimCommand           = "fixanim"

function kendaraan(msg)
    exports['naka_9z5c2s1h']:Alert("System Info", msg, 2500, 'info')
end

function jatuh(msg)
    exports['naka_9z5c2s1h']:Alert("System Info", msg, 2500, 'info')
end

function udara(msg)
    exports['naka_9z5c2s1h']:Alert("System Info", msg, 2500, 'info')
end

--// Fix Invisible //--
Config.EnableFixinvis           = true
Config.FixinvisCommand          = "fixinvis"
Config.invisinterval            = 5
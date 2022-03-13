local density = Config.Density
local interval = Config.DensityInterval

if Config.EnableDensity == true then
    CreateThread(function()
        while true do
            local p = PlayerPedId()
            local pV = GetVehiclePedIsUsing(p)

            SetParkedVehicleDensityMultiplierThisFrame(density)
            SetVehicleDensityMultiplierThisFrame(density)
            SetRandomVehicleDensityMultiplierThisFrame(density)
            SetPedDensityMultiplierThisFrame(density)
            SetScenarioPedDensityMultiplierThisFrame(density, density) -- Walking NPC Density
    
            local x,y,z = table.unpack(GetEntityCoords(p))
            ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
            RemoveVehiclesFromGeneratorsInArea(x - 800.0, y - 800.0, z - 800.0, x + 800.0, y + 800.0, z + 800.0);
            
            if pV ~= 0 and Config.DisableBikeHelmet == true then 
                SetPedConfigFlag(p, 35, false) 
            end
    
            Wait(interval)
        end
    end)
end
Citizen.CreateThread( function()
    while true do
      Citizen.Wait(0)        --Edit this if the resource is using too much resources.   
      local p = GetPlayerPed(-1)
      local pV = GetVehiclePedIsUsing(p)
      if pV ~= 0 then SetPedConfigFlag(p, 35, false) end
    end    
end)

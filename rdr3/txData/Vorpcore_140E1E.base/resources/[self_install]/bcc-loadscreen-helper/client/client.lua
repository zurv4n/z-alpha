local online = false
local spacebar = false

RegisterNetEvent("bcclh:handle")
AddEventHandler("bcclh:handle", function()
    online = true
end)

--SpaceBar 0xD9D0E1C0
function whenKeyJustPressed(key)
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end


RegisterNUICallback('isgameinitiated', function(data, cb)
    cb({
        online = online,
        spacebar = spacebar
    })
end)
-- TODO: Stop while look when the key has been pressed as it is no longer needed.
local active = true
Citizen.CreateThread(function()
    while true and active do
        Citizen.Wait(0)
        if whenKeyJustPressed(0xD9D0E1C0) then
            spacebar = true
            active = false
        end
    end
end)
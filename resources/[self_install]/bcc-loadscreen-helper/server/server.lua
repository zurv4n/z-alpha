RegisterNetEvent('playerJoining')
AddEventHandler('playerJoining', function()
    local _src = source
    TriggerClientEvent('bcclh:handle', _src)
end)
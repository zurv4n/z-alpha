local Inventory = exports.vorp_inventory:vorp_inventoryApi()
local VorpCore = {}
local RewardAmount = nil

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

RegisterNetEvent('herb:giveHarvestItems')
AddEventHandler("herb:giveHarvestItems", function(itemName, itemCount)
    local _source = source
    local iteminfo = Inventory.getDBItem(_source, itemName)
    local hasCount = Inventory.getItemCount(_source, itemName)
    
    local canCarry = function() -- This because canCarryItem returns a message (undesireable)
        if itemCount + hasCount <= 10 then
            return true
        end
    end

    if canCarry then
        Inventory.addItem(_source, itemName, itemCount)
        TriggerClientEvent("vorp:TipBottom", _source, "You have collected "..itemCount.." "..iteminfo.label, 4000)
    elseif Inventory.canCarryItem(_source, itemName, 1) then
        TriggerClientEvent("vorp:TipBottom", _source, "You have collected 1 "..iteminfo.label, 4000)
    else
        TriggerClientEvent("vorp:TipBottom", _source, "Not enough space for "..iteminfo.label, 4000)
    end
end)

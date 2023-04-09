local VorpCore = {}
VorpInv = exports.vorp_inventory:vorp_inventoryApi()

TriggerEvent("getCore",function(core)
    VorpCore = core
end)








-------------------
-- Intit Storage --


Citizen.CreateThread(function()
    for _, trashcan in pairs(Config.trashcans) do
        VorpInv.registerInventory("trashcan_"..tostring(_), Language.trashcan,trashcan.itemLimit, true, true, true)
        if next(trashcan.limitedItems) then
            for item, amount in pairs(trashcan.limitedItems) do
                VorpInv.setInventoryItemLimit("trashcan_"..tostring(_), tostring(item), amount)
            end     
        end
        if next(trashcan.limitedWeapons) then
            for item, amount in pairs(trashcan.limitedWeapons) do
                VorpInv.setInventoryWeaponLimit("trashcan_"..tostring(_), tostring(item), amount)
            end     
        end
    end
    -- clear items out of trashcan when its a specific day of the week
    if Config.clearTrashcanDay then
        local day = os.date("%H")
        DebugPrint("Current Hour: " .. day)
        if tonumber(day) == tonumber(Config.clearTrashcanDay) then
            DebugPrint('clearing trashcans')
            for _, trashcan in pairs(Config.trashcans) do

                --[[ MySQL.Async.execute("DELETE FROM character_inventories WHERE inventory_zype = @invType", {["@invType"] = "trashcan_"..tostring(_)}, function()
                    DebugPrint("Trashcan cleared:".."trashcan_"..tostring(_))
                end) ]]
                exports.ghmattimysql:execute("SELECT ic.id, i.item, ci.amount, ic.metadata, ci.created_at FROM items_crafted ic\
                LEFT JOIN character_inventories ci on ic.id = ci.item_crafted_id\
                LEFT JOIN items i on ic.item_id = i.id\
                WHERE ci.inventory_type = @invType;", {
                    ['invType'] = "trashcan_"..tostring(_)
                }, function (res)
                    DebugPrint(res)
                    if res ~= nil then
                        for _, item in pairs(res) do
                            MySQL.Async.execute("DELETE FROM character_inventories WHERE item_crafted_id = @itemid AND inventory_type = @invType;", {
                                ['itemid'] =  tonumber(item.id),
                                ['invType'] =  tostring("trashcan_"..tostring(_))
                            }, function ()
                                MySQL.Async.execute("DELETE FROM items_crafted WHERE id = @itemid;", {
                                    ['itemid'] =  tonumber(item.id)
                                })
                            end)
                        end
                        DebugPrint("Trashcan cleared:".."trashcan_"..tostring(_))
                    end
                end)
            end
            
        end
    end
end)




-------------------
-- Open Trashcan --

RegisterServerEvent('twh_trashcan:openTrashcan')
AddEventHandler('twh_trashcan:openTrashcan', function(trashcan)
    local _source = source
    local invId = "trashcan_"..tostring(trashcan)
    VorpInv.OpenInv(_source, invId)
end)
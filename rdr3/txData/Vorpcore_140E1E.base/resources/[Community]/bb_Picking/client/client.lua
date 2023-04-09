local keys = { ['G'] = 0x760A9C6F, ['S'] = 0xD27782E3, ['W'] = 0x8FD015D8, ['H'] = 0x24978A28, ['G'] = 0x5415BE48, ["ENTER"] = 0xC7B5340A, ['E'] = 0xDFF812F9,["BACKSPACE"] = 0x156F7119 }
local still = 0
local isHarvesting = false
local prompts = {}
local PromptKey
local PromptGroup = GetRandomIntInRange(0, 0xffffff)
local pcoords = nil
local active = false
local PickedBushes = {}
local progressbar = exports.vorp_progressbar:initiate()


-- ############################## Interaction Menu ##############################--

function Pick()
    Citizen.CreateThread(function()
        local str = Config.Picktext
        PickingPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(PickingPrompt, Config.Prompt)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(PickingPrompt, str)
        PromptSetEnabled(PickingPrompt, true)
        PromptSetVisible(PickingPrompt, true)
        PromptSetHoldMode(PickingPrompt, true)
        PromptSetGroup(PickingPrompt, PromptGroup)
        PromptRegisterEnd(PickingPrompt)
    end)
end

Citizen.CreateThread(function()
    Pick()
    while true do
        Citizen.Wait(2)
        local sleep = true
        local playerped = PlayerPedId()
        if not IsPedOnMount(playerped) and not IsPedInAnyVehicle(playerped) and not IsPedDeadOrDying(playerped) then
            local x, y, z = table.unpack(GetEntityCoords(playerped))
            for prop,item in pairs(Config.collectables) do
                local NearPickable = DoesObjectOfTypeExistAtCoords(x, y, z, 1.5, GetHashKey(tostring(prop)), true)
                if NearPickable and not InArray(PickedBushes, tostring(prop)) then
                    sleep = false
                    if active == false then
                        local PickingGroupName = CreateVarString(10, 'LITERAL_STRING', "Harvest plant")
                        PromptSetActiveGroupThisFrame(PromptGroup, PickingGroupName)
                    end
                    if PromptHasHoldModeCompleted(PickingPrompt) then
                        active = true
                        SetCurrentPedWeapon(playerped, GetHashKey("WEAPON_UNARMED"), true, 0, false, false)
                        Citizen.Wait(500)
                        TriggerEvent("herb:harvest", item, tostring(prop))
                    end
                end
            end
        end
        if sleep then
            Citizen.Wait(1000)
        end
    end
end)
--############################## END Interaction Menu ##############################--

RegisterNetEvent('herb:harvest', function(values, picktype)
    local playerPed = PlayerPedId()
    local itemArrayLength = GetArrayLength(values.items)    
    local randomItem = math.random(1, itemArrayLength)
    local arrayCount = 1
    local itemCount = 0
    local item

    for k,v in pairs(values.items) do
        if arrayCount == randomItem then
            itemCount = math.random(1, v)
            item = k
        end
        arrayCount = arrayCount + 1
    end
    progressbar.start('Searching...', Config.HarvestTime, function ()
        TriggerServerEvent('herb:giveHarvestItems', item, itemCount)
        active = false
        ClearPedTasksImmediately(playerPed)
    end)
    goCollect(picktype)
end)

function goCollect(picktype)
    local playerPed = PlayerPedId()
    RequestAnimDict("mech_pickup@plant@berries")
    while not HasAnimDictLoaded("mech_pickup@plant@berries") do
        Wait(100)
    end
    table.insert(PickedBushes, tostring(picktype))
    TaskPlayAnim(playerPed, "mech_pickup@plant@berries", "enter_lf", 8.0, -0.5, -1, 0, 0, true, 0, false, 0, false)
    Wait(800)
    TaskPlayAnim(playerPed, "mech_pickup@plant@berries", "base", 8.0, -0.5, -1, 0, 0, true, 0, false, 0, false)
    Wait(2300)
    Citizen.CreateThread(function()
        Citizen.Wait(Config.PickCooldown)
        table.remove(PickedBushes, GetArrayKey(PickedBushes, tostring(picktype)))
    end)
end

--############################## END Events ##############################--

--############################## Functions ##############################--

function GetArrayLength(array)
    local arrayLength = 0
    for k,v in pairs(array) do
        arrayLength = arrayLength + 1
    end
    return arrayLength
end


function round(num, idp)
    local mult = 10^(idp or 0)
    return math.floor(num * mult + 0.5) / mult
end

function GetArrayKey(array, value)
    for k, v in pairs(array) do
        if v == value then return k end
    end
    return false
end

function InArray(array, item)
    for k, v in pairs(array) do
        if v == item then return true end
    end
    return false
end
--############################## END Functions ##############################--
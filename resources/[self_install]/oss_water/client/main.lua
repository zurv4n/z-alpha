local VORPcore = {}
local Canteen
local Filling = false
local WaterTypes = {
    [1] = { ["name"] = "Sea of Coronado", ["waterhash"] = -247856387, ["watertype"] = "lake" },
    [2] = { ["name"] = "San Luis River", ["waterhash"] = -1504425495, ["watertype"] = "river" },
    [3] = { ["name"] = "Lake Don Julio", ["waterhash"] = -1369817450, ["watertype"] = "lake" },
    [4] = { ["name"] = "Flat Iron Lake", ["waterhash"] = -1356490953, ["watertype"] = "lake" },
    [5] = { ["name"] = "Upper Montana River", ["waterhash"] = -1781130443, ["watertype"] = "river" },
    [6] = { ["name"] = "Owanjila", ["waterhash"] = -1300497193, ["watertype"] = "river" },
    [7] = { ["name"] = "HawkEye Creek", ["waterhash"] = -1276586360, ["watertype"] = "river" },
    [8] = { ["name"] = "Little Creek River", ["waterhash"] = -1410384421, ["watertype"] = "river" },
    [9] = { ["name"] = "Dakota River", ["waterhash"] = 370072007, ["watertype"] = "river" },
    [10] = { ["name"] = "Beartooth Beck", ["waterhash"] = 650214731, ["watertype"] = "river" },
    [11] = { ["name"] = "Lake Isabella", ["waterhash"] = 592454541, ["watertype"] = "lake" },
    [12] = { ["name"] = "Cattail Pond", ["waterhash"] = -804804953, ["watertype"] = "lake" },
    [13] = { ["name"] = "Deadboot Creek", ["waterhash"] = 1245451421, ["watertype"] = "river" },
    [14] = { ["name"] = "Spider Gorge", ["waterhash"] = -218679770, ["watertype"] = "river" },
    [15] = { ["name"] = "O'Creagh's Run", ["waterhash"] = -1817904483, ["watertype"] = "lake" },
    [16] = { ["name"] = "Moonstone Pond", ["waterhash"] = -811730579, ["watertype"] = "lake" },
    [17] = { ["name"] = "Roanoke Valley", ["waterhash"] = -1229593481, ["watertype"] = "river" },
    [18] = { ["name"] = "Elysian Pool", ["waterhash"] = -105598602, ["watertype"] = "lake" },
    [19] = { ["name"] = "Heartland Overflow", ["waterhash"] = 1755369577, ["watertype"] = "swamp" },
    [20] = { ["name"] = "Lagras", ["waterhash"] = -557290573, ["watertype"] = "swamp" },
    [21] = { ["name"] = "Lannahechee River", ["waterhash"] = -2040708515, ["watertype"] = "river" },
    [22] = { ["name"] = "Dakota River", ["waterhash"] = 370072007, ["watertype"] = "river" },
    [23] = { ["name"] = "Random1", ["waterhash"] = 231313522, ["watertype"] = "river" },
    [24] = { ["name"] = "Random2", ["waterhash"] = 2005774838, ["watertype"] = "river" },
    [25] = { ["name"] = "Random3", ["waterhash"] = -1287619521, ["watertype"] = "river" },
    [26] = { ["name"] = "Random4", ["waterhash"] = -1308233316, ["watertype"] = "river" },
    [27] = { ["name"] = "Random5", ["waterhash"] = -196675805, ["watertype"] = "river" },
}

TriggerEvent("getCore", function(core)
    VORPcore = core
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local player = PlayerPedId()
        local Coords = GetEntityCoords(player)
        local waterpump = DoesObjectOfTypeExistAtCoords(Coords.x, Coords.y, Coords.z, 1.0, GetHashKey("p_waterpump01x"), 0) -- prop required to interact
        if waterpump then
            DrawTxt("Fill Canteen ~t6~[ENTER]", 0.50, 0.95, 0.7, 0.5, true, 255, 255, 255, 255, true)
            if IsControlJustPressed(0, 0xC7B5340A) then
                TriggerServerEvent('oss_water:CheckIfEmpty')
            end
        end
    end
end)

RegisterNetEvent('oss_water:CanteenEmpty')
AddEventHandler('oss_water:CanteenEmpty', function()
    DoPromptAnim("amb_work@prop_human_pump_water@female_b@idle_a", "idle_a", 2);
    Wait(10000)
    ClearPedTasks(PlayerPedId())
    TriggerServerEvent("oss_water:FillCanteen")

end)

function DoPromptAnim(dict, anim, loop)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(100)
    end
    TaskPlayAnim(PlayerPedId(), dict, anim, 8.0, 8.0, 13000, loop, 0, false, false, false)
end

RegisterNetEvent('oss_water:StartFilling')
AddEventHandler('oss_water:StartFilling', function()
    if not Filling then
        Filling = true
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)
        local water = Citizen.InvokeNative(0x5BA7A68A346A5A91, coords.x, coords.y, coords.z) -- GetWaterMapZoneAtCoords
        local foundWater = false
        for k, _ in pairs(WaterTypes) do
            if water == WaterTypes[k]["waterhash"] then
                foundWater = true
                CrouchAnimAndAttach()
                VORPcore.NotifyRightTip(Config.fill_1, 5000)
                Wait(6000)
                ClearPedTasks(player)
                DeleteObject(Canteen)
                DeleteEntity(Canteen)
                TriggerServerEvent("oss_water:FillCanteen")
                break
            end
        end
        Filling = false
        if foundWater == false then
            VORPcore.NotifyRightTip(Config.cantfill, 5000)
        end
    end
end)


function CrouchAnimAndAttach()
    local dict = "script_rc@cldn@ig@rsc2_ig1_questionshopkeeper"
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(100)
    end

    local player = PlayerPedId()
    local coords = GetEntityCoords(player)
    local boneIndex = GetEntityBoneIndexByName(player, "SKEL_R_HAND")
    local modelHash = GetHashKey("p_cs_canteen_hercule")
    LoadModel(modelHash)
    Canteen = CreateObject(modelHash, coords.x, coords.y, coords.z, true, false, false)
    SetEntityVisible(Canteen, true)
    SetEntityAlpha(Canteen, 255, false)
    Citizen.InvokeNative(0x283978A15512B2FE, Canteen, true) -- SetRandomOutfitVariation
    SetModelAsNoLongerNeeded(modelHash)
    AttachEntityToEntity(Canteen, player, boneIndex, 0.12, 0.09, -0.05, 306.0, 18.0, 0.0, false, false, false, true, 2, true)
    TaskPlayAnim(player, dict, "inspectfloor_player", 1.0, 8.0, -1, 1, 0, false, false, false)
end

function LoadModel(model)
    local attempts = 0
    while attempts < 100 and not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(100)
        attempts = attempts + 1
    end
    return IsModelValid(model)
end

RegisterNetEvent('oss_water:Drink')
AddEventHandler('oss_water:Drink', function()
    TriggerEvent("vorpmetabolism:changeValue", "Thirst", 500)
    DrinkAnim()
end)

function DrinkAnim()
    local player = PlayerPedId()
    if Citizen.InvokeNative(0x6D9F5FAA7488BA46, player) then -- IsPedMale
        TaskStartScenarioInPlace(player, GetHashKey('WORLD_HUMAN_DRINK_FLASK'), 15000, true, false, false, false)
        Wait(15000)
        VORPcore.NotifyRightTip(Config.drink_1, 500)
        ClearPedTasksImmediately(player)
    else
        TaskStartScenarioInPlace(player, GetHashKey('WORLD_HUMAN_DRINKING'), 15000, true, false, false, false)
        Wait(15000)
        VORPcore.NotifyRightTip(Config.drink_1, 500)
        ClearPedTasksImmediately(player)
    end
end

function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str)
    --Citizen.InvokeNative(0x66E0276CC5F6B9DA, 2)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
    SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
    Citizen.InvokeNative(0xADA9255D, 1);
    DisplayText(str, x, y)
end



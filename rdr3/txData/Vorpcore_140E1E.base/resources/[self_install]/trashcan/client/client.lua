------------------------
-- Threads and Functions
------------------------

local function InitPrompts() --itialize the prompts
    DebugPrint('InitPrompts')
    --near trashcan
    CreatePromptButton("initial", Language.open, Config.keys.open)
end

Citizen.CreateThread(function()
    InitPrompts()

    while true do
        Citizen.Wait(0)
        local sleep = true

        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        for _, trashcanData in pairs(Config.trashcans) do
            local trashcanCoords = trashcanData.coords
            local distance = #(playerCoords - trashcanCoords)
            local radius = 1.5
            if trashcanData.radius then
                radius = trashcanData.radius
            end
            if distance < radius then
                sleep = false
                DisplayPrompt("initial", Language.trashcan)
                if IsPromptCompleted("initial", Config.keys.open) then
                    DebugPrint('trashcan opened')
                    TriggerServerEvent('twh_trashcan:openTrashcan', _)
                end
            end
        end
        if sleep then
            Citizen.Wait(500)
        end
    end
end)



--object spawner
Citizen.CreateThread(function() -- Spawnmanager for trashcans
    while true do
        for _, trashcanData in pairs(Config.trashcans) do
            if trashcanData.model then
                local playerCoords = GetEntityCoords(PlayerPedId())
                local distance = #(playerCoords - trashcanData.coords)
                if distance < Config.spawnDistance then
                    if not trashcanData.spawned then
                        DebugPrint("Spawning trashcan for coords: " .. trashcanData.coords)
                        SpawnObject(trashcanData.model, trashcanData.coords, function(obj)
                            trashcanData.obj = obj
                            trashcanData.spawned = true
                            if trashcanData.heading then
                                SetEntityHeading(obj, trashcanData.heading)
                            end
                            FreezeEntityPosition(obj, true)
                            SetEntityCollision(obj, true, true)
                        end)
                    end
                else
                    if trashcanData.spawned then
                        DebugPrint("Despawning trashcan")
                        DeleteObject(trashcanData.obj)
                        trashcanData.spawned = false
                    end
                end
            end     
        end
        Citizen.Wait(2000)
    end
end)





------------------------
-- Events
------------------------


--delete all trashcans at ressource stop
AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        for _, trashcanData in pairs(Config.trashcans) do
            if trashcanData.spawned then
                DeleteObject(trashcanData.obj)
            end
        end
    end
end)
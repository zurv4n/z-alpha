-- Pulls vorp core, and utils for the notify
local VORPcore = {}
TriggerEvent("getCore", function(core)
    VORPcore = core
end)
local VORPutils = {}
TriggerEvent("getUtils", function(utils)
    VORPutils = utils
end)
--ends pulling vorp core and utils

--This is what handle the planting of the crop
RegisterNetEvent('hd_farming:plantcrop') --Registers a client event for the server to trigger
AddEventHandler('hd_farming:plantcrop', function(psource, prop, reward, amount, timer, isoutsideoftown) --Makes the event have code to run and catches those 5 variables from the server
    ---------------------------PLANTING ANIMATION SETUP----------------------------------------------
    if isoutsideoftown == true then -- if variable is true (you are out of town or config = true then)
        if Config.Debug == false then --If debug in config is set to false then(if its true it skips the animation entirely)
            FreezeEntityPosition(PlayerPedId(), true) --freezes player
            TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_FARMER_RAKE'), 12000, true, false, false, false) --triggers anim
            VORPcore.NotifyRightTip(Config.Language.Raking,16000) --Prints on the players screen what is set in config.language table
            Wait(12000) --waits 12 seconds (until anim is over)
            ClearPedTasksImmediately(PlayerPedId()) --clears anims
	        Wait(500) --waits half a second
            VORPcore.NotifyRightTip(Config.Language.Weeding,16000) --Prints on the players screen what is set in config.language table
            TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_FARMER_WEEDING'), 9000, true, false, false, false) --triggers anim
            Wait(9000) --waits 9 seconds(until anim is over)
            ClearPedTasksImmediately(PlayerPedId()) --clears anim
            FreezeEntityPosition(PlayerPedId(), false) --unfreezes player
            VORPcore.NotifyRightTip(Config.Language.PlantFinished,16000) --Prints on the players screen what is set in config.language table
        end
        -----------------------------CROP SPAWN SETUP----------------------------------
        local plcoord = GetEntityCoords(PlayerPedId()) --gets player coords as soon as the plant is planted
        local wateredcatch = false --creates a local variable that is set to false acts as a catch / detector
        local object = CreateObject(prop, plcoord.x, plcoord.y, plcoord.z - 1, true, true, false) --creates a networked object at the players coords
        local plantcoords = GetEntityCoords(object) --Gets the plants coordinates once the plant is planted
        local blip --creates a variable for the blip to set on and be removed later on
        if Config.PlantBlips == true then --if you have blips set true in config
            blip = VORPutils.Blips:SetBlip('Your Plant', 'blip_mp_spawnpoint', 0.2, plantcoords.x, plantcoords.y, plantcoords.z) --Sets blip variable to have a blip
        end
        local PromptGroup = VORPutils.Prompts:SetupPromptGroup() --registers a prompt group using vorp_utils
        local PromptGroup2 = VORPutils.Prompts:SetupPromptGroup() --registers a prompt group using vorp_utils
        local firstprompt = PromptGroup:RegisterPrompt(Config.Language.HarvestPrompt, 0x760A9C6F, 1, 1, true, 'hold', {timedeventhash = "MEDIUM_TIMED_EVENT"})
        local firstprompt2 = PromptGroup2:RegisterPrompt(Config.Language.WaterCropPrompt, 0x760A9C6F, 1, 1, true, 'hold', {timedeventhash = "MEDIUM_TIMED_EVENT"})
        local wateredcatch2 = false
        while true do --creates a while true do loop
            Citizen.Wait(10) --Prevents crashing
            local plcoord2 = GetEntityCoords(PlayerPedId()) --gets the players coords once everytime the loop is ran
            local dist = GetDistanceBetweenCoords(plcoord2.x, plcoord2.y, plcoord2.z, plantcoords.x, plantcoords.y, plantcoords.z, true) --Gets the distance between the player and the plant
            ---------------------TIMER SETUP / WATER CROP PROMPT SETUP / HARVEST PROMPT SETUP----------------------------
            if wateredcatch == true then --checks if the variable is true(if youve watered the plant so the timer only goes down whne plant is watered)
                timer = timer - 20 --Timer outside of if so the number goes down regardless of if your close or not. Set to minus 20(closest to a full minute as can get) every time this is run as this code runs once every 10ms had to move this out of the if dist statement, timer would only go down if you were close
            end
            if dist < 2 then --if the distance between plant and player is less than 5 then
                if wateredcatch == false then --if water catcher variable is false then (if you havent watered it yet)
                    PromptGroup2:ShowGroup(Config.Language.WaterCropPrompt) --shows the 2nd prompt group
                    DrawText3D(plantcoords.x, plantcoords.y, plantcoords.z, Config.Language.WaterCropPrompt) --draws text saying to water crop
                    if firstprompt2:HasCompleted() then --if you do  the prompt then
                        TriggerServerEvent('hd_farming:WateringBucketCheck', psource) --triggers the server event to check if you have the watering item
                        Wait(100) --waits 100 ms gives the server event time to run (This part of the code acts a see if you have the water bucket check)
                        RegisterNetEvent('hd_farming:WaterCrop') --registers a client event for the above server event to trigger
                        AddEventHandler('hd_farming:WaterCrop', function(hadbucket) --makes the event have code and catches the hadbucket variable from the server
                            if hadbucket == true then --if hadbucket is true then (if you have the full watering can item)
                                if Config.Debug == false then --if debuge is false(not in debug) then
                                    if wateredcatch2 == false then --had to add this as otherwise this ran 3 times
                                        wateredcatch2 = true --sets catch variable to 2 so this cant run again
                                        firstprompt2:DeletePrompt() --delets the prompt group once you water the plant
                                        FreezeEntityPosition(PlayerPedId(), true) --freezes player
                                        TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_BUCKET_POUR_LOW'), 7000, true, false, false, false) --plays an animation of watering the crop
                                        Wait(7000) --waits 7 seconds (until anim ends)
                                        ClearPedTasksImmediately(PlayerPedId()) --ends the animation
                                        FreezeEntityPosition(PlayerPedId(), false) --unfreezes player
                                        TriggerServerEvent('hd_farming:RemoveWaterBucket', psource) --Triggers server event and passes source
                                        VORPcore.NotifyRightTip(Config.Language.CropWatered, 4000) --places text on screen
                                        wateredcatch = true --sets the variable to true so the code below runs
                                    end
                                end
                                --anyhting placed here will run 3 times hence why i had to make the watercatch2 catch
                            elseif hadbucket == false then --else if the variable is false then
                                wateredcatch = false --sets the catch for code below false
                            end
                        end)
                    end
                elseif wateredcatch == true then --if variable is true then (if you have watered the crop)
                    if timer > 0 then --if the timer is more than 0 then (if the timer hasnt reached 0 yet)
                        local roundedtimer = timer / 60000 --Divides timer by 60000 which is one minute
                        local roundedtimer2 = (math.floor(roundedtimer * 100) / 100) --round roundedtimer so it looks prettier
                        DrawText3D(plantcoords.x, plantcoords.y, plantcoords.z, tostring(roundedtimer2) .. ' ' .. Config.Language.TimerText) --creates the text at the plants coords
                    elseif timer <= 0 then --elseif the timer is less than or is 0 then (if the timer has finished/ has reached 0)
                        DrawText3D(plantcoords.x, plantcoords.y, plantcoords.z, Config.Language.ReadytoHarvest) --Draws the text from config on the plant
                        PromptGroup:ShowGroup(Config.Language.HarvestPrompt) --Names the prompt
                        if firstprompt:HasCompleted() then --if you do the prompt then
                            firstprompt:DeletePrompt() --deletes the prompt
                            if Config.Debug == false then --if debug is false in config then play the animation.
                                FreezeEntityPosition(PlayerPedId(), true) --freezes player
                                VORPcore.NotifyRightTip(Config.Language.Harvestingcrop, 10000) --Notifies in the right side of screen
                                TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 10000, true, false, false, false) --Triggers an animation to play for 10 seconds
                                Wait(10000) --waits 10 seconds(until anim is over) then allows the rest of code to run
                                ClearPedTasksImmediately(PlayerPedId()) --ends the animation
                                FreezeEntityPosition(PlayerPedId(), false) --unfreezes player
                            end --Will add the items regardless of debug being true or false debug is just for skipping the animation
                            DeleteObject(object) --deletes the object regardless of if debug is on or not
                            if Config.PlantBlips == true then --if you have blipsset true then
                                blip:Remove() --removes the blip
                            end
                            TriggerServerEvent('hd_farming:CropHarvested', psource, reward, amount) --passes the variables back to the server to add the items to your inventory and breaks loop
                            wateredcatch = false break --resets the variable so this code can run again and breaks loop to end code
                        end
                    end
                end
            end
        end
    elseif isoutsideoftown == false then
        VORPcore.NotifyRightTip(Config.Language.Tooclosetotown, 4000)
    end
end)

--TODO still sometimes takes double input on prompt groups, but once pressed 2nd time no issue no double remove or anything so not really a big issue

--------------------------- Is Ped Currently In Water Check -------------------------------------------------
RegisterNetEvent('hd_farming:PedInWaterClientCatch')
AddEventHandler('hd_farming:PedInWaterClientCatch', function(_source)
    local inwater = IsEntityInWater(PlayerPedId()) --gets if the player is in water 1 if is false if not
    if inwater == 1 then --if you are in water then
        if Config.Debug == false then --if debug is false then
            FreezeEntityPosition(PlayerPedId(), true) --freezes player in place
            TaskStartScenarioInPlace(PlayerPedId(), GetHashKey("WORLD_CAMP_JACK_ES_BUCKET_FILL"), 7000, true, false, false, false) --triggers anim
            Wait(7000) --waits 7 seconds(until anim is over)
            ClearPedTasksImmediately(PlayerPedId()) --stops animation
            FreezeEntityPosition(PlayerPedId(), false) --unfreezes player
        end
        TriggerServerEvent('hd_farming:RefillWateringCan', _source) --triggers server event to add the item(goes regardless of debug)
    elseif inwater == false then --elseif not in water then
        VORPcore.NotifyRightTip(Config.Language.Notinwater) --print not in water
    end
end)

-------------------------------- 3D Text Setup ----------------------------------------------------
function DrawText3D(x, y, z, text)
	local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x, y, z)
	local px,py,pz=table.unpack(GetGameplayCamCoord())
	local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
	local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
	if onScreen then
	  SetTextScale(0.30, 0.30)
	  SetTextFontForCurrentCommand(1)
	  SetTextColor(255, 255, 255, 215)
	  SetTextCentre(1)
	  DisplayText(str,_x,_y)
	  local factor = (string.len(text)) / 225
	  DrawSprite("feeds", "hud_menu_4a", _x, _y+0.0125,0.015+ factor, 0.03, 0.1, 35, 35, 35, 190, 0)
	end
end

----------------------- Distance Check for player to town coordinates --------------------------------
RegisterNetEvent('hd_farming:IsPLayerNearTownCheck')
AddEventHandler('hd_farming:IsPLayerNearTownCheck', function(_source, v)
    local isoutsideoftown = false --creates a variable used as a catch to see if your in a town
    if Config.Plantintowns == true then --if the config value is set to true (allowed to plant in town then)
        isoutsideoftown = true --sets variable to true to allow if statement to trigger server event
    elseif Config.Plantintowns == false then --elseif config is false then
        for k, e in pairs(Config.Towns) do --opens up the town table and creates a for loop
            local pl = GetEntityCoords(PlayerPedId()) --gets your coords once per loop run
            local dist = GetDistanceBetweenCoords(pl.x, pl.y, pl.z, e.coordinates.x, e.coordinates.y, e.coordinates.z, false) --gets the distance between you and the coord
            if Config.Debug == true then --if debug mode is true then
                print('Is  ' .. e.coordinates.x .. ' ' .. e.coordinates.y .. ' ' .. e.coordinates.z .. ' This far from those coords ' .. dist)
                print('is near  town')
            end
            if dist > e.range then --if dist is more htan 150 then
                isoutsideoftown = true --set to true
            elseif dist < e.range then --if its less then
                VORPcore.NotifyRightTip(Config.Language.Tooclosetotown, 4000)
                isoutsideoftown = false break --sets it too false and breaks the for loop
            end
        end
    end
    if isoutsideoftown == true then --after all the above code runs if outside of town = true then
        TriggerServerEvent('hd_farming:PlayerNotNearTown', _source, v, isoutsideoftown) --trigger server event to continue planting
    end
end)
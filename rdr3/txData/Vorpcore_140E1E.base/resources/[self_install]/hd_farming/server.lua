--Pulls vorp inventory and core
local VorpInv = {}
VorpInv = exports.vorp_inventory:vorp_inventoryApi()
local VORPcore = {}
TriggerEvent("getCore", function(core)
  VORPcore = core
end)
--ends pulling inv and core

-------------------------------------- Main Setup -------------------------------------------------------------------------------
--Registering it usuable has to be done in a seperate thread other wise it will cause a removing dupe bug
Citizen.CreateThread(function()
  for key, v in pairs(Config.Farming) do
    VorpInv.RegisterUsableItem(v.Seedname, function(data)
      local _source = data.source
      TriggerClientEvent('hd_farming:IsPLayerNearTownCheck', data.source, _source, v)
    end)
  end
end)

RegisterServerEvent('hd_farming:PlayerNotNearTown') --Creates a server event
AddEventHandler('hd_farming:PlayerNotNearTown', function(_source, v, isoutsideoftown) --makes the event have code and catches _source from client
  local psource = _source
  local charjob= false
  local itemCount2 = VorpInv.getItemCount(_source, v.PlantingTool) --Checks if you have the planting tool and how many you have
  local Character = VORPcore.getUser(_source).getUsedCharacter --gets the character the player is using
  if itemCount2 > 0 then --if you have one or more of the needed plant item then
    ------------------------------------------- Job Lock True Setup ------------------------------------------------      
    if v.Joblock == true then --if the config job lock is true
      for y, e in pairs(v.Jobs) do --creates a for loop in the job table
        if Character.job == e.JobName then --if your job matches one of the jobs in the table then
          charjob = true --sets the job catch variable to true allowing the removal of items
        end
      end
      if charjob == true then --if charjob is true(you had a job listed in the table) then
        ------------------------- Job Lock Item Removal / Item Count Check / Client Event Trigger --------------------------------
        local itemCount = VorpInv.getItemCount(_source, v.Seedname) --checks to see how many of the seed you have
        if itemCount >= v.SeedsRequired then --if you have more than is required then
          VorpInv.subItem(_source, v.Seedname, v.SeedsRequired) --removes the seeds from your inventory
          local prop = v.PlantProp --setst this variable to the model set in the config
          local reward = v.HarvestItem --sets this variable to the reward item set in the config
          local amount = v.HarvestAmount --sets this variable to the amount of the rewards you get set in the config
          local timer = v.TimetoGrow --ssets the variable to the config option
          TriggerClientEvent('hd_farming:plantcrop', _source, psource, prop, reward, amount, timer, isoutsideoftown) --triggers the client event and passes the 4 variables
          charjob = false --resets the variable so the code runs properly next time its used
        end
      else --else your job was not listed in the table then
        VORPcore.NotifyRightTip(_source, Config.Language.Wrongjob, 10000) --prints on players screen
        charjob = false --resets the variable so the code works properly next time its used
      end
      -------------------------------- Job Lock False Setup --------------------------------------
    elseif v.Joblock == false then
      local itemCount = VorpInv.getItemCount(_source, v.Seedname) --checks to see how many of the seed you have
      ------------------------------- Item Removal / Client Event Trigger --------------------------------------------
      if itemCount >= v.SeedsRequired then --if you have more than is required then
        VorpInv.subItem(_source, v.Seedname, v.SeedsRequired) --removes the seeds from your inventory
        local prop = v.PlantProp --setst this variable to the model set in the config
        local reward = v.HarvestItem --sets this variable to the reward item set in the config
        local amount = v.HarvestAmount --sets this variable to the amount of the rewards you get set in the config
        local timer = v.TimetoGrow --ssets the variable to the config option
        TriggerClientEvent('hd_farming:plantcrop', _source, psource, prop, reward, amount, timer, isoutsideoftown) --triggers the client event and passes the 4 variables
      end
    end
  else --else you dont have one then
    VORPcore.NotifyRightTip(_source, Config.Language.NoTool, 10000) --prints on screen
  end
end)

------------------------------------------- Crop Harvested Setup -----------------------------------------------
RegisterServerEvent('hd_farming:CropHarvested') --makes a server event
AddEventHandler('hd_farming:CropHarvested', function(psource, reward, amount) --makes the vent have code to run, and recieves the 3 variables from client. _source is necessary as source wont work, as the whole code is events
  VorpInv.addItem(psource, reward, amount) --adds the set items
  VORPcore.NotifyRightTip(psource, Config.Language.HarvestComplete, 10000) --prints on players screen
end)

---------------------------------------- Watering Bucket Check -------------------------------------
RegisterServerEvent('hd_farming:WateringBucketCheck')
AddEventHandler('hd_farming:WateringBucketCheck', function(psource)
  local itemCount = VorpInv.getItemCount(psource, Config.FullWaterBucket) --Checks if you have the watering bucket and how many you have
  if itemCount > 0 then -- if you have more than 0 then
    local hadbucket = true --sets variable to true
    TriggerClientEvent('hd_farming:WaterCrop', psource, hadbucket) --triggers the client event and passes hadbucket variable for client side catch
  else --else its not more than 0 then
    local hadbucket = false --sets variable to false
    VORPcore.NotifyRightTip(psource, Config.Language.Nowaterbucket) --notifies in right side of screen you dont have the item
    TriggerClientEvent('hd_farming:WaterCrop', psource, hadbucket) --triggers client event and pases hadbucket for client side catch
  end
end)

--------------------------- Refill Bucket In Water Setup / Removing full bucket and adding empty after watering plant--------------------------------------
Citizen.CreateThread(function() --Create thread this runs the entire time
  VorpInv.RegisterUsableItem(Config.EmptyWaterBucket, function(data) --registers the item usable
    local _source = data.source --sets _source to data.source so we can pass to client
    TriggerClientEvent('hd_farming:PedInWaterClientCatch', data.source, _source) --triggers client event to see if ped is in water
  end)
end)

RegisterServerEvent('hd_farming:RefillWateringCan') --registers server event
AddEventHandler('hd_farming:RefillWateringCan', function(_source) --adds code for the event to run, and catches _source from client
  VORPcore.NotifyRightTip(_source, Config.Language.BucketFilled) --displays on screen
  VorpInv.subItem(_source, Config.EmptyWaterBucket, 1) --removes 1 item from config
  VorpInv.addItem(_source, Config.FullWaterBucket, 1) --adds one item from config
end)

RegisterServerEvent('hd_farming:RemoveWaterBucket') -- same as above
AddEventHandler('hd_farming:RemoveWaterBucket', function(psource)
  VorpInv.subItem(psource, Config.FullWaterBucket, 1)
  VorpInv.addItem(psource, Config.EmptyWaterBucket, 1)
end)
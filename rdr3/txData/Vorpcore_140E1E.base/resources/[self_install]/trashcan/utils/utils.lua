prompts = {}
promptGroups = {}
promptName = ''
timerkey = {}

function DebugPrint(...)
    if Config.debug then
        print(...)
    end
end

function RequestModelHelper(model, cb)
	if not HasModelLoaded(model) and IsModelInCdimage(model) then
		RequestModel(model)
		while not HasModelLoaded(model) do
			Citizen.Wait(0)
		end
	end

	if cb ~= nil then
		cb()
	end
end

function SpawnObject(model, coords, cb)  
	local vector = type(coords) == "vector3" and coords or vec(coords.x, coords.y, coords.z)
	RequestModelHelper(model)
	model = type(model) == 'number' and model or GetHashKey(model)
	local obj = CreateObject(model, vector.xyz, false, false, true)
	if cb then
		cb(obj)
	end

end

function PlayAnimation(ped, animdict,animname,duration,flag) 
    if not DoesAnimDictExist(animdict) then
		print("Invalid animation: " .. animdict)
		return
	end

	RequestAnimDict(animdict)

	while not HasAnimDictLoaded(animdict) do
		Citizen.Wait(0)
	end

	TaskPlayAnim(ped, animdict, animname, 0.0, 0.0, duration, flag, 1.0, false, false, false, "", false)

	RemoveAnimDict(animdict)
end


function Switch(c)
    local swtbl = {
      casevar = c,
      caseof = function (self, code)
        local f
        if (self.casevar) then
          f = code[self.casevar] or code.default
        else
          f = code.missing or code.default
        end
        if f then
          if type(f)=="function" then
            return f(self.casevar,self)
          else
            error("case "..tostring(self.casevar).." not a function")
          end
        end
      end
    }
    return swtbl
end



-------------
-- PROMPTS --
-------------

function IsPromptCompleted(group,key)
	if not promptGroups[group].prompts[tostring(key)] then
		return false
	end
	if UiPromptHasHoldMode(promptGroups[group].prompts[tostring(key)]) then
	  if PromptHasHoldModeCompleted(promptGroups[group].prompts[tostring(key)]) then
		UiPromptSetEnabled(promptGroups[group].prompts[tostring(key)], false)
		Citizen.CreateThread(function()
		  local group = group
		  local key = key
		  while IsDisabledControlPressed(0,key) do
			Wait(0)
		  end
		  UiPromptSetEnabled(promptGroups[group].prompts[tostring(key)], true)
		end)
		return true
	  end
	else
	  if IsControlJustPressed(0,key) then
		return true
	  end
	end
	return false
end
  
function CreatePromptButton(group, str, key, holdTime, secondkey)
	--Check if group exist
	if (promptGroups[group] == nil) then
	  promptGroups[group] = {
		group = GetRandomIntInRange(0, 0xffffff),
		prompts = {}
	  }
	end
	promptGroups[group].prompts[tostring(key)] = PromptRegisterBegin()
	PromptSetControlAction(promptGroups[group].prompts[tostring(key)], key)
	if secondkey then
		PromptSetControlAction(promptGroups[group].prompts[tostring(key)], secondkey)
		DebugPrint("Second Key registered: "..secondkey)
	end
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(promptGroups[group].prompts[tostring(key)], str)
	PromptSetEnabled(promptGroups[group].prompts[tostring(key)], true)
	PromptSetVisible(promptGroups[group].prompts[tostring(key)], true)
	if holdTime then
	  PromptSetHoldMode(promptGroups[group].prompts[tostring(key)], holdTime)
	end
	PromptSetGroup(promptGroups[group].prompts[tostring(key)], promptGroups[group].group)
	PromptRegisterEnd(promptGroups[group].prompts[tostring(key)])
end

  --function to delete prompt button out of group and delete group if empty
function DeletePromptButton(group, key)
	if (promptGroups[group] ~= nil) then
	  if (promptGroups[group].prompts[tostring(key)] ~= nil) then
		PromptDelete(promptGroups[group].prompts[tostring(key)])
		promptGroups[group].prompts[tostring(key)] = nil
	  end
	  if (next(promptGroups[group].prompts) == nil) then
		promptGroups[group] = nil
	  end
	end
end
  
 function DisplayPrompt(group,str)
	local promptName  = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetActiveGroupThisFrame(promptGroups[group].group, promptName)
 end

 function UiPromptHasHoldMode(...)
	return Citizen.InvokeNative(0xB60C9F9ED47ABB76, ...)
 end
 
 function UiPromptDisablePromptTypeThisFrame(...)
	return Citizen.InvokeNative(0xFC094EF26DD153FA,...)
 end
 
 function UiPromptSetVisible(...)
  return Citizen.InvokeNative(0x71215ACCFDE075EE,...)
 end
 
 function UiPromptIsActive(...)
  return Citizen.InvokeNative(0x546E342E01DE71CF,...)
 end
 
function UiPromptIsEnabled(...)
  return Citizen.InvokeNative(0x0D00EDDFB58B7F28,...)
end
  
function SetPromptVisible(group,key,value)
	UiPromptSetVisible(promptGroups[group].prompts[key],value)
end

function UiPromptSetEnabled(...)
	return Citizen.InvokeNative(0x8A0FB4D03A630D21,...)
end


----------------
-- END PROMPTS --
----------------

--- Gets the stage of the peds scripted task.
-- @param ped The target ped.
-- @return The stage of the ped's scripted task. A value of 3 denotes no script task is assigned.
function Global.GetPedScriptTaskStage(ped)
	return _in(0x44b0e5e2, ped, _ri)
end

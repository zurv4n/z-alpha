--- Gets the script task command currently assigned to the ped.
-- @param ped The target ped.
-- @return The script task command currently assigned to the ped. A value of 0x811E343C denotes no script task is assigned.
function Global.GetPedScriptTaskCommand(ped)
	return _in(0x84fe084, ped, _ri)
end

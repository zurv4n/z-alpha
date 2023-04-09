--- Used to replicate a server variable onto clients.
-- @param varName The console variable name.
-- @param value The value to set for the given console variable.
function Global.SetConvarReplicated(varName, value)
	return _in(0xf292858c, _ts(varName), _ts(value))
end

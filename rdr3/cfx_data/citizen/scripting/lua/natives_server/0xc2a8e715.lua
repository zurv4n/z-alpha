--- Can be used to get a console variable casted back to `int` (an integer value).
-- @param varName The console variable to look up.
-- @param default_ The default value to set if none is found (variable not set using [SET_CONVAR](#\_0x341B16D2), or not accessible).
-- @return Returns the convar value if it can be found, otherwise it returns the assigned `default`.
function Global.GetConvarInt(varName, default_)
	return _in(0x935c0ab2, _ts(varName), default_, _ri)
end

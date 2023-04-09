--- Can be used to get a console variable of type `char*`, for example a string.
-- @param varName The console variable to look up.
-- @param default_ The default value to set if none is found.
-- @return Returns the convar value if it can be found, otherwise it returns the assigned `default`.
function Global.GetConvar(varName, default_)
	return _in(0x6ccd2564, _ts(varName), _ts(default_), _s)
end

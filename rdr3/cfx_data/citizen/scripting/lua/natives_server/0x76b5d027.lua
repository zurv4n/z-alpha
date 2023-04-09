--- Returns the value of a state bag key.
-- @return Value.
function Global.GetStateBagValue(bagName, key)
	return _in(0x637f4c75, _ts(bagName), _ts(key), _ro)
end

--- A setter for [GET_RESOURCE_KVP_STRING](#\_0x5240DA5A).
-- @param key The key to set
-- @param value The value to write
function Global.SetResourceKvp(key, value)
	return _in(0x21c7a35b, _ts(key), _ts(value))
end

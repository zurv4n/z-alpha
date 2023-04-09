--- A setter for [GET_RESOURCE_KVP_FLOAT](#\_0x35BDCEEA).
-- @param key The key to set
-- @param value The value to write
function Global.SetResourceKvpFloat(key, value)
	return _in(0x9add2938, _ts(key), value)
end

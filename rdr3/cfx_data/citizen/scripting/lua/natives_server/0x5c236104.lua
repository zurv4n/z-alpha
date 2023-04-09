--- A setter for [GET_RESOURCE_KVP_INT](#\_0x557B586A).
-- @param key The key to set
-- @param value The value to write
function Global.SetResourceKvpInt(key, value)
	return _in(0x6a2b1e8, _ts(key), value)
end

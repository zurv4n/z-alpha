--- Nonsynchronous [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
-- @param key The key to set
-- @param value The value to write
function Global.SetResourceKvpIntNoSync(key, value)
	return _in(0x26aeb707, _ts(key), value)
end

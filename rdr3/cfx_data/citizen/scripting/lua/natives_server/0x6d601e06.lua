--- Nonsynchronous [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
-- @param key The key to set
-- @param value The value to write
function Global.SetResourceKvpFloatNoSync(key, value)
	return _in(0x3517bfbe, _ts(key), value)
end

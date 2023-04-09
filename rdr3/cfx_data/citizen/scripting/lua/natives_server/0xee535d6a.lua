--- Nonsynchronous [SET_RESOURCE_KVP](#\_0x21C7A35B) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
-- @param key The key to set
-- @param value The value to write
function Global.SetResourceKvpNoSync(key, value)
	return _in(0xcf9a2ff, _ts(key), _ts(value))
end

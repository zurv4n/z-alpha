--- A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B).
-- @param key The key to fetch
-- @return The string value stored under the specified key, or nil/null if not found.
function Global.GetResourceKvpString(key)
	return _in(0x5240da5a, _ts(key), _s)
end

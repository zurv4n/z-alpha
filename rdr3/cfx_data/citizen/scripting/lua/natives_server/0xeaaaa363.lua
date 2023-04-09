--- A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8).
-- @param key The key to fetch
-- @return The integer value stored under the specified key, or 0 if not found.
function Global.GetResourceKvpInt(key)
	return _in(0x557b586a, _ts(key), _ri)
end

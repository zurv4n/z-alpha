--- A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938).
-- @param key The key to fetch
-- @return The floating-point value stored under the specified key, or 0.0 if not found.
function Global.GetResourceKvpFloat(key)
	return _in(0x35bdceea, _ts(key), _rf)
end

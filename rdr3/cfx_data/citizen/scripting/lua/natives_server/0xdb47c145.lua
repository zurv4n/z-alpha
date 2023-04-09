--- Nonsynchronous [DELETE_RESOURCE_KVP](#\_0x7389B5DF) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
-- @param key The key to delete
function Global.DeleteResourceKvpNoSync(key)
	return _in(0x4152c90, _ts(key))
end

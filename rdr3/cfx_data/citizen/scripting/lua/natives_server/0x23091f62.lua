--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
-- Registers a cached resource asset with the resource system, similar to the automatic scanning of the `stream/` folder.
-- @param resourceName The resource to add the asset to.
-- @param fileName A file name in the resource.
-- @return A cache string to pass to `REGISTER_STREAMING_FILE_FROM_CACHE` on the client.
function Global.RegisterResourceAsset(resourceName, fileName)
	return _in(0x9862b266, _ts(resourceName), _ts(fileName), _s)
end

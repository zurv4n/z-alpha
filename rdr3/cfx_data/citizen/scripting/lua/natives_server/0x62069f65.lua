--- Returns the physical on-disk path of the specified resource.
-- @param resourceName The name of the resource.
-- @return The resource directory name, possibly without trailing slash.
function Global.GetResourcePath(resourceName)
	return _in(0x61dcf017, _ts(resourceName), _s)
end

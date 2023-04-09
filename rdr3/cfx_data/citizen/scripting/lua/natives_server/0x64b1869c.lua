--- Scans the resources in the specified resource root. This function is only available in the 'monitor mode' process and is
-- not available for user resources.
-- @param rootPath The resource directory to scan.
-- @param callback A callback that will receive an object with results.
function Global.ScanResourceRoot(rootPath, callback)
	return _in(0x636f097f, _ts(rootPath), _mfr(callback))
end

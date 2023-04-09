--- Writes the specified data to a file in the specified resource.
-- Using a length of `-1` will automatically detect the length assuming the data is a C string.
-- @param resourceName The name of the resource.
-- @param fileName The name of the file.
-- @param data The data to write to the file.
-- @param dataLength The length of the written data.
-- @return A value indicating if the write succeeded.
function Global.SaveResourceFile(resourceName, fileName, data, dataLength)
	return _in(0xa09e7e7b, _ts(resourceName), _ts(fileName), _ts(data), dataLength, _r)
end

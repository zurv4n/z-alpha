function Global.PerformHttpRequestInternalEx(requestData)
	local requestData_bytes, requestData_len = _obj(requestData)
	return _in(0x6b171e87, requestData_bytes, requestData_len, _ri)
end

function Global.GetVehicleDashboardColour(vehicle, color)
	return _in(0xa0dbd08d, vehicle, _ii(color) --[[ may be optional ]])
end

function Global.IsVehicleSirenOn(vehicle)
	return _in(0x25eb5873, vehicle, _r)
end

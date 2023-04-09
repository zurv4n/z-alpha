function Global.GetVehicleDirtLevel(vehicle)
	return _in(0xfd15c065, vehicle, _rf)
end

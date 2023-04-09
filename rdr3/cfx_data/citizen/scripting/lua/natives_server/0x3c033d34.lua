function Global.GetVehicleEngineHealth(vehicle)
	return _in(0x8880038a, vehicle, _rf)
end

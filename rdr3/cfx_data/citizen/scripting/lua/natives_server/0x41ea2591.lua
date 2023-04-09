function Global.GetIsVehicleEngineRunning(vehicle)
	return _in(0x7dc6d022, vehicle, _r)
end

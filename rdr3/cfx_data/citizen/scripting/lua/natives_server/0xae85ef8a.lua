function Global.SetVehicleAlarm(vehicle, state)
	return _in(0x24877d84, vehicle, state)
end

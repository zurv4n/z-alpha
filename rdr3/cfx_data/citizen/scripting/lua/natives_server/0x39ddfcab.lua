function Global.SetVehicleNumberPlateText(vehicle, plateText)
	return _in(0x400f9556, vehicle, _ts(plateText))
end

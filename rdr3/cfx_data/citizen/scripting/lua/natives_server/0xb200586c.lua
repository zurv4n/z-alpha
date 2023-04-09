function Global.GetVehicleDoorStatus(vehicle)
	return _in(0x6e35c49c, vehicle, _ri)
end

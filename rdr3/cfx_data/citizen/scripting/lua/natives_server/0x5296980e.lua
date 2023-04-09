function Global.GetVehicleTyreSmokeColor(vehicle)
	return _in(0x75280015, vehicle, _i, _i, _i)
end

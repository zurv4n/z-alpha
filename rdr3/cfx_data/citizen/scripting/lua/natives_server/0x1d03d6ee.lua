function Global.GetVehicleLightsState(vehicle)
	return _in(0x7c278621, vehicle, _i --[[ actually bool ]], _i --[[ actually bool ]], _r)
end

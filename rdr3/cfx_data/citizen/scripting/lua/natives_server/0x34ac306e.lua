function Global.IsVehicleTyreBurst(vehicle, wheelID, completely)
	return _in(0x48c80210, vehicle, wheelID, completely, _r)
end

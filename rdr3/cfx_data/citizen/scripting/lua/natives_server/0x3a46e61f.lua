function Global.IsVehicleExtraTurnedOn(vehicle, extraId)
	return _in(0x42098b5, vehicle, extraId, _r)
end

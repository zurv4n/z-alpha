--- p2 often set to 1000.0 in the decompiled scripts.
function Global.SetVehicleBodyHealth(vehicle, value)
	return _in(0x920c2517, vehicle, value)
end

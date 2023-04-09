function Global.CreatePedInsideVehicle(vehicle, pedType, modelHash, seat, isNetwork, bScriptHostPed)
	return _in(0x3000f092, vehicle, pedType, _ch(modelHash), seat, isNetwork, bScriptHostPed, _ri)
end

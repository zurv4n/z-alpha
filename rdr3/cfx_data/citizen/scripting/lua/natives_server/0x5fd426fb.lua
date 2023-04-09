function Global.SetPedIntoVehicle(ped, vehicle, seatIndex)
	return _in(0x7500c79, ped, vehicle, seatIndex)
end

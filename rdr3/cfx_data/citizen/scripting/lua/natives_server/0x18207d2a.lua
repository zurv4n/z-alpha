function Global.GetPedInVehicleSeat(vehicle, seatIndex)
	return _in(0x388fde9a, vehicle, seatIndex, _ri)
end

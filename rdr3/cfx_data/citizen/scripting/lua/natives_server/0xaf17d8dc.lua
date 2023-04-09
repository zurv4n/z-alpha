function Global.GetLastPedInVehicleSeat(vehicle, seatIndex)
	return _in(0xf7c6792d, vehicle, seatIndex, _ri)
end

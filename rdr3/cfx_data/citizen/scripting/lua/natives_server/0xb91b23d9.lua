--- Currently it only works when set to "all players".
function Global.GetVehicleDoorsLockedForPlayer(vehicle)
	return _in(0x1dc50247, vehicle, _ri)
end

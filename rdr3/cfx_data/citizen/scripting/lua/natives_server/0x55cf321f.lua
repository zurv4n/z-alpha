--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
function Global.SetVehicleDoorBroken(vehicle, doorIndex, deleteDoor)
	return _in(0x8147fea7, vehicle, doorIndex, deleteDoor)
end

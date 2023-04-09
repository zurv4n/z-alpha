--- Gets the vehicle the specified Ped is/was in depending on bool value. This native is used server side when using OneSync.
-- @param ped The target ped
-- @param lastVehicle False = CurrentVehicle, True = LastVehicle
-- @return The vehicle id. Returns 0 if the ped is/was not in a vehicle.
function Global.GetVehiclePedIsIn(ped, lastVehicle)
	return _in(0xafe92319, ped, lastVehicle, _ri)
end

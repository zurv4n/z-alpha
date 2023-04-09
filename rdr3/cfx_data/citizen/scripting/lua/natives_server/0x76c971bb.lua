--- Sets the dirt level of the passed vehicle.
-- @param vehicle The vehicle to set.
-- @param dirtLevel A number between 0.0 and 15.0 representing the vehicles dirt level.
function Global.SetVehicleDirtLevel(vehicle, dirtLevel)
	return _in(0x2b39128b, vehicle, dirtLevel)
end

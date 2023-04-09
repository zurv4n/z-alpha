--- Gets the vehicle that is locked on to for the specified vehicle.
-- @param vehicle The vehicle to check.
-- @return The vehicle that is locked on. 0 returned if no vehicle is locked on.
function Global.GetVehicleLockOnTarget(vehicle)
	return _in(0x4a557117, vehicle, _ri)
end

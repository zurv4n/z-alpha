--- Gets the lock on state for the specified vehicle. See the client-side [GET_VEHICLE_HOMING_LOCKON_STATE](#\_0xE6B0E8CFC3633BF0) native for a description of lock on states.
-- @param vehicle The vehicle to check.
-- @return The lock on state.
function Global.GetVehicleHomingLockonState(vehicle)
	return _in(0xfbde9fd8, vehicle, _ri)
end

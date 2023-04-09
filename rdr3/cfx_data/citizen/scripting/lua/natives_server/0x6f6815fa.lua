--- See the client-side [GET_LANDING_GEAR_STATE](#\_0x9B0F3DCA3DB0F4CD) native for a description of landing gear states.
-- @param vehicle The vehicle to check.
-- @return The current state of the vehicles landing gear.
function Global.GetLandingGearState(vehicle)
	return _in(0xa6f02670, vehicle, _ri)
end

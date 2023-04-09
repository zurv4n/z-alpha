--- Gets the flight nozzel position for the specified vehicle. See the client-side [\_GET_VEHICLE_FLIGHT_NOZZLE_POSITION](#\_0xDA62027C8BDB326E) native for usage examples.
-- @param vehicle The vehicle to check.
-- @return The flight nozzel position between 0.0 (flying normally) and 1.0 (VTOL mode)
function Global.GetVehicleFlightNozzlePosition(vehicle)
	return _in(0xad40ad55, vehicle, _rf)
end

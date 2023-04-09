--- Equivalent to CREATE_VEHICLE, but it uses 'server setter' logic (like the former CREATE_AUTOMOBILE) as a workaround for
-- reliability concerns regarding entity creation RPC.
-- Unlike CREATE_AUTOMOBILE, this supports other vehicle types as well.
-- @param modelHash The model of vehicle to spawn.
-- @param type The appropriate vehicle type for the model info. Can be one of `automobile`, `bike`, `boat`, `heli`, `plane`, `submarine`, `trailer`, and (potentially), `train`. This should be the same type as the `type` field in `vehicles.meta`.
-- @param x Spawn coordinate X component.
-- @param y Spawn coordinate Y component.
-- @param z Spawn coordinate Z component.
-- @param heading Heading to face towards, in degrees.
-- @return A script handle for the vehicle.
function Global.CreateVehicleServerSetter(modelHash, type, x, y, z, heading)
	return _in(0x6ae51d4b, _ch(modelHash), _ts(type), x, y, z, heading, _ri)
end

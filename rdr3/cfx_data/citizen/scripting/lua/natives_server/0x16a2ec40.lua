--- Returns the type of the passed vehicle.
-- ### Vehicle types
-- *   automobile
-- *   bike
-- *   boat
-- *   heli
-- *   plane
-- *   submarine
-- *   trailer
-- *   train
-- @param vehicle The vehicle's entity handle.
-- @return If the entity is a vehicle, the vehicle type. If it is not a vehicle, the return value will be null.
function Global.GetVehicleType(vehicle)
	return _in(0xa273060e, vehicle, _s)
end

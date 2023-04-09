--- Gets the entity type (as an integer), which can be one of the following defined down below:
-- **The following entities will return type `1`:**
-- *   Ped
-- *   Player
-- *   Animal (Red Dead Redemption 2)
-- *   Horse (Red Dead Redemption 2)
-- **The following entities will return type `2`:**
-- *   Automobile
-- *   Bike
-- *   Boat
-- *   Heli
-- *   Plane
-- *   Submarine
-- *   Trailer
-- *   Train
-- *   DraftVeh (Red Dead Redemption 2)
-- **The following entities will return type `3`:**
-- *   Object
-- *   Door
-- *   Pickup
-- Otherwise, a value of `0` will be returned.
-- @param entity The entity to get the type of.
-- @return The entity type returned as an integer value.
function Global.GetEntityType(entity)
	return _in(0xb1bd08d, entity, _ri)
end

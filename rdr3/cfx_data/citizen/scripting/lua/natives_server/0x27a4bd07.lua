--- Gets the current speed of the entity in meters per second.
-- ```
-- To convert to MPH: speed * 2.236936
-- To convert to KPH: speed * 3.6
-- ```
-- @param entity The entity to get the speed of
-- @return The speed of the entity in meters per second
function Global.GetEntitySpeed(entity)
	return _in(0x9e1e4798, entity, _rf)
end

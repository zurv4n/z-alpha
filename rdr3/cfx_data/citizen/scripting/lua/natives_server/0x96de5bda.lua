--- Set the heading of an entity in degrees also known as "Yaw".
-- @param entity The entity to set the heading for.
-- @param heading The heading in degrees.
function Global.SetEntityHeading(entity, heading)
	return _in(0xe0ff064d, entity, heading)
end

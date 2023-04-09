--- Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using SET_ENTITY_COORDS.
-- @param entity The entity to freeze/unfreeze.
-- @param toggle Freeze or unfreeze entity.
function Global.FreezeEntityPosition(entity, toggle)
	return _in(0x65c16d57, entity, toggle)
end

--- Gets the entity that this entity is attached to.
-- @param entity The entity to check.
-- @return The attached entity handle. 0 returned if the entity is not attached.
function Global.GetEntityAttachedTo(entity)
	return _in(0xfe1589f9, entity, _ri)
end

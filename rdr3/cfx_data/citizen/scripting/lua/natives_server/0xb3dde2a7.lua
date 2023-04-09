--- Returns the first owner ID of the specified entity.
-- @param entity The entity to get the first owner for.
-- @return The server ID of the first entity owner.
function Global.NetworkGetFirstEntityOwner(entity)
	return _in(0x1e546224, entity, _ri)
end

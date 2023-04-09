--- Gets the current coordinates for a specified entity. This native is used server side when using OneSync.
-- See [GET_ENTITY_COORDS](#\_0x3FEF770D40960D5A) for client side.
-- @param entity The entity to get the coordinates from.
-- @return The current entity coordinates.
function Global.GetEntityCoords(entity)
	return _in(0x1647f1cb, entity, _rv)
end

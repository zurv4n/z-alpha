--- Gets the routing bucket for the specified entity.
-- Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
-- @param entity The entity to get the routing bucket for.
-- @return The routing bucket ID.
function Global.GetEntityRoutingBucket(entity)
	return _in(0xed4b0486, entity, _ri)
end

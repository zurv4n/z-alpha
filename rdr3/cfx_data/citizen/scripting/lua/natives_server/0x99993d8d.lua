--- Sets the routing bucket for the specified entity.
-- Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
-- @param entity The entity to set the routing bucket for.
-- @param bucket The bucket ID.
function Global.SetEntityRoutingBucket(entity, bucket)
	return _in(0x635e5289, entity, bucket)
end

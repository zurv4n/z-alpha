--- Gets the routing bucket for the specified player.
-- Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
-- @param playerSrc The player to get the routing bucket for.
-- @return The routing bucket ID.
function Global.GetPlayerRoutingBucket(playerSrc)
	return _in(0x52441c34, _ts(playerSrc), _ri)
end

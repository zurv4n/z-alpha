--- Sets the routing bucket for the specified player.
-- Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
-- @param playerSrc The player to set the routing bucket for.
-- @param bucket The bucket ID.
function Global.SetPlayerRoutingBucket(playerSrc, bucket)
	return _in(0x6504eb38, _ts(playerSrc), bucket)
end

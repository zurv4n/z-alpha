--- Sets the culling radius for the specified player.
-- Set to `0.0` to reset.
-- @param playerSrc The player to set the culling radius for.
-- @param radius The radius.
function Global.SetPlayerCullingRadius(playerSrc, radius)
	return _in(0x8a2fbad4, _ts(playerSrc), radius)
end

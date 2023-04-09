--- Gets the current fake wanted level for a specified player. This native is used server side when using OneSync.
-- @param playerSrc The target player
-- @return The fake wanted level
function Global.GetPlayerFakeWantedLevel(playerSrc)
	return _in(0x98d244, _ts(playerSrc), _ri)
end

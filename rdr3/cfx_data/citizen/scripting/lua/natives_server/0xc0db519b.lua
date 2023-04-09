--- Returns given players wanted level server-side.
-- @param playerSrc The target player
-- @return The wanted level
function Global.GetPlayerWantedLevel(playerSrc)
	return _in(0xbdcdd163, _ts(playerSrc), _ri)
end

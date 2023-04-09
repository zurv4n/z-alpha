--- Gets the current known coordinates for the specified player from cops perspective. This native is used server side when using OneSync.
-- @param playerSrc The target player
-- @return The player's position known by police. Vector zero if the player has no wanted level.
function Global.GetPlayerWantedCentrePosition(playerSrc)
	return _in(0x821f2d2c, _ts(playerSrc), _rv)
end

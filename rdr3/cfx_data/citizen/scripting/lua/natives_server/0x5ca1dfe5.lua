--- Checks if the player is currently muted
-- @param playerSrc The player to get the mute state for
-- @return Whether or not the player is muted
function Global.MumbleIsPlayerMuted(playerSrc)
	return _in(0x1d5d50c2, playerSrc, _r)
end

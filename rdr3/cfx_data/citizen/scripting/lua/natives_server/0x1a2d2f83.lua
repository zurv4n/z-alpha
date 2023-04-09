--- Mutes or unmutes the specified player
-- @param playerSrc The player to set the mute state of
-- @param toggle Whether to mute or unmute the player
function Global.MumbleSetPlayerMuted(playerSrc, toggle)
	return _in(0xcc6c2eb1, playerSrc, toggle)
end

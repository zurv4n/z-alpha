--- Gets the amount of time player has spent evading the cops.
-- Counter starts and increments only when cops are chasing the player.
-- If the player is evading, the timer will pause.
-- @param playerSrc The target player
-- @param lastPursuit False = CurrentPursuit, True = LastPursuit
-- @return Returns -1, if the player is not wanted or wasn't in pursuit before, depending on the lastPursuit parameter
-- 		Returns 0, if lastPursuit == False and the player has a wanted level, but the pursuit has not started yet
-- 		Otherwise, will return the milliseconds of the pursuit.
function Global.GetPlayerTimeInPursuit(playerSrc, lastPursuit)
	return _in(0x7ade63e1, _ts(playerSrc), lastPursuit, _ri)
end

--- This will return true if the player is evading wanted level, meaning that the wanted level stars are blink.
-- Otherwise will return false.
-- If the player is not wanted, it simply returns false.
-- @param playerSrc The target player
-- @return boolean value, depending if the player is evading his wanted level or not.
function Global.IsPlayerEvadingWantedLevel(playerSrc)
	return _in(0x89a3881a, _ts(playerSrc), _r)
end

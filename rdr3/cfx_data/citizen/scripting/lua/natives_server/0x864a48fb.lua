--- Gets the current game timer in milliseconds.
-- @return The game time.
function Global.GetGameTimer()
	return _in(0xa4ea0691, _rl)
end

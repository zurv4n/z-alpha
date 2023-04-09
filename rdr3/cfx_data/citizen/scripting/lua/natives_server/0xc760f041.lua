--- Returns the current console output buffer.
-- @return The most recent game console output, as a string.
function Global.GetConsoleBuffer()
	return _in(0xe57429fa, _s)
end

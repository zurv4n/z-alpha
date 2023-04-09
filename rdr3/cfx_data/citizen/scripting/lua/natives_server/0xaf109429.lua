--- Registers a listener for console output messages.
-- @param listener A function of `(channel: string, message: string) => void`. The message might contain `\n`.
function Global.RegisterConsoleListener(listener)
	return _in(0x281b5448, _mfr(listener))
end

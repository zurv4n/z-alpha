--- Returns the internal build number of the current game being executed.
-- Possible values:
-- *   FiveM
-- *   1604
-- *   2060
-- *   2189
-- *   2372
-- *   2545
-- *   2612
-- *   2699
-- *   2802
-- *   RedM
-- *   1311
-- *   1355
-- *   1436
-- *   1491
-- *   LibertyM
-- *   43
-- *   FXServer
-- *   0
-- @return The build number, or **0** if no build number is known.
function Global.GetGameBuildNumber()
	return _in(0x804b9f7b, _ri)
end

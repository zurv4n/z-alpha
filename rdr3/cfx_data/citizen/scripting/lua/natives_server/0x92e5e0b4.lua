--- Returns the current game being executed.
-- Possible values:
-- | Return value | Meaning                        |
-- | ------------ | ------------------------------ |
-- | `fxserver`   | Server-side code ('Duplicity') |
-- | `fivem`      | FiveM for GTA V                |
-- | `libertym`   | LibertyM for GTA IV            |
-- | `redm`       | RedM for Red Dead Redemption 2 |
-- @return The game the script environment is running in.
function Global.GetGameName()
	return _in(0xe8eaa18b, _s)
end

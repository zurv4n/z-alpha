--- Get an identifier from a player by the type of the identifier.
-- @param playerSrc The player to get the identifier for
-- @param identifierType The string to match in an identifier, this can be `"license"` for example.
-- @return The identifier that matches the string provided
function Global.GetPlayerIdentifierByType(playerSrc, identifierType)
	return _in(0xa61c8fc6, _ts(playerSrc), _ts(identifierType), _s)
end

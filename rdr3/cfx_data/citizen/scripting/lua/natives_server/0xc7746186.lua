--- Gets a player's token. Tokens can be used to enhance banning logic, however are specific to a server.
-- @param playerSrc A player.
-- @param index Index between 0 and GET_NUM_PLAYER_TOKENS.
-- @return A token value.
function Global.GetPlayerToken(playerSrc, index)
	return _in(0x54c06897, _ts(playerSrc), index, _s)
end

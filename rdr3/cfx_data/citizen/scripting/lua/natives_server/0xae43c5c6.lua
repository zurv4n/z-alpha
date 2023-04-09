--- On the server this will return the players source, on the client it will return the player handle.
-- @param bagName An internal state bag ID from the argument to a state bag change handler.
-- @return The player handle or 0 if the state bag name did not refer to a player, or the player does not exist.
function Global.GetPlayerFromStateBagName(bagName)
	return _in(0xa56135e0, _ts(bagName), _ri)
end

--- Returns whether or not the specified player has enough information to start a commerce session for.
-- @param playerSrc The player handle
-- @return True or false.
function Global.CanPlayerStartCommerceSession(playerSrc)
	return _in(0x429461c3, _ts(playerSrc), _r)
end

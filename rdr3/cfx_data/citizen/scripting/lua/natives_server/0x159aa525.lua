--- Requests whether or not the commerce data for the specified player has loaded.
-- @param playerSrc The player handle
-- @return A boolean.
function Global.IsPlayerCommerceInfoLoaded(playerSrc)
	return _in(0xbefe93f4, _ts(playerSrc), _r)
end

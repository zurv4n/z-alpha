--- Requests whether or not the commerce data for the specified player has loaded from Tebex.
-- @param playerSrc The player handle
-- @return A boolean.
function Global.IsPlayerCommerceInfoLoadedExt(playerSrc)
	return _in(0x1d14f4fe, _ts(playerSrc), _r)
end

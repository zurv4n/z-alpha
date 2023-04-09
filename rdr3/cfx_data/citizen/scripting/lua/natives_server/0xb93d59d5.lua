--- Requests the commerce data from Tebex for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
-- @param playerSrc The player handle
function Global.LoadPlayerCommerceDataExt(playerSrc)
	return _in(0x7995539e, _ts(playerSrc))
end

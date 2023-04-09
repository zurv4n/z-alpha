--- Requests the commerce data for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
-- @param playerSrc The player handle
function Global.LoadPlayerCommerceData(playerSrc)
	return _in(0xa8f63eab, _ts(playerSrc))
end

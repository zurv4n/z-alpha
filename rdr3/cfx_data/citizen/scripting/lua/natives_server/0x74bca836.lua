--- Requests whether or not the player owns the specified SKU.
-- @param playerSrc The player handle
-- @param skuId The ID of the SKU.
-- @return A boolean.
function Global.DoesPlayerOwnSku(playerSrc, skuId)
	return _in(0x167aba27, _ts(playerSrc), skuId, _r)
end

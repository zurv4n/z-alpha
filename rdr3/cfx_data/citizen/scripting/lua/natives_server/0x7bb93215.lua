--- Requests whether or not the player owns the specified package.
-- @param playerSrc The player handle
-- @param skuId The package ID on Tebex.
-- @return A boolean.
function Global.DoesPlayerOwnSkuExt(playerSrc, skuId)
	return _in(0xdef0480b, _ts(playerSrc), skuId, _r)
end

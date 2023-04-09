--- Requests the specified player to buy the passed SKU. This'll pop up a prompt on the client, which upon acceptance
-- will open the browser prompting further purchase details.
-- @param playerSrc The player handle
-- @param skuId The ID of the SKU.
function Global.RequestPlayerCommerceSession(playerSrc, skuId)
	return _in(0x96f93cce, _ts(playerSrc), skuId)
end

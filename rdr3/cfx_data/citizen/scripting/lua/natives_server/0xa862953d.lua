--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
-- Removes a handler for changes to a state bag.
-- @param cookie The cookie.
function Global.RemoveStateBagChangeHandler(cookie)
	return _in(0xd36be661, cookie)
end

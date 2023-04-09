--- Removes the blip from your map.
-- @param blip Blip handle to remove.
function Global.RemoveBlip(blip)
	return _in(0xd8c3c1cd, _ii(blip) --[[ may be optional ]])
end

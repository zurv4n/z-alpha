--- ```
-- Used for freemode (online) characters.
-- Called after SET_PED_HEAD_OVERLAY().
-- ```
-- **Note:**
-- You may need to call [`SetPedHeadBlendData`](#0x9414E18B9434C2FE) prior to calling this native in order for it to work.
-- @param ped The ped entity
-- @param overlayID An integer representing the overlay id
-- @param colorType 1 for eyebrows, beards, and chest hair; 2 for blush and lipstick; and 0 otherwise, though not called in those cases.
-- @param colorID An integer representing the primary color id
-- @param secondColorID An integer representing the secondary color id
function Global.SetPedHeadOverlayColor(ped, overlayID, colorType, colorID, secondColorID)
	return _in(0x78935a27, ped, overlayID, colorType, colorID, secondColorID)
end

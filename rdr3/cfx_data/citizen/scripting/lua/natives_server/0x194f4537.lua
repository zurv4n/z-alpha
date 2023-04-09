--- Used for freemode (online) characters.
function Global.SetPedHairColor(ped, colorID, highlightColorID)
	return _in(0xbb43f090, ped, colorID, highlightColorID)
end

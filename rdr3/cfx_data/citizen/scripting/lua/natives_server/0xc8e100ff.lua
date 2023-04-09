--- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
function Global.SetVehicleCustomPrimaryColour(vehicle, r, g, b)
	return _in(0x8df9f9bc, vehicle, r, g, b)
end

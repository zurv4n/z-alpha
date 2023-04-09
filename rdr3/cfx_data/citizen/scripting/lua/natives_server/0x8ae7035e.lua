--- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
function Global.SetVehicleCustomSecondaryColour(vehicle, r, g, b)
	return _in(0x9d77259e, vehicle, r, g, b)
end

function Global.GetVehicleInteriorColour(vehicle, color)
	return _in(0xccff3b6e, vehicle, _ii(color) --[[ may be optional ]])
end

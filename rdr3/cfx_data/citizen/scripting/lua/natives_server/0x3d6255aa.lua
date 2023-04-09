--- Sets the selected vehicle's colors to their default value (specific variant specified using the colorCombination parameter).
-- Range of possible values for colorCombination is currently unknown, I couldn't find where these values are stored either (Disquse's guess was vehicles.meta but I haven't seen it in there.)
-- @param vehicle The vehicle to modify.
-- @param colorCombination One of the default color values of the vehicle.
function Global.SetVehicleColourCombination(vehicle, colorCombination)
	return _in(0xa557aead, vehicle, colorCombination)
end

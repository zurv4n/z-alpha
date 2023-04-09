--- colorPrimary & colorSecondary are the paint indexes for the vehicle.
-- For a list of valid paint indexes, view: pastebin.com/pwHci0xK
function Global.SetVehicleColours(vehicle, colorPrimary, colorSecondary)
	return _in(0x57f24253, vehicle, colorPrimary, colorSecondary)
end

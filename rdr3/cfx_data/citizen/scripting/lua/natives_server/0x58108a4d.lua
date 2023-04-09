--- speed 1.0 = walk, 2.0 = run
-- p5 1 = normal, 3 = teleport to vehicle, 8 = normal/carjack ped from seat, 16 = teleport directly into vehicle
-- p6 is always 0
-- @param seatIndex See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
function Global.TaskEnterVehicle(ped, vehicle, timeout, seatIndex, speed, flag, p6)
	return _in(0xb8689b4e, ped, vehicle, timeout, seatIndex, speed, flag, p6)
end

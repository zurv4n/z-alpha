--- Flags are the same flags used in [`TASK_LEAVE_VEHICLE`](#\_0xD3DBCE61A490BE02)
function Global.TaskLeaveAnyVehicle(ped, p1, flags)
	return _in(0xdbdd79fa, ped, p1, flags)
end

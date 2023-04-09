--- Schedules the specified resource to run a tick as soon as possible, bypassing the server's fixed tick rate.
-- @param resourceName The resource to tick.
function Global.ScheduleResourceTick(resourceName)
	return _in(0xb88a73ad, _ts(resourceName))
end

--- ```lua
-- enum_VehicleLockStatus = {
-- None = 0,
-- Locked = 2,
-- LockedForPlayer = 3,
-- StickPlayerInside = 4, -- Doesn't allow players to exit the vehicle with the exit vehicle key.
-- CanBeBrokenInto = 7, -- Can be broken into the car. If the glass is broken, the value will be set to 1
-- CanBeBrokenIntoPersist = 8, -- Can be broken into persist
-- CannotBeTriedToEnter = 10, -- Cannot be tried to enter (Nothing happens when you press the vehicle enter key).
-- }
-- ```
-- It should be [noted](https://forum.cfx.re/t/4863241) that while the [client-side command](#\_0x25BC98A59C2EA962) and its
-- setter distinguish between states 0 (unset) and 1 (unlocked), the game will synchronize both as state 0, so the server-side
-- command will return only '0' if unlocked.
-- @param vehicle A vehicle handle.
-- @return The door lock status for the specified vehicle.
function Global.GetVehicleDoorLockStatus(vehicle)
	return _in(0xd72cef2, vehicle, _ri)
end

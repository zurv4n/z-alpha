--- // Source GTA VC miss2 leak, matching constants for 0/2/4, testing
-- // They use 10 in am_mp_property_int, don't know what it does atm.
-- enum eCarLock {
-- CARLOCK_NONE = 0,
-- CARLOCK_UNLOCKED = 1,
-- CARLOCK_LOCKED = 2,
-- CARLOCK_LOCKOUT_PLAYER_ONLY = 3,
-- CARLOCK_LOCKED_PLAYER_INSIDE = 4,
-- CARLOCK_LOCKED_INITIALLY = 5,
-- CARLOCK_FORCE_SHUT_DOORS = 6,
-- CARLOCK_LOCKED_BUT_CAN_BE_DAMAGED = 7
-- };
function Global.SetVehicleDoorsLocked(vehicle, doorLockStatus)
	return _in(0x4cdd35d0, vehicle, doorLockStatus)
end

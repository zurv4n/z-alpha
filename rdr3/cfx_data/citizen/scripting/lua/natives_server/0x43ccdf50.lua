--- In the scripts, p3 was always -1.
-- p3 seems to be duration or timeout of turn animation.
-- Also facingPed can be 0 or -1 so ped will just raise hands up.
function Global.TaskHandsUp(ped, duration, facingPed, p3, p4)
	return _in(0x8dcc19c5, ped, duration, facingPed, p3, p4)
end

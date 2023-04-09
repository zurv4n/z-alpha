--- Makes the specified ped attack the target ped.
-- p2 should be 0
-- p3 should be 16
function Global.TaskCombatPed(ped, targetPed, p2, p3)
	return _in(0xcb0d8932, ped, targetPed, p2, p3)
end

--- Immediately stops the pedestrian from whatever it's doing. The difference between this and [CLEAR_PED_TASKS](#\_0xE1EF3C1216AFF2CD) is that this one teleports the ped but does not change the position of the ped.
-- @param ped Ped id.
function Global.ClearPedTasksImmediately(ped)
	return _in(0xbc045625, ped)
end

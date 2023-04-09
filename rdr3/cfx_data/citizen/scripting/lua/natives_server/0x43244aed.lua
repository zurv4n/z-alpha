--- example from fm_mission_controller
-- TASK::TASK_GO_TO_COORD_ANY_MEANS(l_649, sub_f7e86(-1, 0), 1.0, 0, 0, 786603, 0xbf800000);
function Global.TaskGoToCoordAnyMeans(ped, x, y, z, speed, p5, p6, walkingStyle, p8)
	return _in(0xf91df93b, ped, x, y, z, speed, p5, p6, walkingStyle, p8)
end

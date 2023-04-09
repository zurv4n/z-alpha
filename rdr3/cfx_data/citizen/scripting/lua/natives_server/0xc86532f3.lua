--- Gets the type of a ped's specific task given an index of the CPedTaskSpecificDataNode nodes.
-- A ped will typically have a task at index 0, if a ped has multiple tasks at once they will be in the order 0, 1, 2, etc.
-- @param ped The target ped.
-- @param index A zero-based index with a maximum value of 7.
-- @return The type of the specific task.
-- 		1604: A value of 530 denotes no script task is assigned or an invalid input was given.
-- 		2060+: A value of 531 denotes no script task is assigned or an invalid input was given.
function Global.GetPedSpecificTaskType(ped, index)
	return _in(0x7f4563d3, ped, index, _ri)
end

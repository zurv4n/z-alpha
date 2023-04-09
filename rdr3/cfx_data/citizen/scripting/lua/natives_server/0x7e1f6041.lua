--- Clear a ped's tasks. Stop animations and other tasks created by scripts.
-- @param ped Ped id. Use PlayerPedId() for your own character.
function Global.ClearPedTasks(ped)
	return _in(0xde3316ab, ped)
end

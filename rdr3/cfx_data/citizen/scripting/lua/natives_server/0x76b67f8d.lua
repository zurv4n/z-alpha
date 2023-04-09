--- Firing Pattern Hash Information: https://pastebin.com/Px036isB
function Global.TaskShootAtCoord(ped, x, y, z, duration, firingPattern)
	return _in(0x601c22e3, ped, x, y, z, duration, _ch(firingPattern))
end

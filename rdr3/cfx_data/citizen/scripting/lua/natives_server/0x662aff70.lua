--- Note that the third parameter(denoted as z) is "up and down" with positive numbers encouraging upwards movement.
function Global.SetEntityVelocity(entity, x, y, z)
	return _in(0xff5a1988, entity, x, y, z)
end

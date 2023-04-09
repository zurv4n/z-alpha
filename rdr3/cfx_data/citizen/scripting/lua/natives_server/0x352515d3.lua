--- Create a blip that by default is red (enemy), you can use [SET_BLIP_AS_FRIENDLY](#\_0xC6F43D0E) to make it blue (friend).\
-- Can be used for objects, vehicles and peds.
-- Example of enemy:
-- ![enemy](https://i.imgur.com/fl78svv.png)
-- Example of friend:
-- ![friend](https://i.imgur.com/Q16ho5d.png)
-- @param entity The entity handle to create the blip.
-- @return A blip handle.
function Global.AddBlipForEntity(entity)
	return _in(0x30822554, entity, _ri)
end

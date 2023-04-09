--- Currently it only works with peds.
function Global.GetEntityHealth(entity)
	return _in(0x8e3222b7, entity, _ri)
end

--- Currently it only works with peds.
function Global.GetEntityMaxHealth(entity)
	return _in(0xc7ae6aa1, entity, _ri)
end

--- Get the entity that killed the ped. This native is used server side when using OneSync.
-- @param ped The target ped
-- @return The entity id. Returns 0 if the ped has no killer.
function Global.GetPedSourceOfDeath(ped)
	return _in(0x84adf9eb, ped, _ri)
end

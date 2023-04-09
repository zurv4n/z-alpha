--- Get the last entity that damaged the ped. This native is used server side when using OneSync.
-- @param ped The target ped
-- @return The entity id. Returns 0 if the ped has not been damaged recently.
function Global.GetPedSourceOfDamage(ped)
	return _in(0x535db43f, ped, _ri)
end

--- Returns a hash of selected ped weapon.
-- @param ped The target ped.
-- @return The weapon hash.
function Global.GetSelectedPedWeapon(ped)
	return _in(0xd240123e, ped, _ri)
end

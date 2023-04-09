--- Parameter `p1` does not seem to be used or referenced in game binaries.\
-- **Note:** When called for networked entities, a `CRemoveAllWeaponsEvent` will be created per request.
-- @param ped The ped entity
function Global.RemoveAllPedWeapons(ped, p1)
	return _in(0xa44ce817, ped, p1)
end

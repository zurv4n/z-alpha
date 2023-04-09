function Global.RemoveWeaponComponentFromPed(ped, weaponHash, componentHash)
	return _in(0x412aa00d, ped, _ch(weaponHash), _ch(componentHash))
end

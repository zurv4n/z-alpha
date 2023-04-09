function Global.GiveWeaponComponentToPed(ped, weaponHash, componentHash)
	return _in(0x3e1e286d, ped, _ch(weaponHash), _ch(componentHash))
end

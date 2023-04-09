function Global.GiveWeaponToPed(ped, weaponHash, ammoCount, isHidden, bForceInHand)
	return _in(0xc4d88a85, ped, _ch(weaponHash), ammoCount, isHidden, bForceInHand)
end

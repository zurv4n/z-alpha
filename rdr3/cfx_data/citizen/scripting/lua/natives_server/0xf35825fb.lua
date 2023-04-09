function Global.SetCurrentPedWeapon(ped, weaponHash, bForceInHand)
	return _in(0xb8278882, ped, _ch(weaponHash), bForceInHand)
end

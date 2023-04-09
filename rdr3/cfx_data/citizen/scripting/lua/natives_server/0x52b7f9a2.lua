--- NativeDB Added Parameter 4: BOOL p3
function Global.SetPedAmmo(ped, weaponHash, ammo)
	return _in(0xbf90df1a, ped, _ch(weaponHash), ammo)
end

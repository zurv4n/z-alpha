--- This native removes a specified weapon from your selected ped.
-- Weapon Hashes: pastebin.com/0wwDZgkF
-- Example:
-- C#:
-- Function.Call(Hash.REMOVE_WEAPON_FROM_PED, Game.Player.Character, 0x99B507EA);
-- C++:
-- WEAPON::REMOVE_WEAPON_FROM_PED(PLAYER::PLAYER_PED_ID(), 0x99B507EA);
-- The code above removes the knife from the player.
function Global.RemoveWeaponFromPed(ped, weaponHash)
	return _in(0x9c37f220, ped, _ch(weaponHash))
end

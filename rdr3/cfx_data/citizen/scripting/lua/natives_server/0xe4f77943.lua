--- A getter for [SET_PLAYER_WEAPON_DEFENSE_MODIFIER](#\_0x2D83BC011CA14A3C).
-- @param playerId The player index.
-- @return The value of player weapon defense modifier.
function Global.GetPlayerWeaponDefenseModifier(playerId)
	return _in(0xf1543251, _ts(playerId), _rf)
end

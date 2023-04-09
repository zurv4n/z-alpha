--- A getter for [\_SET_PLAYER_WEAPON_DEFENSE_MODIFIER\_2](#\_0xBCFDE9EDE4CF27DC).
-- @param playerId The player index.
-- @return The value of player weapon defense modifier 2.
function Global.GetPlayerWeaponDefenseModifier_2(playerId)
	return _in(0x986b65ff, _ts(playerId), _rf)
end

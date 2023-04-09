--- A getter for [SET_PLAYER_WEAPON_DAMAGE_MODIFIER](#\_0xCE07B9F7817AADA3).
-- @param playerId The player index.
-- @return The value of player weapon damage modifier.
function Global.GetPlayerWeaponDamageModifier(playerId)
	return _in(0x2a3d7cda, _ts(playerId), _rf)
end

--- A getter for [SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER](#\_0x4A3DC7ECCC321032).
-- @param playerId The player index.
-- @return Returns player melee weapon damage modifier value.
function Global.GetPlayerMeleeWeaponDamageModifier(playerId)
	return _in(0x8689a825, _ts(playerId), _rf)
end

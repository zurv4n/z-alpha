--- This native checks if the given ped is a player.
-- @return Returns `true` if the ped is a player, `false` otherwise.
function Global.IsPedAPlayer(ped)
	return _in(0x404794ca, ped, _r)
end

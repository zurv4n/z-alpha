--- PED::SET_PED_RESET_FLAG(PLAYER::PLAYER_PED_ID(), 240, 1);
-- Known values:
function Global.SetPedResetFlag(ped, flagId, doReset)
	return _in(0xcff6ff66, ped, flagId, doReset)
end

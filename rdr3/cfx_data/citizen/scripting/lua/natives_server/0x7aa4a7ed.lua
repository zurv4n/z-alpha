--- Simply sets you as invincible (Health will not deplete).
-- Use 0x733A643B5B0C53C1 instead if you want Ragdoll enabled, which is equal to:
-- *(DWORD *)(playerPedAddress + 0x188) |= (1 << 9);
function Global.SetPlayerInvincible(player, toggle)
	return _in(0xdfb9a2a2, _ts(player), toggle)
end

--- Gets the current camera rotation for a specified player. This native is used server side when using OneSync.
-- @param playerSrc The player handle.
-- @return The player's camera rotation. Values are in radians.
function Global.GetPlayerCameraRotation(playerSrc)
	return _in(0x433c765d, _ts(playerSrc), _rv)
end

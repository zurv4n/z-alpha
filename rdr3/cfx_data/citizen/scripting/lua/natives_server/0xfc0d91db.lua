function Global.GetPlayerPing(playerSrc)
	return _in(0xff1290d4, _ts(playerSrc), _ri)
end

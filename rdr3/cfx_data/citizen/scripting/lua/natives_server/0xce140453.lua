function Global.SetConvar(varName, value)
	return _in(0x341b16d2, _ts(varName), _ts(value))
end

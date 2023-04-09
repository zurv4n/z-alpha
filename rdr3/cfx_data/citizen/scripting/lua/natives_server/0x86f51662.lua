function Global.GetPasswordHash(password)
	return _in(0x23473ea4, _ts(password), _s)
end

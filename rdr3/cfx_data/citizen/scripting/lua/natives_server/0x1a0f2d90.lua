function Global.VerifyPasswordHash(password, hash)
	return _in(0x2e310acd, _ts(password), _ts(hash), _r)
end

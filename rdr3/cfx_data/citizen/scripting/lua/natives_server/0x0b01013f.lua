--- Sets the armor of the specified ped.
-- ped: The Ped to set the armor of.
-- amount: A value between 0 and 100 indicating the value to set the Ped's armor to.
function Global.SetPedArmour(ped, amount)
	return _in(0x4e3a0cc4, ped, amount)
end

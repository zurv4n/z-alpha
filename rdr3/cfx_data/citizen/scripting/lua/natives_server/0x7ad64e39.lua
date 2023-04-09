--- Internal function for setting a state bag value.
function Global.SetStateBagValue(bagName, keyName, valueData, valueLength, replicated)
	return _in(0x8d50e33a, _ts(bagName), _ts(keyName), _ts(valueData), valueLength, replicated)
end

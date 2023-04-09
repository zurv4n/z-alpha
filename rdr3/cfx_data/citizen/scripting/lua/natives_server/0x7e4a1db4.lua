--- The backing function for TriggerClientEvent.
function Global.TriggerClientEventInternal(eventName, eventTarget, eventPayload, payloadLength)
	return _in(0x2f7a49e6, _ts(eventName), _ts(eventTarget), _ts(eventPayload), payloadLength)
end

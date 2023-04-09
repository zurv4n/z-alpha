--- The backing function for TriggerLatentClientEvent.
function Global.TriggerLatentClientEventInternal(eventName, eventTarget, eventPayload, payloadLength, bps)
	return _in(0x70b35890, _ts(eventName), _ts(eventTarget), _ts(eventPayload), payloadLength, bps)
end

--- Returns the entity handle for the specified state bag name. For use with [ADD_STATE_BAG_CHANGE_HANDLER](?\_0x5BA35AAF).
-- @param bagName An internal state bag ID from the argument to a state bag change handler.
-- @return The entity handle or 0 if the state bag name did not refer to an entity, or the entity does not exist.
function Global.GetEntityFromStateBagName(bagName)
	return _in(0x4bdf1867, _ts(bagName), _ri)
end

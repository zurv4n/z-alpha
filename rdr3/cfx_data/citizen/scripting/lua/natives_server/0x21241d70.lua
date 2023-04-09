--- Adds a handler for changes to a state bag.
-- The function called expects to match the following signature:
-- ```ts
-- function StateBagChangeHandler(bagName: string, key: string, value: any, reserved: number, replicated: boolean);
-- ```
-- *   **bagName**: The internal bag ID for the state bag which changed. This is usually `player:Source`, `entity:NetID`
-- or `localEntity:Handle`.
-- *   **key**: The changed key.
-- *   **value**: The new value stored at key. The old value is still stored in the state bag at the time this callback executes.
-- *   **reserved**: Currently unused.
-- *   **replicated**: Whether the set is meant to be replicated.
-- At this time, the change handler can't opt to reject changes.
-- If bagName refers to an entity, use [GET_ENTITY_FROM_STATE_BAG_NAME](?\_0x4BDF1868) to get the entity handle
-- If bagName refers to a player, use [GET_PLAYER_FROM_STATE_BAG_NAME](?\_0xA56135E0) to get the player handle
-- @param keyFilter The key to check for, or null for no filter.
-- @param bagFilter The bag ID to check for such as `entity:65535`, or null for no filter.
-- @param handler The handler function.
-- @return A cookie to remove the change handler.
function Global.AddStateBagChangeHandler(keyFilter, bagFilter, handler)
	return _in(0x5ba35aaf, _ts(keyFilter), _ts(bagFilter), _mfr(handler), _ri)
end

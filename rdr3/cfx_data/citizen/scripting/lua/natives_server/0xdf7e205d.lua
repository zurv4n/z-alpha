--- Set the model for a specific Player. Note that this will destroy the current Ped for the Player and create a new one, any reference to the old ped will be invalid after calling this.
-- As per usual, make sure to request the model first and wait until it has loaded.
-- @param player The player to set the model for
-- @param model The model to use
function Global.SetPlayerModel(player, model)
	return _in(0x774a4c54, _ts(player), _ch(model))
end

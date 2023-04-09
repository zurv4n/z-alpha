--- Create a permanent voice channel.
-- @param id ID of the channel.
function Global.MumbleCreateChannel(id)
	return _in(0x262663c5, id)
end

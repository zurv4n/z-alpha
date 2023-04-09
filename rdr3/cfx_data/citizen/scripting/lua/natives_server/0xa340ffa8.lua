--- Creates a blip for the specified coordinates. You can use `SET_BLIP_` natives to change the blip.
-- @param x The X coordinate to create the blip on.
-- @param y The Y coordinate.
-- @param z The Z coordinate.
-- @return A blip handle.
function Global.AddBlipForCoord(x, y, z)
	return _in(0xc6f43d0e, x, y, z, _ri)
end

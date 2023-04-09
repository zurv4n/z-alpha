--- Adds a rectangular blip for the specified coordinates/area.
-- It is recommended to use [SET_BLIP_ROTATION](#\_0xF87683CDF73C3F6E) and [SET_BLIP_COLOUR](#\_0x03D7FB09E75D6B7E) to make the blip not rotate along with the camera.
-- By default, the blip will show as a *regular* blip with the specified color/sprite if it is outside of the minimap view.
-- Example image:
-- ![minimap](https://w.wew.wtf/pdcjig.png)
-- ![big map](https://w.wew.wtf/zgcjcm.png)
-- (Native name is *likely* to actually be ADD_BLIP_FOR_AREA, but due to the usual reasons this can't be confirmed)
-- @param x The X coordinate of the center of the blip.
-- @param y The Y coordinate of the center of the blip.
-- @param z The Z coordinate of the center of the blip.
-- @param width The width of the blip.
-- @param height The height of the blip.
-- @return A handle to the blip.
function Global.AddBlipForArea(x, y, z, width, height)
	return _in(0x6228f159, x, y, z, width, height, _ri)
end

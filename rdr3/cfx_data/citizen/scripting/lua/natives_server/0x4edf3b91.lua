--- Create a blip with a radius for the specified coordinates (it doesnt create the blip sprite, so you need to use [AddBlipCoords](#\_0xC6F43D0E))
-- Example image:
-- ![example](https://i.imgur.com/9hQl3DB.png)
-- @param posX The x position of the blip (you can also send a vector3 instead of the bulk coordinates)
-- @param posY The y position of the blip (you can also send a vector3 instead of the bulk coordinates)
-- @param posZ The z position of the blip (you can also send a vector3 instead of the bulk coordinates)
-- @param radius The number that defines the radius of the blip circle
-- @return The blip handle that can be manipulated with every `SetBlip` natives
function Global.AddBlipForRadius(posX, posY, posZ, radius)
	return _in(0x4626756c, posX, posY, posZ, radius, _ri)
end

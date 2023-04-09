--- This native is used to set component variation on a ped. Components, drawables and textures IDs are related to the ped model.
-- ### MP Freemode list of components
-- **0**: Face\
-- **1**: Mask\
-- **2**: Hair\
-- **3**: Torso\
-- **4**: Leg\
-- **5**: Parachute / bag\
-- **6**: Shoes\
-- **7**: Accessory\
-- **8**: Undershirt\
-- **9**: Kevlar\
-- **10**: Badge\
-- **11**: Torso 2
-- ### Related and useful natives
-- [GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS](#\_0x27561561732A7842)\
-- [GET_NUMBER_OF_PED_TEXTURE_VARIATIONS](#\_0x8F7156A3142A6BAD)
-- [List of component/props ID](gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html) of player_two with examples
-- @param ped The ped handle.
-- @param componentId The component that you want to set.
-- @param drawableId The drawable id that is going to be set.
-- @param textureId The texture id of the drawable.
-- @param paletteId 0 to 3.
function Global.SetPedComponentVariation(ped, componentId, drawableId, textureId, paletteId)
	return _in(0xd4f7b05c, ped, componentId, drawableId, textureId, paletteId)
end

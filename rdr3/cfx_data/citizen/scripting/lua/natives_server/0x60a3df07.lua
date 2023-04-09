--- This native is used to set prop variation on a ped. Components, drawables and textures IDs are related to the ped model.
-- ### MP Freemode list of props
-- **0**: Hat\
-- **1**: Glass\
-- **2**: Ear\
-- **6**: Watch\
-- **7**: Bracelet
-- ### Related and useful natives
-- [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47)\
-- [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171)
-- [List of component/props ID](https://gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html) of player_two with examples
-- @param ped The ped handle.
-- @param componentId The component that you want to set.
-- @param drawableId The drawable id that is going to be set.
-- @param textureId The texture id of the drawable.
-- @param attach Attached or not.
function Global.SetPedPropIndex(ped, componentId, drawableId, textureId, attach)
	return _in(0x829f2e2, ped, componentId, drawableId, textureId, attach)
end

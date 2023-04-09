--- It overrides the default distance culling radius of an entity. Set to `0.0` to reset.
-- If you want to interact with an entity outside of your players' scopes set the radius to a huge number.
-- @param entity The entity handle to override the distance culling radius.
-- @param radius The new distance culling radius.
function Global.SetEntityDistanceCullingRadius(entity, radius)
	return _in(0xd3a183a3, entity, radius)
end

--- Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
-- @param entity The entity to change coordinates for.
-- @param xPos The X coordinate.
-- @param yPos The Y coordinate.
-- @param zPos The Z coordinate, ground level.
-- @param alive Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
-- @param deadFlag Whether to disable physics for dead peds, too, and not just living peds.
-- @param ragdollFlag A special flag used for ragdolling peds.
-- @param clearArea Whether to clear any entities in the target area.
function Global.SetEntityCoords(entity, xPos, yPos, zPos, alive, deadFlag, ragdollFlag, clearArea)
	return _in(0xdf70b41b, entity, xPos, yPos, zPos, alive, deadFlag, ragdollFlag, clearArea)
end

--- Creates an object (prop) with the specified model centered at the specified position.
-- This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
-- @param modelHash The model to spawn.
-- @param x Spawn coordinate X component.
-- @param y Spawn coordinate Y component.
-- @param z Spawn coordinate Z component.
-- @param isNetwork Whether to create a network object for the object. If false, the object exists only locally.
-- @param netMissionEntity Whether to register the object as pinned to the script host in the R\* network model.
-- @param doorFlag False to create a door archetype (archetype flag bit 26 set) as a door. Required to be set to true to create door models in network mode.
-- @return A script handle (fwScriptGuid index) for the object, or `0` if the object failed to be created.
function Global.CreateObjectNoOffset(modelHash, x, y, z, isNetwork, netMissionEntity, doorFlag)
	return _in(0x58040420, _ch(modelHash), x, y, z, isNetwork, netMissionEntity, doorFlag, _ri)
end
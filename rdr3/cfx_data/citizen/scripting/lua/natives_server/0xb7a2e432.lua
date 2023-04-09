--- Creates a ped (biped character, pedestrian, actor) with the specified model at the specified position and heading.
-- This ped will initially be owned by the creating script as a mission entity, and the model should be loaded already
-- (e.g. using REQUEST_MODEL).
-- @param pedType Unused. Peds get set to CIVMALE/CIVFEMALE/etc. no matter the value specified.
-- @param modelHash The model of ped to spawn.
-- @param x Spawn coordinate X component.
-- @param y Spawn coordinate Y component.
-- @param z Spawn coordinate Z component.
-- @param heading Heading to face towards, in degrees.
-- @param isNetwork Whether to create a network object for the ped. If false, the ped exists only locally.
-- @param bScriptHostPed Whether to register the ped as pinned to the script host in the R\* network model.
-- @return A script handle (fwScriptGuid index) for the ped, or `0` if the ped failed to be created.
function Global.CreatePed(pedType, modelHash, x, y, z, heading, isNetwork, bScriptHostPed)
	return _in(0x389ef71, pedType, _ch(modelHash), x, y, z, heading, isNetwork, bScriptHostPed, _ri)
end

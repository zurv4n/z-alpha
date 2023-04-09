--- Creates a vehicle with the specified model at the specified position. This vehicle will initially be owned by the creating
-- script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
-- ```
-- NativeDB Added Parameter 8: BOOL p7
-- ```
-- @param modelHash The model of vehicle to spawn.
-- @param x Spawn coordinate X component.
-- @param y Spawn coordinate Y component.
-- @param z Spawn coordinate Z component.
-- @param heading Heading to face towards, in degrees.
-- @param isNetwork Whether to create a network object for the vehicle. If false, the vehicle exists only locally.
-- @param netMissionEntity Whether to register the vehicle as pinned to the script host in the R\* network model.
-- @return A script handle (fwScriptGuid index) for the vehicle, or `0` if the vehicle failed to be created.
function Global.CreateVehicle(modelHash, x, y, z, heading, isNetwork, netMissionEntity)
	return _in(0xdd75460a, _ch(modelHash), x, y, z, heading, isNetwork, netMissionEntity, _ri)
end

--- Applies a force to the specified entity.
-- **List of force types (p1)**:
-- ```
-- public enum ForceType
-- {
-- MinForce = 0,
-- MaxForceRot = 1,
-- MinForce2 = 2,
-- MaxForceRot2 = 3,
-- ForceNoRot = 4,
-- ForceRotPlusForce = 5
-- }
-- ```
-- Research/documentation on the gtaforums can be found [here](https://gtaforums.com/topic/885669-precisely-define-object-physics/) and [here](https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/).
-- @param entity The entity you want to apply a force on
-- @param forceType See native description above for a list of commonly used values
-- @param x Force amount (X)
-- @param y Force amount (Y)
-- @param z Force amount (Z)
-- @param offX Rotation/offset force (X)
-- @param offY Rotation/offset force (Y)
-- @param offZ Rotation/offset force (Z)
-- @param boneIndex (Often 0) Entity bone index
-- @param isDirectionRel (Usually false) Vector defined in local (body-fixed) coordinate frame
-- @param ignoreUpVec (Usually true)
-- @param isForceRel (Usually true) When true, force gets multiplied with the objects mass and different objects will have the same acceleration
-- @param p12 (Usually false)
-- @param p13 (Usually true)
function Global.ApplyForceToEntity(entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
	return _in(0xc1c0855a, entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
end
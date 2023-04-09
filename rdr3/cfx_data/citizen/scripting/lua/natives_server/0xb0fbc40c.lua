--- It's similar to the one above, except the first 6 floats let you specify the initial position and rotation of the task. (Ped gets teleported to the position).
-- [Animations list](https://alexguirre.github.io/animations-list/)
-- @param ped The target ped
-- @param animDict Name of the animation dictionary
-- @param animName Name of the animation
-- @param posX Initial X position of the task
-- @param posY Initial Y position of the task
-- @param posZ Initial Z position of the task
-- @param rotX Initial X rotation of the task, doesn't seem to have any effect
-- @param rotY Initial Y rotation of the task, doesn't seem to have any effect
-- @param rotZ Initial Z rotation of the task
-- @param animEnterSpeed Adjust character speed to fully enter animation
-- @param animExitSpeed Adjust character speed to fully exit animation (useless `ClearPedTasksImmediately()` is called)
-- @param duration Time in milliseconds
-- @param animTime Value between 0.0 and 1.0, lets you start an animation from the given point
function Global.TaskPlayAnimAdvanced(ped, animDict, animName, posX, posY, posZ, rotX, rotY, rotZ, animEnterSpeed, animExitSpeed, duration, flag, animTime, p14, p15)
	return _in(0x3ddeb0e6, ped, _ts(animDict), _ts(animName), posX, posY, posZ, rotX, rotY, rotZ, animEnterSpeed, animExitSpeed, duration, flag, animTime, p14, p15)
end

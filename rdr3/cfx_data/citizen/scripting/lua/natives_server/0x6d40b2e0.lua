--- Returns all vehicle handles known to the server.
-- The data returned adheres to the following layout:
-- ```
-- [127, 42, 13, 37]
-- ```
-- @return An object containing a list of vehicle handles.
function Global.GetAllVehicles()
	return _in(0x332169f5, _ro)
end

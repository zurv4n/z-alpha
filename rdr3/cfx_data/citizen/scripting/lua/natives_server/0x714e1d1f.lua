--- Returns all peds handles known to the server.
-- The data returned adheres to the following layout:
-- ```
-- [127, 42, 13, 37]
-- ```
-- @return An object containing a list of peds handles.
function Global.GetAllPeds()
	return _in(0xb8584fef, _ro)
end

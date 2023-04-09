--- Returns all object handles known to the server.
-- The data returned adheres to the following layout:
-- ```
-- [127, 42, 13, 37]
-- ```
-- @return An object containing a list of object handles.
function Global.GetAllObjects()
	return _in(0x6886c3fe, _ro)
end

--- This native checks if the given entity is visible.
-- @return Returns `true` if the entity is visible, `false` otherwise.
function Global.IsEntityVisible(entity)
	return _in(0x120b4ed5, entity, _r)
end

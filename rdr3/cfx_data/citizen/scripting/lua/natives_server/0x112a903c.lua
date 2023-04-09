--- This native gets an entity's population type.
-- @param entity the entity to obtain the population type from
-- @return Returns the population type ID, defined by the below enumeration:```cpp
-- 		enum ePopulationType
-- 		{
-- 			POPTYPE_UNKNOWN = 0,
-- 			POPTYPE_RANDOM_PERMANENT,
-- 			POPTYPE_RANDOM_PARKED,
-- 			POPTYPE_RANDOM_PATROL,
-- 			POPTYPE_RANDOM_SCENARIO,
-- 			POPTYPE_RANDOM_AMBIENT,
-- 			POPTYPE_PERMANENT,
-- 			POPTYPE_MISSION,
-- 			POPTYPE_REPLAY,
-- 			POPTYPE_CACHE,
-- 			POPTYPE_TOOL
-- 		};
-- 		```
function Global.GetEntityPopulationType(entity)
	return _in(0xfc30ddff, entity, _ri)
end

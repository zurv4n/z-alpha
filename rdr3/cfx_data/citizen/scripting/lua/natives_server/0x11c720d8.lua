--- Return variable is never used in R*'s scripts.
-- Not sure what p2 does. It seems like it would be a time judging by it's usage in R*'s scripts, but didn't seem to affect anything in my testings.
-- x, y, and z are coordinates, most likely to where the ped will fall.
-- p7 is probably the force of the fall, but untested, so I left the variable name the same.
-- p8 to p13 are always 0f in R*'s scripts.
-- (Simplified) Example of the usage of the function from R*'s scripts:
-- ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);
function Global.SetPedToRagdollWithFall(ped, time, p2, ragdollType, x, y, z, p7, p8, p9, p10, p11, p12, p13)
	return _in(0xfa12e286, ped, time, p2, ragdollType, x, y, z, p7, p8, p9, p10, p11, p12, p13)
end

--- p4/p5: Unusued in TU27
-- ### Ragdoll Types
-- **0**: CTaskNMRelax
-- **1**: CTaskNMScriptControl: Hardcoded not to work in networked environments.
-- **Else**: CTaskNMBalance
-- @param time1 Time(ms) Ped is in ragdoll mode; only applies to ragdoll types 0 and not 1.
function Global.SetPedToRagdoll(ped, time1, time2, ragdollType, p4, p5, p6)
	return _in(0x83cb5052, ped, time1, time2, ragdollType, p4, p5, p6)
end

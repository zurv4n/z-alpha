--- p1 is always 0 in R* scripts; and a quick disassembly seems to indicate that p1 is unused.
-- List of component/props ID:
-- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
function Global.SetPedRandomComponentVariation(ped, p1)
	return _in(0x4111ba46, ped, p1)
end

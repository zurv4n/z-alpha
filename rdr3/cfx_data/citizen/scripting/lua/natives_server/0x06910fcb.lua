--- Applies an Item from a PedDecorationCollection to a ped. These include tattoos and shirt decals.
-- collection - PedDecorationCollection filename hash
-- overlay - Item name hash
-- Example:
-- Entry inside "mpbeach_overlays.xml" -
-- <Item>
-- <uvPos x="0.500000" y="0.500000" />
-- <scale x="0.600000" y="0.500000" />
-- <rotation value="0.000000" />
-- <nameHash>FM_Hair_Fuzz</nameHash>
-- <txdHash>mp_hair_fuzz</txdHash>
-- <txtHash>mp_hair_fuzz</txtHash>
-- <zone>ZONE_HEAD</zone>
-- <type>TYPE_TATTOO</type>
-- <faction>FM</faction>
-- <garment>All</garment>
-- <gender>GENDER_DONTCARE</gender>
-- <award />
-- <awardLevel />
-- </Item>
-- Code:
-- PED::_0x5F5D1665E352A839(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("mpbeach_overlays"), MISC::GET_HASH_KEY("fm_hair_fuzz"))
function Global.AddPedDecorationFromHashes(ped, collection, overlay)
	return _in(0x70559ac7, ped, _ch(collection), _ch(overlay))
end

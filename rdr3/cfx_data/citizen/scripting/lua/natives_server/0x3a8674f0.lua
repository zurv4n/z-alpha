--- For more info please refer to [this](https://gtaforums.com/topic/858970-all-gtao-face-ids-pedset-ped-head-blend-data-explained) topic.
-- **Other information:**
-- IDs start at zero and go Male Non-DLC, Female Non-DLC, Male DLC, and Female DLC.</br>
-- This native function is often called prior to calling natives such as:
-- *   [`SetPedHairColor`](#0xBB43F090)
-- *   [`SetPedHeadOverlayColor`](#0x78935A27)
-- *   [`SetPedHeadOverlay`](#0xD28DBA90)
-- *   [`SetPedFaceFeature`](#0x6C8D4458)
-- @param ped The ped entity
-- @param shapeFirstID Controls the shape of the first ped's face
-- @param shapeSecondID Controls the shape of the second ped's face
-- @param shapeThirdID Controls the shape of the third ped's face
-- @param skinFirstID Controls the first id's skin tone
-- @param skinSecondID Controls the second id's skin tone
-- @param skinThirdID Controls the third id's skin tone
-- @param shapeMix 0.0 - 1.0 Of whose characteristics to take Mother -> Father (shapeFirstID and shapeSecondID)
-- @param skinMix 0.0 - 1.0 Of whose characteristics to take Mother -> Father (skinFirstID and skinSecondID)
-- @param thirdMix Overrides the others in favor of the third IDs.
-- @param isParent IsParent is set for "children" of the player character's grandparents during old-gen character creation. It has unknown effect otherwise.
function Global.SetPedHeadBlendData(ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
	return _in(0x60746b88, ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
end

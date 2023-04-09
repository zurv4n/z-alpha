--- <!--
-- _loc1_.map((name, idx) => `| ${idx} | ${name} | ![${name}](https://runtime.fivem.net/blips/${name}.svg) |`).join('\n')
-- -->
-- Sets the displayed sprite for a specific blip.
-- There's a [list of sprites](https://docs.fivem.net/game-references/blips/) on the FiveM documentation site.
-- @param blip The blip to change.
-- @param spriteId The sprite ID to set.
function Global.SetBlipSprite(blip, spriteId)
	return _in(0x8dbbb0b9, blip, spriteId)
end

Config = {}

Config.Align = 'top-left' -- align to menu

Config.KeySteal = 0xA1ABB953

Config.StealHogtied = true -- Steal from hogtied players
Config.Cuffed = true  -- Steal from handcuffed players
Config.StealDead = false  -- Steal from dead players

Config.Webhook = ''

Config.ItemsBlackList = { -- Names of items or weapons that cannot be stolen
    'water',
    'WEAPON_MELEE_KNIFE',
}

Config.Texts = {
    ['StrPrompt'] = 'Rob Player',
    ['DescStealMoney'] = 'Steal Money',
    ['MenuTitle'] = 'Player',
    ['MenuSubtext'] = 'Select an option',
    ['Confirm'] = 'Confirm',
    ['AmountMoney'] = 'Amount',
    ['Money'] = 'Money',
    ['Inventory'] = 'Inventory',
    ['DescStealInventory'] = 'Search Inventory',
    ['NotStealCarryItems'] = 'The player cannot carry more items',
    ['NotStealCarryWeapon'] = 'The player cannot carry any more weapons.',
    ['NotCarryItems'] = 'You cannot carry more items.',
    ['TooMuchMoney'] = 'You can\'t steal more than the player has.',
    ['StealMoney'] = 'You took: ',
    ['ItemInBlackList'] = 'You cannot steal this item.',
    ['WebHookTakeSteal'] = 'Has stolen: ',
    ['WebHookMoveSteal'] = 'Has delivered: ',
    ['WebHookPlayer'] = ', to the player: ',
}

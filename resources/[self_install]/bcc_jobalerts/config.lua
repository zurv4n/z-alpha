Config = {}	
Config.Alerts = {
    {
        name = 'police', --The name of the alert
        command = 'alertpolice', -- the command, this is what players will use with /
        message = "Crime Reported!", -- Message to show to theh police
        messageTime = 40000, -- Time the message will stay on screen (miliseconds)
        job = 	{'lae_marshall_ass',
				'law_marshall',
				'law_sheriff_lem',
				'law_sheriff_nhaw',
				'law_sheriff_nhae',
				'law_sheriff_weste',
				'law_sheriff_na',
				'law_captain_tum',
				'law_captain_arma',
				'law_captain_blw',
				'law_captain_str',
				'law_captain_val',
				'law_captain_anne',
				'law_captain_rho',
				'law_captain_std',
				'law_sergeant_tum',
				'law_sergeant_arma',
				'law_sergeant_blw',
				'law_sergeant_str',
				'law_sergeant_val',
				'law_sergeant_anne',
				'law_sergeant_rho',
				'law_sergeant_std',
				'law_deputy_tum',
				'law_deputy_arma',
				'law_deputy_blw',
				'law_deputy_str',
				'law_deputy_val',
				'law_deputy_anne',
				'law_deputy_rho',
				'law_deputy_std',
				'law_native'}, -- Job the alert is for
        jobgrade = { 0, 1, 2, 3 }, -- What grades the alert will effect
        icon = "star", -- The icon the alert will use
        hash = -1282792512, -- The radius blip
        radius = 40.0, -- The size of the radius blip
        blipTime = 60000, -- How long the blip will stay for the job (miliseconds)
        blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
        originText = "Hang tight, the Sheriffs has been notified", -- Text displayed to the user who enacted the command
        originTime = 40000 --The time the origintext displays (miliseconds)
    },
    {
        name = 'medic',
        command = 'alertdoctor',
        message = "Injury Reported!",
        messageTime = 40000,
        job = 	{'med_val',
				'med_rho',
				'med_std',
				'med_anne',
				'med_str',
				'med_blw',
				'med_arma',
				'med_tum',
				'shaman'},
        jobgrade = { 0, 1 },
        icon = "shield",
        hash = -1282792512,
        radius = 40.0,
        blipTime = 60000,
        blipDelay = 2000,
        originText = "Doctors have been notified",
        originTime = 40000,
    }
}
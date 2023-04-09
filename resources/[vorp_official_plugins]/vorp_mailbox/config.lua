Config = {}

Config.locale = "en"
Config.keyToOpen = "U"
Config.keyToOpenBroadcast = "G"
Config.locations = {
    { x = -179.0, y = 626.0, z = 113.0 }, --Valentine
	{ x = -5227.0, y = -3471.0, z = -21.0 }, --Benedict Point
	{ x = -3734.0, y = -2598.0, z = -13.0 }, --Armadillo
	{ x = -875.0, y = -1329.0, z = 44.0 }, --Blackwater
	{ x = -1765.0, y = -384.0, z = 157.0 }, --Strawberry
	{ x = 1522.0, y = 440.0, z = 91.0 }, --Emerald Station
	{ x = 2939.0, y = 1289.0, z = 45.0 }, --Annesburg
	{ x = 2732.0, y = -1402.0, z = 46.0 }, --St. Denis
	{ x = 1226.0, y = -1294.0, z = 77.0 } --Rhodes
}
Config.TimeBetweenUsersRefresh = -1 -- time spent before server fetch all users from database another time. In Seconds. If value is negative or 0, users are only fetched once at server start and never again
Config.DelayBetweenTwoMessage = 600 -- time spent before user is allowed to send a message another time. In Seconds. If value is negative or 0, no delay is set
Config.DelayBetweenTwoBroadcast = 600 -- time spent before user is allowed to send a broadcast another time. In Seconds. If value is negative or 0, no delay is set
Config.MessageSendPrice = 10 --telegram price
Config.MessageBroadcastPrice = 3 -- how much should players pay to brodcast a message to everyone 


Keys = {
    ["G"] = 0x760A9C6F,
    ["Q"] = 0xDE794E3E,
    ["U"] = 0xD8F73058,


}

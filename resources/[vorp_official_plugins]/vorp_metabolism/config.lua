Config = {
  Locale = "en",

  UseMetabolism = true, -- Experimental Function

  -- Status amount rate drop
  EveryTimeStatusDown = 5000, --  3,6 seconds
  HowAmountThirstWhileRunning = 2, -- Example drop 3 every 3,6 seconds -- Max value 1000
  HowAmountHungerWhileRunning = 1,
  HowAmountThirst = 1,
  HowAmountHunger = 1,
  HowAmountMetabolismWhileRunning = 1,
  HowAmountMetabolism = 1,

  FirstHungerStatus = 1000, -- 100%
  FirstThirstStatus = 1000, -- 100%

  OnRespawnHungerStatus = 1000,
  OnRespawnThirstStatus = 1000,

  FirstMetabolismStatus = 0,

  ItemsToUse = {
    {
      Name = "consumable_coffee",
      Thirst = 300,
      Hunger = 100,
      Metabolism = 250,
      Stamina = 200,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0,
      OuterCoreHealthGold = 500,
      InnerCoreStaminaGold = 200,
      OuterCoreStaminaGold = 1000,
      PropName = "p_mugCoffee01x",
      Animation = "drink"
    },
    {
      Name = "consumable_kidneybeans_can",
      Thirst = 300,
      Hunger = 100,
      Metabolism = 500,
      Stamina = 100,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "s_canbeansused01x",
      Animation = "eat"
    },
    {
      Name = "consumable_salmon_can",
      Thirst = 300,
      Hunger = 100,
      Metabolism = 300,
      Stamina = 100,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "s_canbeansused01x",
      Animation = "eat"
    },
    {
      Name = "consumable_medicine",
      Thirst = 100,
      Hunger = 0,
      Metabolism = 200,
      Stamina = 0,
      InnerCoreHealth = 60,
      OuterCoreHealth = 40,
      InnerCoreHealthGold = 500.0,
      OuterCoreHealthGold = 1000.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_bottlemedicine01x",
      Animation = "drink"
    },
    {
      Name = "consumable_peach",
      Thirst = 100,
      Hunger = 150,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "s_peach01x",
      Animation = "eat"
    },
	{
      Name = "steak",
      Thirst = 25,
      Hunger = 200,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 25,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_redefleshymeat01xb",
      Animation = "eat"
    },
	{
      Name = "cooked_game_plain",
      Thirst = 25,
      Hunger = 200,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 25,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_redefleshymeat01xb",
      Animation = "eat"
    },
	{
      Name = "cooked_bird_plain",
      Thirst = 25,
      Hunger = 200,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 25,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_redefleshymeat01xb",
      Animation = "eat"
    },
	{
      Name = "cooked_pork_plain",
      Thirst = 25,
      Hunger = 200,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 25,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_redefleshymeat01xb",
      Animation = "eat"
    },
	{
      Name = "cooked_biggame_plain",
      Thirst = 25,
      Hunger = 200,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 25,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_redefleshymeat01xb",
      Animation = "eat"
    },
	{
      Name = "cooked_aligator_plain",
      Thirst = 25,
      Hunger = 200,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 150,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_redefleshymeat01xb",
      Animation = "eat"
    },
	{
      Name = "cooked_herptile_plain",
      Thirst = 25,
      Hunger = 200,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 25,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_redefleshymeat01xb",
      Animation = "eat"
    },
	{
      Name = "cooked_mutton_plain",
      Thirst = 25,
      Hunger = 200,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 25,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_redefleshymeat01xb",
      Animation = "eat"
    },
	{
      Name = "cooked_stringy_plain",
      Thirst = 25,
      Hunger = 200,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 25,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_redefleshymeat01xb",
      Animation = "eat"
    },
	{
      Name = "cooked_venison_plain",
      Thirst = 25,
      Hunger = 200,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 25,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_redefleshymeat01xb",
      Animation = "eat"
    },
	{
      Name = "bread",
      Thirst = 25,
      Hunger = 200,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 25,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_bread05x",
      Animation = "eat"
    },
	{
      Name = "water",
      Thirst = 100,
      Hunger = 0,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 5,
      OuterCoreHealth = 10,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_cs_canteen_hercule",
      Animation = "drink"
    }
  }

}

Translations = {
  ['en'] = {
    ['OnUseItem'] =  "You have consumed %s"
  },
  ['pt_br'] = {
    ['OnUseItem'] =  "Você consumiu %s"
  }
}

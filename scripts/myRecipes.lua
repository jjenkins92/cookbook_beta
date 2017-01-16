local myIngredients = {
    sweetener = {'honey','honeycomb'},
    meat = {"meat","monstermeat","froglegs", "drumstick","smallmeat","fish", "eel","mole"},
    veggie = {"red_cap", "green_cap", "blue_cap","carrot", "corn", "pumpkin", "eggplant", "cutlichen","mandrake","cactus_meat","cactus_flower"},
    fruit = {"pomegranate", "dragonfruit", "cave_banana","berries","berries_juicy","durian","watermelon"},
    monster = {"durian", "monstermeat"},
    egg = {"egg","tallbirdegg","bird_egg"},
    decoration = {"butterflywings"},
    dairy = {"butter","goatmilk"},
    fat = {"butter"},
    magic = {"mandrake"},
    fish = {"fish", "eel"},
    inedible = {"twigs"},
    frozen = {"ice"},
    seed = {"acorn_cooked"}
}


local myRecipes = {
  {
    name = "Butterfly Muffin",
    health = TUNING.HEALING_MED,
		hunger = TUNING.CALORIES_LARGE,
		sanity = TUNING.SANITY_TINY,
    req = {"butterflywings"},
    tags = {
      {tag = 'meat', num = 0, comp = '='},
      {tag = 'veggie', num = 0, comp = '>'} 
    }
  },
  {
    name = "Froggle Bunwich",
    health = TUNING.HEALING_MED,
		hunger = TUNING.CALORIES_LARGE,
		sanity = TUNING.SANITY_TINY,
    req = {'froglegs', 'froglegs_cooked'}, --one or the other 
    tags = {
      {tag = 'veggie', num = 0, comp = '>'} 
    }
  },
  {
    name = "Taffy",
    health = -TUNING.HEALING_SMALL,
		hunger = TUNING.CALORIES_SMALL*2,
		sanity = TUNING.SANITY_MED,
    tags = {
      {tag = 'sweetener',num = 3, comp='>='},
      {tag = 'meat',num = 0, comp='='}
    }
  },
  {
    name = "Pumpkin Cookie",
    health = 0,
		hunger = TUNING.CALORIES_LARGE,
		sanity = TUNING.SANITY_MED,
    req = {'pumpkin', 'pumpkin_cooked'}, --or
    tags = {
      {tag = 'sweetener',num = 2, comp='>='}
    }
  },
  {
    name = "Stuffed Eggplant",
    health = TUNING.HEALING_SMALL,
		hunger = TUNING.CALORIES_LARGE,  
		sanity = TUNING.SANITY_TINY,
    req={'eggplant', 'eggplant_cooked'}, --or
    tags = {
      {tag = 'veggie', num = 1, comp='>'} 
    }
  },
  {
    name = "Fishsticks",
    health = TUNING.HEALING_LARGE,
		hunger = TUNING.CALORIES_LARGE,
		sanity = TUNING.SANITY_TINY,
    req = {'twigs'},
    tags = {
        {tag = 'fish', num = 0, comp = '>'}, 
        {tag = 'inedible', num = 1, comp='<='}
    }
  },
  {
    name = "Honey Nuggets",
		health = TUNING.HEALING_MED,
		hunger = TUNING.CALORIES_LARGE,
		sanity = TUNING.SANITY_TINY,
    req = {'honey'},
    tags = {
        {tag = 'meat', num = 1.5, comp = '<='},
        {tag = 'inedible', num = 0, comp = '='} 
    },
    {
      name="Honey Ham",
      health = TUNING.HEALING_MEDLARGE,
      hunger = TUNING.CALORIES_HUGE,
      sanity = TUNING.SANITY_TINY,
      req = {'honey'},
      tags = {
        {tag = 'meat', num = 1.5, comp = '>'},
        {tag = 'inedible', num = 0, comp = '='} 
      }
    },
    {
      name="Dragonpie",
      health = TUNING.HEALING_LARGE,
      hunger = TUNING.CALORIES_HUGE,
      sanity = TUNING.SANITY_TINY,
      req={'dragonfruit', 'dragonfruit_cooked'}, --or
      tags = {
        {tag = 'meat', num = 0, comp = '='}
      }
    },
    {
      name="Kabobs",
      health = TUNING.HEALING_SMALL,
      hunger = TUNING.CALORIES_LARGE,
      sanity = TUNING.SANITY_TINY,
      req = {'twigs'},
      tags = {
          --gonna be weird
        {tag = 'meat', num = 0, comp = '>'}, 
        {tag = 'inedible', num = 1, comp = '<='},
        {tag = 'monster' , num = 1, comp = '<='} 
      }
    },
    {
      name="Mandrake Soup",
      health = TUNING.HEALING_SUPERHUGE,
      hunger = TUNING.CALORIES_SUPERHUGE,  
      sanity = TUNING.SANITY_TINY,
      req = {'mandrake'}  
    },
    {
      name="Bacon and Eggs",
      health = TUNING.HEALING_MED,
      hunger = TUNING.CALORIES_HUGE,  
      sanity = TUNING.SANITY_TINY,
      tags = {
          {tag = 'egg', num = 1, comp = '>'},
          {tag = 'meat', num = 1, comp = '>'},
          {tag = 'veggie', num = 0, comp ='='}
      }
    },
    {
      name = "Meatballs",
      health = TUNING.HEALING_SMALL,
      hunger = TUNING.CALORIES_SMALL*5,
      sanity = TUNING.SANITY_TINY,
      tags = {
          {tag = 'meat', num = 0, comp = '>'},
          {tag = 'inedible', num = 0, comp ='='}
      }
    },
    {
      name = "Bone Stew",
      health = TUNING.HEALING_SMALL*4,
      hunger = TUNING.CALORIES_LARGE*4,
      sanity = TUNING.SANITY_TINY,
      tags = {
          {tag = 'meat', num = 3, comp = '>='},
          {tag = 'inedible', num = 0, comp ='='}
      }
    },
    {
      name = "Perogies",
      health = TUNING.HEALING_LARGE,
      hunger = TUNING.CALORIES_LARGE,
      sanity = TUNING.SANITY_TINY, 
      tags = {
          {tag = 'egg', num = 0, comp = '>'},
          {tag = 'meat', num = 0, comp = '>'},
          {tag = 'veggie', num = 0, comp ='>'},
          {tag = 'inedible', num = 0, comp ='='}
      }
    },
    {
      name="Turkey Dinner",
      health = TUNING.HEALING_MED,
      hunger = TUNING.CALORIES_HUGE,
      sanity = TUNING.SANITY_TINY,
      req = {"drumstick"}, --or drumstick > 1
      tags = {
        {tag = 'meat', num = 1, comp = '>'},
        { eitheror = 
          {tag = 'veggie', num = 0, comp = '>'},
          {tag = 'fruit', num = 0, comp = '>'}
        }
      }
    },
    {
      name = "Ratatouille",
      health = TUNING.HEALING_SMALL,
      hunger = TUNING.CALORIES_MED,
      sanity = TUNING.SANITY_TINY,
      tags = {
        {tag = 'meat', num = 0, comp = '='},
        {tag = 'veggie', num = 0, comp ='>'},
        {tag = 'inedible', num = 0, comp ='='}
      }
    },
    {
      name = "Jammy Preserves",
      health = TUNING.HEALING_SMALL,
      hunger = TUNING.CALORIES_SMALL*3,
      sanity = TUNING.SANITY_TINY,
      tags = {
        {tag = 'fruit', num = 0, comp = '>'},
        {tag = 'meat', num = 0, comp = '='},
        {tag = 'veggie', num = 0, comp ='='},
        {tag = 'inedible', num = 0, comp ='='}
      }
    },
    {
      name = "Fruit Medley",
      health = TUNING.HEALING_MED,
      hunger = TUNING.CALORIES_MED,
      sanity = TUNING.SANITY_TINY,
      tags = {
        {tag = 'fruit', num = 3, comp = '>='},
        {tag = 'meat', num = 0, comp = '='},
        {tag = 'veggie', num = 0, comp ='='}
      }
    },
    {
      name = "Fish Tacos",
      health = TUNING.HEALING_MED,
      hunger = TUNING.CALORIES_LARGE,
      sanity = TUNING.SANITY_TINY,
      req = {'corn', 'corn_cooked'}, --or
      tags = {
        {tag = 'fish', num = 0, comp = '>'}
      }
    },
    {
      name = "Waffles",
      health = TUNING.HEALING_HUGE,
      hunger = TUNING.CALORIES_LARGE,
      sanity = TUNING.SANITY_TINY,
      req = { andalso = {'butter', {'berries','berries_cooked','berries_juicy','berries_juicy_cooked'}}}, --and
      tags = {
        {tag = 'egg', num = 0, comp = '>'}
      }
    },
    {
      name = "Monster Lasanga", 
      health = -TUNING.HEALING_MED,
      hunger = TUNING.CALORIES_LARGE,
      sanity = -TUNING.SANITY_MEDLARGE,
      tags = {
        {tag = 'monster', num = 2, comp = '>='},
        {tag = 'inedible', num = 0, comp = '='}
      }
    },
    {
      name = "Powdercake",
      health = -TUNING.HEALING_SMALL,
      hunger = 0,
      sanity = 0,
      req = { andalso = {'twigs', 'honey', {'corn', 'corn_cooked'}}} --and
    },
    {
      name = "Unagi",
      health = TUNING.HEALING_MED,
      hunger = TUNING.CALORIES_MEDSMALL,
      sanity = TUNING.SANITY_TINY,
      req = { andalso = {'cutlichen', {'eel', 'eel_cooked'}}} --and
    },
    {
      name = "Flower Salad",
      health = TUNING.HEALING_LARGE,
      hunger = TUNING.CALORIES_SMALL,
      sanity = TUNING.SANITY_TINY,
      req = {'cactus_flower'},
      tags = {
        {tag = 'veggie', num = 2, comp = '>='},
        {tag = 'meat', num = 0, comp = '='},
        {tag = 'inedible', num = 0, comp = '='},
        {tag = 'egg', num = 0, comp = '='},
        {tag = 'sweetener', num = 0, comp = '='},
        {tag = 'fruit', num = 0, comp = '='}
      }
    },
    {
      name = "Ice Cream",
      health = 0,
      hunger = TUNING.CALORIES_MED,
      sanity = TUNING.SANITY_HUGE,
      tags = {
        {tag = 'frozen', num = 0, comp = '>'},
        {tag = 'diary', num = 0, comp = '>'},
        {tag = 'sweetener', num = 0, comp = '>'},
        {tag = 'meat', num = 0, comp = '='},
        {tag = 'veggie', num = 0, comp = '='},
        {tag = 'inedible', num = 0, comp = '='},
        {tag = 'egg', num = 0, comp = '='}
      }
    },
    {
      name = "Watermelonicle",
      health = TUNING.HEALING_SMALL,
      hunger = TUNING.CALORIES_SMALL,
      sanity = TUNING.SANITY_MEDLARGE,
      req = { andalso = {'watermelon','twigs'}}, --and
      tags = {
        {tag = 'frozen', num = 0, comp = '>'},
        {tag = 'meat', num = 0, comp = '='},
        {tag = 'veggie', num = 0, comp = '='},
        {tag = 'egg', num = 0, comp = '='}
      }
    },
    {
      name = "Trail Mix",
      health = TUNING.HEALING_MEDLARGE,
      hunger = TUNING.CALORIES_SMALL,
      sanity = TUNING.SANITY_TINY,
      req = { andalso = {'acorn_cooked', {'berries','berries_cooked','berries_juicy','berries_juicy_cooked'}}}, --and
      tags = {
        {tag = 'seed', num = 1, comp = '>='},
        {tag = 'fruit', num = 1, comp = '>='},
        {tag = 'meat', num = 0, comp = '='},
        {tag = 'veggie', num = 0, comp = '='},
        {tag = 'egg', num = 0, comp = '='},      
        {tag = 'diary', num = 0, comp = '='}
      }
    },
    {
      name = "Hot Chili",
      health = TUNING.HEALING_MED,
      hunger = TUNING.CALORIES_LARGE,
      sanity = 0,
      tags = {
        {tag = 'meat', num = 1.5, comp = '>='},
        {tag = 'veggie', num = 1.5, comp = '>='}
      }
    },
    {
      name = "Guacamole",
      health = TUNING.HEALING_MED,
      hunger = TUNING.CALORIES_LARGE,
      sanity = 0,
      req = { andalso = {'mole', 'cactus_meat'}}, --and
      tags = {
        {tag = 'fruit', num = 0, comp = '='}
      }
    }   
	}
}

return myRecipes
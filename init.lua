local translations = ModTextFileGetContent("data/translations/common.csv")
-- if you want newlines make sure to use \\n. also, don't use newlines
Names = {
    {{"perk_critical_hit", "perkdesc_critical_hit"},
        {"Critical Hit +", "You get more critical hits"},
        {"Close Call", "You gain additional chance to deal critical hits as long as there are enemies near you."},
        {"Critical Hit Plus", "You get more critical hits"},
    },
    {{"perk_breath_underwater", "perkdesc_breath_underwater"},
        {"Breathless", "You can no longer drown, and can move in liquids with ease."},
        {"Breath Underwater", "You can no longer drown."},
        {"Breathe Underwater", "You can no longer drown."},
        {"Bubbles", "You can no longer drown, and can move in liquids with ease."},
        {"Fast Swimming", "You are an expert swimmer!"},
    },
    {{"perk_extra_money", "perkdesc_extra_money"},
        {"Greed", "You gain double the gold per nugget."},
        {"Gold is Forever", "Gold nuggets never disappear."},
        {"Trick Greed", "4x instead of 2x gold is dropped when death is an accident."},
        {"Trick Blood Money", "Blood money is dropped when death is an accident."},
        {"Exploding Gold", "Gold dropped by enemies explodes when it disappears, is picked up or touched by other enemies!"},
        {"Gold", "Which perk is this again?"},
    },
    {{"perk_extra_money_trick_kill", "perkdesc_extra_money_trick_kill"},
        {"Trick Greed", "4x instead of 2x gold is dropped when death is an accident."},
        {"Greed", "You gain double the gold per nugget."},
        {"Gold is Forever", "Gold nuggets never disappear."},
        {"Trick Blood Money", "Blood money is dropped when death is an accident."},
        {"Exploding Gold", "Gold dropped by enemies explodes when it disappears, is picked up or touched by other enemies!"},
        {"Gold", "Which perk is this again?"},
    },
    {{"perk_gold_is_forever", "perkdesc_gold_is_forever"},
        {"Gold is Forever", "Gold nuggets never disappear."},
        {"Trick Greed", "4x instead of 2x gold is dropped when death is an accident."},
        {"Greed", "You gain double the gold per nugget."},
        {"Trick Blood Money", "Blood money is dropped when death is an accident."},
        {"Exploding Gold", "Gold dropped by enemies explodes when it disappears, is picked up or touched by other enemies!"},
        {"Gold", "Which perk is this again?"},
    },
    {{"perk_trick_blood_money", "perkdesc_trick_blood_money"},
        {"Trick Blood Money", "Blood money is dropped when death is an accident."},
        {"Gold is Forever", "Gold nuggets never disappear."},
        {"Trick Greed", "4x instead of 2x gold is dropped when death is an accident."},
        {"Greed", "You gain double the gold per nugget."},
        {"Exploding Gold", "Gold dropped by enemies explodes when it disappears, is picked up or touched by other enemies!"},
        {"Gold", "Which perk is this again?"},
    },
    {{"perk_exploding_gold", "perkdesc_exploding_gold"},
        {"Exploding Gold", "Gold dropped by enemies explodes when it disappears, is picked up or touched by other enemies!"},
        {"Trick Blood Money", "Blood money is dropped when death is an accident."},
        {"Gold is Forever", "Gold nuggets never disappear."},
        {"Trick Greed", "4x instead of 2x gold is dropped when death is an accident."},
        {"Greed", "You gain double the gold per nugget."},
        {"Gold", "Which perk is this again?"},
    },
    {{"perk_hover_boost", "perkdesc_hover_boost"},
        {"Strong Levitation", "You can fly 100% longer."},
        {"Faster Levitation", "You levitate 75% faster."},
    },
    {{"perk_faster_levitation", "perkdesc_faster_levitation"},
        {"Faster Levitation", "You levitate 75% faster."},
        {"Faster Levitation", "Gotta go fast? Wow, this is disorienting."},
        {"Strong Levitation", "You can fly 100% longer."},
    },
    {{"perk_movement_faster", "perkdesc_movement_faster"},
        {"Faster Movement", "Your movement speed is increased."},
        {"Faster Movement", "Gotta go fast."},
    },
    {{"perk_strong_kick", "perkdesc_strong_kick"},
        {"Never Skip Leg Day", "Your kicks deal extra damage and knockback."},
    },
    {{"perk_telekinesis", "perkdesc_telekinesis"},
        {"Telekinetic Kick", "You gain new telekinetic powers."},
    },
    {{"perk_repelling_cape", "perkdesc_repelling_cape"},
        {"Repelling Cape", "Stains drop at a fast rate (when moving)"},
    },
    {{"perk_exploding_corpses", "perkdesc_exploding_corpses"},
        {"Exploding Corpses", "Enemies explode upon death, but you gain immunity to explosive damage."},
        {"Explosion Immunity", "You take no direct damage from explosions."},
    },
    {{"perk_saving_grace", "perkdesc_saving_grace"},
        {"Saving Grace", "If you would die and have more than 1 HP, your HP is set to 1 instead."},
        {"Extra Life", "Upon death you respawn with 1 health."},
    },
    {{"perk_invisibility", "perkdesc_invisibility"},
        {"Invisibility", "You're invisible. Stains, casting spells, kicking and taking damage makes you temporarily visible."},
        -- Inflating this so there is a greater chance of encountering this message.
        {"Invisibility", "Coward."},
        {"Invisibility", "Coward."},
        {"Invisibility", "Coward."},
        {"Invisibility", "Coward."},
        {"Invisibility", "Coward."},
        {"Invisibility", "Coward."},
        {"Invisibility", "Coward."},
        {"Invisibility", "Coward."},
        {"Invisibility", "Coward."},
    },
    {{"perk_global_gore", "perkdesc_global_gore"},
        {"More Blood", "Blood blood blood."},
        {"Exsanguination", "Blood for the blood god."},
    },
    {{"perk_remove_fog_of_war", "perkdesc_remove_fog_of_war"},
        {"All-Seeing Eye", "You can see everywhere."},
        {"All Seeing Eye", "You can see everywhere."},
        -- {"Allsight", "See into the unexplored."},
        {"See Everywhere", "You can see everywhere."},
        {"Where the Heck is Everything", "You can see where the heck everything is."},
    },
    {{"perk_levitation_trail", "perkdesc_levitation_trail"},
        {"Levitation Trail", "When levitating, you leave a trail of magical sparks that harm passing creatures."},
    },
    {{"perk_vampirism", "perkdesc_vampirism"},
        {"Vampirism", "You lose 25% maximum health, but can replenish health by drinking blood.\\nBlood doesn't affect satiation level and you no longer suffer from food poisoning."},
        {"More Blood", "Blood blood blood."},
    },
    {{"perk_extra_hp", "perkdesc_extra_hp"},
        {"Extra Health (One-off)", "You gain 50% extra maximum health."},
        {"Stronger Hearts (One-off)", "Hearts bestow more maximum health."},
    },
    {{"perk_hearts_more_extra_hp", "perkdesc_hearts_more_extra_hp"},
        {"Stronger Hearts", "Hearts bestow more maximum health."},
        {"Extra Health", "You gain 50% extra maximum health."},
    },
    {{"perk_glass_cannon", "perkdesc_glass_cannon"},
        {"Glass Cannon", "Your spells are 5 times as powerful, but your maximum health becomes 50 and cannot be increased by normal hearts."},
        {"Glass Cannon", "The explosion is always bigger than you think."},
        {"Glass Cannon", "Oh No."},
        {"Living on the Edge +", "Your spells are 5 times as powerful, but your maximum health becomes 50 and cannot be increased by normal hearts."},
    },
    {{"perk_low_hp_damage_boost", "perkdesc_low_hp_damage_boost"},
        {"Living on the Edge", "Your spells deal 3x damage when you're under 25 HP or 25% of maximum health."},
        {"Glass Cannon Lite", "Your spells deal 3x damage when you're under 25 HP or 25% of maximum health."},
    },
    {{"perk_respawn", "perkdesc_respawn"},
        {"Extra Life (One-off)", "Upon death you respawn with 100 health."},
        {"Respawn (One-off)", "Upon death you respawn with 100 health."},
        {"Saving Grace (One-off)", "If you would die, your HP is set to 100 instead."},
    },
    {{"perk_worm_attractor", "perkdesc_worm_attractor"},
        {"Worm Attractor", "Worms find you attractive."},
        {"Worm Food", "You feel like you're future worm food."},
        {"Worm Lover", "You find worms attractive."},
    },
    {{"perk_radar_enemy", "perkdesc_radar_enemy"},
        {"Enemy Radar", "You can sense nearby enemies."},
        {"Enemy Finder", "You can find nearby enemies."},
        {"Where the Heck are the Enemies", "You can sense where the heck nearby enemies are."},
    },
    {{"perk_food_clock", "perkdesc_food_clock"},
        {"Eat Your Vegetables", "You inflict more damage the more satiated you are, but you start losing health if your stomach is empty."},
        {"Eat Your Porridge", "You inflict more damage the more satiated you are, but you start losing health if your stomach is empty."},
        {"Why Is There Hunger", "This alone isn't enough for me to give the game a thumbs down; just a thumb in the middle. But Noita, for some reason, slapped in\\na hunger mechanic that the games own tutorial didn't mention. You start off barely fed and need to scavenge for food, food that\\ndoesn't exist. You have to eat the corpses of your enemies to stay fed (which barely feeds you), which means those fun boom\\nweapons get another downside as they'll probably just destroy the corpse. You can eat slimes, you can eat poison frogs and you\\ncan guzzle down a swimming pool worth of poison but you can't eat a cave mushroom. Makes sense.\\n \\nNeeding to eat the corpses of your enemy also discourages finding fun solutions to combat like soaking your enemy in oil then lighting\\nthem on fire, or causing a cave in. If you do those; say bye to your food."},
        {"Free Food", "Mmm yummy porridge."},
    },
    {{"perk_radar_wand", "perkdesc_radar_wand"},
        {"Wand Radar", "You can sense nearby wands."},
        {"Wand Finder", "You can find nearby wands."},
        {"Where the Heck are the Wands", "You can sense where the heck nearby wands are."},
    },
    {{"perk_radar_item", "perkdesc_radar_item"},
        {"Item Radar", "You can sense nearby items."},
        {"Item Finder", "You can find nearby items."},
        {"Where the Heck are the Items", "You can sense where the heck nearby items are."},
    },
    {{"perk_radar_moon", "perkdesc_radar_moon"},
        {"Moon Radar", "You can sense lunar energy."},
        {"Moon Finder", "You can find lunar energy."},
        {"Where the Heck is the Moon", "You can sense where the heck lunar energy is."},
        {"The Moon Haunts You", ""},
    },
    {{"perk_protection_fire", "perkdesc_protection_fire"},
        {"Fire Immunity", "You take no damage from fire."},
    },
    {{"perk_protection_radioactivity", "perkdesc_protection_radioactivity"},
        {"Toxic Immunity", "You take no damage from toxic sludge."},
    },
    {{"perk_protection_explosion", "perkdesc_protection_explosion"},
        {"Explosion Immunity", "You take no direct damage from explosions."},
    },
    {{"perk_protection_melee", "perkdesc_protection_melee"},
        {table.concat{"M",  (Random(1, 2) == 1 and "e" or "l"),  (Random(1, 2) == 1 and "e" or "l"),  (Random(1, 2) == 1 and "e" or "l"),  (Random(1, 2) == 1 and "e" or "l"), " Immunity"}, "You take no damage from close-range enemy attacks."},
    },
    {{"perk_protection_electricity", "perkdesc_protection_electricity"},
        {"Electricity Immunity", "You take no damage from electric shocks."},
    },
    {{"perk_teleportitis", "perkdesc_teleportitis"},
        {"Teleportitis", "You take 20% less damage. You teleport away every time you're hurt."},
        {"Telethrowtitis", "You teleport away every time you're hurt. Try not to throw, old man."}, -- Dunk reference?
        {"Impromptu Speedrun", ""},
    },
    {{"perk_teleportitis_dodge", "perkdesc_teleportitis_dodge"},
        {"Teleportitis Dodge", "You teleport a short distance away when an enemy projectile is near."},
        {"Telethrowtitis Dodge", "You teleport a short distance away when an enemy projectile is near. Try not to throw, old man."}, -- Dunk reference?
    },
    {{"perk_stainless_armour", "perkdesc_stainless_armour"},
        {"Stainless Armour", "You take 50% less damage as long as you have no active stain status effect."},
        {"Stainless Armor", "You take 50% less damage as long as you have no active stain status effect. Now in American English!"},
    },
    {{"perk_edit_wands_everywhere", "perkdesc_edit_wands_everywhere"},
        {"Tinker with Wands Everywhere", "A divine blessing allows you to tinker with wands everywhere."},
        {"Edit Wands Everywhere", "Why do you still call it this? Why?"}, -- This one might get edited
        {"The Worst Perk in the Game", "A divine curse allows you to tinker with wands everywhere."},
        {"Extra Wand", ""},
    },
    {{"perk_no_wand_editing", "perkdesc_no_wand_editing"},
        {"No Wand Tinkering", "Wands cannot be tinkered with, but enemies may drop blood money."},
        {"No Wand Editing", "Wands cannot be edited, but enemies may drop blood money."},
        {"The 3rd Best Perk in the Game", "A divine blessing prevents you from tinkering with wands anywhere. Also, enemies may help you win the game."},
    },
    {{"perk_wand_experimenter", "perkdesc_wand_experimenter"},
        {"Wand Experimenter", "Firing newly found and unmodified wands heals you."},
        {"Wand Experimenter", "Firing unmodified wands, or wands whose spells have been dropped directly onto the ground (not placed directly into your inventory), heals you."}, -- It could be funny to include half a paragraph on the specifics of this perk
    },
    {{"perk_adventurer", "perkdesc_adventurer"},
        {"Healthy Exploration", "Every time you visit a new area, you regain 60 health."},
        {"Adventurer", "Amanda?"}, -- This likely will get changed, it's a niche reference.
    },
    {{"perk_ability_actions_materialized", "perkdesc_ability_actions_materialized"},
        {"Bombs Materialized", "Bomb-like spells can be placed in the ITEMS space in inventory and used like throwable items."},
        {"Bombs", "Unleash your inner pyromaniac. Break free of the chains of mana and toss bombs wherever."},
        {"Inventory Casting", "Wands are for CHUMPS."},
        {"Plums Materialized", "Plum-like spells can be placed in the ITEMS space in inventory and used like throwable items."},
    },
    {{"perk_projectile_homing", "perkdesc_projectile_homing"},
        {"Homing Shots", "Your spells home towards enemies very slightly."},
        {"Homing", "Makes a projectile accelerate towards your foes"},
    },
    {{"perk_projectile_homing_shooter", "perkdesc_projectile_homing_shooter"},
        {"Boomerang Spells", "Your spells arc towards you, but gain extra speed and deal extra damage."},
        {"Boomerang", "Gives a projectile a path that curves towards you"},
        {"Curvecast", ""},
    },
    {{"perk_unlimited_spells", "perkdesc_unlimited_spells"},
        {"Unlimited Spells", "Most spells are now unlimited."},
        {"Why Are Spells Limited", "The fun stops when you start playing. You'll notice a weapon in your inventory that shoots bombs and you'll get all sorts of ideas.\\nWell, stop those ideas cause you get 3 shots. The fun weapons that can destroy the environment are limited with no way (that\\nI could find) to recharge them. I get that you don't want the player to just blow up everything, but there is a middle ground.\\n \\nThe areas (at least the first couple) are cramped tunnels, which you would think is so that the player can make their own paths.\\nWell, you can. 3 times."},
    },
    {{"perk_freeze_field", "perkdesc_freeze_field"},
        {"Freeze Field", "Liquids freeze in your presence."},
        {"Freeze Charge", "Gives a projectile a frozen charge, that it will release on impact"},
    },
    {{"perk_gas_fire", "perkdesc_gas_fire"},
        {"Gas Fire", "Gases near you ignite automatically."},
    },
    {{"perk_dissolve_powders", "perkdesc_dissolve_powders"},
        {"Dissolve Powders", "Sand and other soft, powdery materials dissolve quickly in your presence."},
    },
    {{"perk_bleed_slime", "perkdesc_bleed_slime"},
        {"Slime Blood", "You bleed slime, but slime no longer slows you down and you have higher projectile resistance."},
    },
    {{"perk_bleed_oil", "perkdesc_bleed_oil"},
        {"Oil Blood", "You bleed flammable oil, but are immune to fire."},
        {"Fire Immunity", "You take no damage from fire."},
    },
    {{"perk_gas_blood", "perkdesc_gas_blood"},
        {"Gas Blood", "You bleed flammable gas instead of blood."},
        {"Toxic Immunity", "You take no damage from toxic sludge."},
    },
    {{"perk_shield", "perkdesc_shield"},
        {"Permanent Shield", "You gain a small, permanent shield."},
        {"Shield", "You gain a small shield."},
        {"Energy Shield", "You gain a small energy shield."},
    },
    {{"perk_revenge_explosion", "perkdesc_revenge_explosion"},
        {"Revenge Explosion", "You release a magical explosion upon taking damage, and gain 25% resistance against explosions."},
    },
    {{"perk_revenge_tentacle", "perkdesc_revenge_tentacle"},
        {"Revenge Tentacle", "You summon a monstrous tentacle upon taking damage, and gain 25% resistance against projectiles."},
        {"Personal Hentai Thrower", "You summon a weeb-like tentacle upon taking damage, and gain 25% resistance against projectiles."},
    },
    {{"perk_revenge_rats", "perkdesc_revenge_rats"},
        {"Revenge Rats", "When you take damage, there's a chance that a helpful rat minion is summoned"},
        {"Revenge Rats", "When you take damage, there's a chance that a lil adorable buddy is summoned"},
        {"Plague Rats", "Dying enemies release rats to serve your bidding! All rats become your friend."},
        {"Spontaneous Generation", "Vomit near you evolves into helpful rat minions"},
        {"Rat Perk", "Which perk is this again?"},
    },
    {{"perk_revenge_bullet", "perkdesc_revenge_bullet"},
        {"Revenge Bullets", "You return fire when hit by projectiles, and you gain 20% resistance against explosions and projectiles."},
    },
    {{"perk_attack_foot", "perkdesc_attack_foot"},
        {"Lukki Mutation", "You grow curious additional limbs that fight for you."},
        {"Spider-man", "You can do whatever a spider can."},
        {"The 2nd Best Perk in the Game", "You grow curious additional limbs that help you win the game."},
    },
    {{"perk_leggy_feet", "perkdesc_leggy_feet"},
        {"Leggy Mutation", "You grow disturbing looking limbs that fight for you."},
        {"Spider-man...?", "You can do whatever a spider can...?"},
        {"The Best Perk in the Game", "You grow disturbing looking limbs that help you win the game."},
        {"Reward for Killing an Endangered Species!", "Congratulations. Do you feel good about yourself?"},
    },
    {{"perk_plague_rats", "perkdesc_plague_rats"},
        {"Plague Rats", "Dying enemies release rats to serve your bidding! All rats become your friend."},
        {"Plague Rats", "Dying enemies release lil adorable buddies to serve your bidding! All lil adorable buddies become your friend."},
        {"Spontaneous Generation", "Vomit near you evolves into helpful rat minions"},
        {"Revenge Rats", "When you take damage, there's a chance that a helpful rat minion is summoned"},
        {"Rat Perk", "Which perk is this again?"},
    },
    {{"perk_vomit_rats", "perkdesc_vomit_rats"},
        {"Spontaneous Generation", "Vomit near you evolves into helpful rat minions"},
        {"Spontaneous Generation", "Vomit near you evolves into lil adorable buddies"},
        {"Plague Rats", "Dying enemies release rats to serve your bidding! All rats become your friend."},
        {"Revenge Rats", "When you take damage, there's a chance that a helpful rat minion is summoned"},
        {"Vomit Rats", "You can vomit up helpful rat minions"},
        {"Vomit Rats", "You can vomit up lil adorable buddies"},
        {"Ratty Aura", ""},
        {"Rat Perk", "Which perk is this again?"},
    },
    {{"perk_cordyceps", "perkdesc_cordyceps"},
        {"Cordyceps", "Fungal creatures spawn from the corpses of enemies killed by you."},
        {"Cordempts", "Fungel creetures spawn from the corpses of enemies killed by you."},
        {"Cordycepts", "Fyngal cryptures spawn from the corpses of enemies killed by you."},
        {"Contempts", "Furious creatures spawn from the corpses of enemies killed by you."},
        {"Fungal Colony", "Slime near you spontaneously turns into fungal creatures."},
        {"Fungal Disease", "When near danger, you sprout fungal growths."},
        {"Mushroom Thingy", "Which perk is this again?"},
    },
    {{"perk_mold", "perkdesc_mold"},
        {"Fungal Colony", "Slime near you spontaneously turns into fungal creatures."},
        {"Cordyceps", "Fungal creatures spawn from the corpses of enemies killed by you."},
        {"Fungal Disease", "When near danger, you sprout fungal growths."},
        {"Mushroom Thingy", "Which perk is this again?"},
        {"Mold", ""},
    },
    {{"perk_worm_smaller_holes", "perkdesc_worm_smaller_holes"},
        {"Feared By Worms", "Worms run away from you, and worm and lukki enemies no longer destroy terrain while burrowing."},
        {"Worm Detractor", "Worms find you unattractive."},
        {"Worm Hater", "You find worms unattractive."},
    },
    {{"perk_projectile_repulsion", "perkdesc_projectile_repulsion"},
        {"Projectile Repulsion Field", "Most projectiles are repulsed by your presence, but you take slightly more projectile damage."},
        {"Projectile Repulsion Sector", "Projectiles that fly into a small sector in front of you get blown away."},
    },
    {{"perk_risky_critical", "perkdesc_risky_critical"},
        {"Close Call", "You gain additional chance to deal critical hits as long as there are enemies near you."},
        {"Critical Hit +", "You get more critical hits"},
        {"Bloody Critical Hit +", "You get more critical hits, but bloody"},
        {"Critical Hit ++", "You get more more critical hits"},
    },
    {{"perk_fungal_disease", "perkdesc_fungal_disease"},
        {"Fungal Disease", "When near danger, you sprout fungal growths."},
        {"Fungal Colony", "Slime near you spontaneously turns into fungal creatures."},
        {"Cordyceps", "Fungal creatures spawn from the corpses of enemies killed by you."},
        {"Mushroom Thingy", "Which perk is this again?"},
    },
    {{"perk_projectile_slow_field", "perkdesc_projectile_slow_field"},
        {"Projectile Slow Field", "Projectiles near you slow down."},
        {"Projetile Slow Field", "Projetile near you slow down."},
    },
    {{"perk_projectile_repulsion_sector", "perkdesc_projectile_repulsion_sector"},
        {"Projectile Repulsion Sector", "Projectiles that fly into a small sector in front of you get blown away."},
        {"Projectile Repulsion Field", "Most projectiles are repulsed by your presence, but you take slightly more projectile damage."},
    },
    {{"perk_projectile_eater_sector", "perkdesc_projectile_eater_sector"},
        {"Projectile Eater", "Projectiles that fly into a small sector behind of you disappear."},
    },
    {{"perk_orbit", "perkdesc_orbit"},
        {"Phasing", "Projectiles seemingly phase through you."},
    },
    {{"perk_angry_ghost", "perkdesc_angry_ghost"},
        {"Angry Ghost", "An angry spirit comes to your aid, copying nearby spells and projectiles."},
        {">:(", ""},
        {"Unhappy Ghost", "An unhappy spirit comes to your aid, copying nearby spells and projectiles."},
        {"Angy Ghost", "An angy spirit comes to your aid, copying nearby spells and projectiles."},
        {"Angy Gost", "An angy gost comes to your aid, copying nearby spells and projectiles."},
        {"Angry Gost", "An angry gost comes to your aid, copying nearby spells and projectiles."},
        {"Unhappy Gost", "An unhappy gost comes to your aid, copying nearby spells and projectiles."},
    },
    {{"perk_hungry_ghost", "perkdesc_hungry_ghost"},
        {"Hungry Ghost", "Summons a happy minion who'll eat enemy projectile every now and then."},
        {":)", ""},
        {"Happy Ghost", "Summons a hungry minion who'll eat enemy projectile every now and then."},
        {"Gappy Gost", "Summons a gungry gost who'll eat enemy projectile every now and then."},
        {"Happy Gost", "Summons a hungry gost who'll eat enemy projectile every now and then."},
        {"Hungry Gost", "Summons a happy gost who'll eat enemy projectile every now and then."},
    },
    {{"perk_death_ghost", "perkdesc_death_ghost"},
        {"Mournful Spirit", "Dying creatures leave behind a spirit that deals damage in a small area."},
        {"Death Ghost", ""},
        {":|", ""},
        {"Mournful Gost", "Dying creatures leave behind a gost that deals damage in a small area."},
        {"Mournful Ghost", "Dying creatures leave behind a ghost that deals damage in a small area."},
        {"Death Spirit", ""},
    },
    {{"perk_homunculus", "perkdesc_homunculus"},
        {"Homunculus", "Every time you leave a Holy Mountain, a helpful homunculus is summoned."},
        {"Hunkulus", "Every time you leave a Holy Mountain, a helpful hunkulus is summoned."},
        {"Summon Man", "Every time you leave a Holy Mountain, you Summon a Man."},
    },
    {{"perk_lukki_minion", "perkdesc_lukki_minion"},
        {"Lukki Minion", "Summons a lukki minion to your help."},
        {"Friendly Neighborhood Spider", ""},
        {"My Son", ""},
    },
    {{"perk_electricity", "perkdesc_electricity"},
        {"Electricity", "You're immune to electric damage, but metal and liquids around you electrify constantly. Look out!"},
        {"Electricity Immunity", "You take no damage from electric shocks."},
    },
    {{"perk_attract_items", "perkdesc_attract_items"},
        {"Attract Gold", "Gold nuggets gravitate towards you."},
        {"Gold Attractor", "Gold finds you attractive."},
        {"Gold Food", "You feel like you're future gold food."}, -- "Worm Attractor" reference?
    },
    {{"perk_extra_knockback", "perkdesc_extra_knockback"},
        {"Extra Knockback on Spells", "Your spells knock enemies around with more force."},
        {"Knockback", "Gives a projectile the power to knock back the foes it hits"},
    },
    {{"perk_lower_spread", "perkdesc_lower_spread"},
        {"Concentrated Spells", "Your spells have lower spread and extra damage, but have increased cast delay."},
        {"Reduce Spread", "Reduces the spread of a spell"},
        {"Conc Spells", "Your spells have lower spread and extra damage, but have increased cast delay."},
    },
    {{"perk_low_recoil", "perkdesc_low_recoil"},
        {"Low Recoil", "Recoil caused by your spells is greatly reduced, but your spells fly slightly slower."},
        {"Recoil", "Increases the recoil when casting spells"},
    },
    {{"perk_bounce", "perkdesc_bounce"},
        {"Bouncing Spells", "Almost all your spells bounce around and last longer."},
        {"Bounce", "Makes a projectile bounce on impact"},
    },
    {{"perk_fast_projectiles", "perkdesc_fast_projectiles"},
        {"Faster Projectiles", "Your projectile spells fly faster than before."},
        {"Speed Up", "Increases the speed at which a projectile flies through the air"},
    },
    {{"perk_always_cast", "perkdesc_always_cast"},
        {"Always Cast (One-off)", "A random Always Cast spell is added to the wand in your hand, up to a maximum of 4."},
        {"Always Cats (One-off)", "A random Always Cats spell is added to the wand in your hand, up to a maximum of 4."},
        {"Gamba (One-Off)", "LET'S GO GAMBLING"},
        {"Gamble (One-Off)", ""},
    },
    {{"perk_extra_mana", "perkdesc_extra_mana"},
        {"High Mana, Low Capacity (One-off)", "Your currently held wand loses half its capacity, but gains more mana."},
        {"Extra Mana (One-off)", "Your currently held wand gains more mana, but loses half its capacity."},
    },
    {{"perk_no_more_shuffle", "perkdesc_no_more_shuffle"},
        {"No More Shuffle", "Most of the wands will be non shuffling. The wands you carry with you turn into non-shufflers too."},
    },
    {{"perk_no_more_knockback", "perkdesc_no_more_knockback"},
        {"No More Knockback", "Enemies can no longer knock you back."},
        {"Recoil Damper", "Reduces the recoil when casting spells"},
    },
    {{"perk_spell_duplication", "perkdesc_spell_duplication"},
        {"Projectile Duplication", "Your projectile spells have a chance to duplicate, but you're more vulnerable to projectile damage"},
        {"Double Spell", "Wandbuilding at its finest."},
        {"Divide By 2", "Wandbuilding at its finest."}, -- alternatively: "Casts the next spell 2 times, but with reduced damage"
    },
    {{"perk_faster_wands", "perkdesc_faster_wands"},
        {"Faster Wands (One-off)", "All wands you're currently carrying gain a bonus to their cast delay & reload time."},
    },
    {{"perk_extra_slots", "perkdesc_extra_slots"},
        {"Extra Wand Capacity (One-off)", "The wands you're currently carrying gain 1-3 additional spell slots (to a maximum of 25)"},
    },
    {{"perk_contact_damage", "perkdesc_contact_damage"},
        {"Contact Damage", "Enemies near you take damage, the damage is higher the lower your health gets."},
        {"Melee Immunity", "You take no damage from close-range enemy attacks."},
        {"Damage Field", "Gives a projectile an energy field that constantly deals 3.5 damage to nearby creatures"},
        {"Shield", ""},
    },
    {{"perk_extra_perk", "perkdesc_extra_perk"},
        {"Extra Perk", "From now on you will find an extra perk in every Holy Mountain."},
        {"Extra Perk", "From now on you will find an extra perk in every shop."},
        {"Extra Item in Holy Mountain", "There will be an additional item in every Holy Mountain you haven't discovered yet."},
    },
    {{"perk_perks_lottery", "perkdesc_perks_lottery"},
        {"Perk Lottery", "When you pick a perk, there's a 50% chance the others won't disappear."},
        {"Gamble", "You gain two random perks."},
        {"The Dice", "When you pick a perk, the others won't disappear if you roll a 4 or higher."},
        {"The Die", "When you pick a perk, the others won't disappear if you roll a 4 or higher.\\nYes, the singular of 'dice' is 'die'."},
        {"Gamba", "LET'S GO GAMBLING"},
    },
    {{"perk_gamble", "perkdesc_gamble"},
        {"Gamble (One-off)", "You gain two random perks."},
        {"Perk Lottery (One-off)", "When you pick a perk, there's a 50% chance the others won't disappear."},
        {"Gamba (One-off)", "LET'S GO GAMBLING"},
    },
    {{"perk_extra_shop_item", "perkdesc_extra_shop_item"},
        {"Extra Item in Holy Mountain", "There will be an additional item in every Holy Mountain you haven't discovered yet."},
        {"Extra Shop Item", "There will be an additional item in every shop you haven't discovered yet."},
        {"Extra Perk", "From now on you will find an extra perk in every Holy Mountain."},
    },
    {{"perk_genome_more_hatred", "perkdesc_genome_more_hatred"},
        {"More Hatred", "Creatures become more aggressive towards each other."},
        {"Less Love", "Creatures become less friendly towards each other."},
    },
    {{"perk_genome_more_love", "perkdesc_genome_more_love"},
        {"More Love", "Creatures become more friendly towards each other."},
        {"Less Hatred", "Creatures become less aggressive towards each other."},
    },
    {{"perk_peace_with_steve", "perkdesc_peace_with_steve"},
        {"Peace with Gods", "You make peace with your Gods."},
    },
    {{"perk_mana_from_kills", "perkdesc_mana_from_kills"},
        {"Kills to Mana", "Every time an enemy near you dies, you release mana-recharging liquid."},
    },
    {{"perk_angry_levitation", "perkdesc_angry_levitation"},
        {"Rage-fueled Levitation", "Killing an enemy makes you replenish some of your levitation power."},
        {"Vengeful Levitation", "Getting revenge on those who have wronged you makes you replenish some of your levitation power."},
    },
    {{"perk_laser_aim", "perkdesc_laser_aim"},
        {"Pinpointer", "Your spells fly faster and have lower spread, and you have a handy sightline for aiming!"},
        {"Sniper Laser", "You have a handy sightline for aiming! Also, your spells fly faster and have lower spread."},
    },
    {{"perk_personal_laser", "perkdesc_personal_laser"},
        {"Personal Plasma Beam", "You constantly fire a devastating plasma beam, but you fire spells much slower"},
        {"Personal Laser Beam", "You constantly fire a devastating laser beam, but you fire spells much slower"},
    },
    {{"perk_mega_beam_stone", "perkdesc_mega_beam_stone"},
        {"Summon Sädekivi (One-off)", "You gain an artefact that allows you to call the celestial rage."},
        {"Summon Sädekivi (One-off)", "You gain an artifact that allows you to call the celestial rage. Now in American English!"},
        {"Mega Beam Stone (One-off)", ""},
        {"Jarvis. End the Run. (One-off)", "Orbital nuke."},
    },
    {{"perk_iron_stomach", "perkdesc_iron_stomach"},
        {"Iron Stomach", "You no longer suffer from negative effects of eating."},
    },
    {{"perk_map", "perkdesc_map"},
        {"Spatial Awareness", "If you stop for a moment, you can sense your location relative to the Mountain."},
        {"Map", "If you stop for a moment, you can read your map."},
        {"Where the Heck am I", "If you stop for a moment, you can figure out where the heck you are."},
    },
    -- Essences
    {{"item_essence_fire", "itemdesc_essence_fire"},
        {"Essence of Fire", "Your entire being is fluctuating!"},
        {"Burning Trail", "Gives a projectile a trail of fire"},
    },
    {{"item_essence_water", "itemdesc_essence_water"},
        {"Essence of Water", "The earth flows around you!"},
        {"Circle of Water", "An expanding circle of water"},
    },
    {{"item_essence_air", "itemdesc_essence_air"},
        {"Essence of Air", "Your being controls the air around you!"},
        {"Burst of Air", "A brittle burst of air capable of greatly pushing objects"},
    },
    {{"item_essence_laser", "itemdesc_essence_laser"},
        {"Essence of Earth", "Your being releases damaging light!"},
        {"Essence of Laser", "Your being releases damaging lasers!"},
        {"Essence of Light", "Your being releases damaging light!"},
        {"Magic Bolt", "A powerful magical bolt"},
    },
    {{"item_essence_alcohol", "itemdesc_essence_alcohol"},
        {"Essence of Spirits", "That was not the best of ideas"},
        {"Explosion of Spirits", "An inebriating explosion"},
    },
    -- Graham's Things (TODO)
    --[[
    {{"perkname_graham_healthy_hearts", "perkdesc_graham_healthy_hearts"},
        {"Healthy Hearts", ""},
    },
    {{"perkname_graham_item_lottery", "perkdesc_graham_item_lottery"},
        {"Item Lottery", ""},
        {"Perk Lottery", "When you pick a perk, there's a 50% chance the others won't disappear."},
        {"Gamble", "You gain two random perks."},
        {"Gamba (One-off)", "LET'S GO GAMBLING"},
    },
    {{"perkname_graham_meat_money", "perkdesc_graham_meat_money"},
        {"Midas Meat", "You feel like others are future gold food."}, -- "Worm Attractor" reference? Might be too niche
    },
    {{"cards_tarot_cloth_name", "cards_tarot_cloth_desc"},
        {"Tarot Cloth", "Your cards have enhanced effects."},
        {"Tarot Cloth", "I see the future"},
    },
    ]]--
    -- Apotheosis (TODO)
    --[[
    {{"i dunno apotheosis stuff can go here", "more apoth stuff"},
        {"name", "desc"},
    },
    ]]--
}

local new_translations = [[]]
local year, month, day, hour, minute, second = GameGetDateAndTimeLocal()
math.randomseed(year + minute + day, hour + second + month)
for i = 1, #Names do
    local rnd = math.random(2, #Names[i]) -- set to 2 to test default names
    new_translations = table.concat({new_translations, "\n", Names[i][1][1], ",\"", Names[i][rnd][1], "\",,,,,,,,,,,,\n",
    Names[i][1][2], ",\"", Names[i][rnd][2], "\",,,,,,,,,,,,"})
end
translations = translations .. new_translations
translations = translations:gsub("\r",""):gsub("\n\n+","\n")
ModTextFileSetContent("data/translations/common.csv", translations)
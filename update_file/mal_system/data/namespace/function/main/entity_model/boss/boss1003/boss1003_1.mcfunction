execute if score #difficulty difficulty matches ..1 run function namespace:main/entity_model/mob_template {entity:"piglin_brute",scale:1,health:35,mainhand_id:0,offhand_id:1000,head_id:0,legs_id:0,feet_id:0,chest_id:0,mainhand:"golden_axe",offhand:"air",head:"air",chest:"air",legs:"air",feet:"air"}
execute if score #difficulty difficulty matches 2.. run function namespace:main/entity_model/mob_template {entity:"piglin_brute",scale:1,health:50,mainhand_id:0,offhand_id:1000,head_id:0,legs_id:0,feet_id:0,chest_id:0,mainhand:"iron_axe",offhand:"air",head:"air",chest:"air",legs:"air",feet:"air"}
execute as @e[tag=mob_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.2}
execute as @e[tag=mob_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_attack_range {"value":7}

data merge entity @e[tag=mob_first,limit=1,sort=nearest,distance=..1] {IsImmuneToZombification:1b,DeathLootTable:"namespace:drop/drop_class_d_mob",PersistenceRequired:1b,Tags:["boss1003","body","boss","enemy"]}


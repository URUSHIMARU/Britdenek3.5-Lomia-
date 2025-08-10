function namespace:main/entity_model/mob_template {entity:"zombified_piglin",scale:2.5,health:60,mainhand_id:0,offhand_id:1000,head_id:0,legs_id:0,feet_id:0,chest_id:0,mainhand:"golden_axe",offhand:"air",head:"air",chest:"air",legs:"air",feet:"air"}

execute as @e[tag=mob_first,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2}
execute as @e[tag=mob_first,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_max_health {"value":60}
execute as @e[tag=mob_first,sort=nearest,distance=..1] at @s run data merge entity @s {IsImmuneToZombification:1b,Health:60,PersistenceRequired:1b,NoAI:0b,Tags:["body","ogre_lomia","boss"]}



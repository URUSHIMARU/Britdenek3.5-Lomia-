execute if score #difficulty difficulty matches ..1 run function namespace:main/entity_model/bullet_template {entity:"zombie",health:45,id:1162}
execute if score #difficulty difficulty matches 2.. run function namespace:main/entity_model/bullet_template {entity:"zombie",health:70,id:1162}
execute as @e[tag=entity_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_scale {"value":1.5}
execute as @e[tag=entity_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_spawn_reinforcements {"value":0}
execute if score #difficulty difficulty matches ..1 run execute as @e[tag=entity_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_attack {"value":9}
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=entity_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_attack {"value":13}
effect clear @e[tag=entity_first,limit=1,sort=nearest,distance=..1] wither

data merge entity @e[tag=entity_first,limit=1,sort=nearest,distance=..1] {NoGravity:0b,NoAI:0b,Tags:["boss22_attack1","boss22_attack","enemy","undead"]}



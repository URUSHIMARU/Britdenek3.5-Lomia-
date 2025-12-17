execute if score #difficulty difficulty matches ..1 run function namespace:main/entity_model/bullet_template {entity:"zombie",health:85,id:1196}
execute if score #difficulty difficulty matches 2.. run function namespace:main/entity_model/bullet_template {entity:"zombie",health:130,id:1196}
execute as @e[tag=entity_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_scale {"value":1.5}
execute as @e[tag=entity_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_spawn_reinforcements {"value":0}
execute as @e[tag=entity_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_attack_knockback {"value":2}
execute if score #difficulty difficulty matches ..1 run execute as @e[tag=entity_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_attack {"value":10}
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=entity_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_attack {"value":18}
item replace entity @e[tag=entity_first,limit=1,sort=nearest,distance=..1] weapon.mainhand with minecraft:white_stained_glass[minecraft:custom_model_data={floats:[1195]}]
effect clear @e[tag=entity_first,limit=1,sort=nearest,distance=..1]

data merge entity @e[tag=entity_first,limit=1,sort=nearest,distance=..1] {Silent:0b,NoGravity:0b,NoAI:0b,Tags:["boss22_attack2","boss22_attack","enemy","undead"]}





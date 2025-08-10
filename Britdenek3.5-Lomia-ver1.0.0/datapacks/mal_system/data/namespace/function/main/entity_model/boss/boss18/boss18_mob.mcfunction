execute if score #difficulty difficulty matches ..1 run function namespace:main/entity_model/mob_template {entity:"zombie",scale:2,health:25,mainhand_id:1000,offhand_id:1000,head_id:1162,legs_id:1000,feet_id:1000,chest_id:1000,mainhand:"white_stained_glass",offhand:"white_stained_glass",head:"white_stained_glass",chest:"air",legs:"air",feet:"air"}
execute if score #difficulty difficulty matches 2.. run function namespace:main/entity_model/mob_template {entity:"zombie",scale:2,health:40,mainhand_id:1000,offhand_id:1000,head_id:1162,legs_id:1000,feet_id:1000,chest_id:1000,mainhand:"white_stained_glass",offhand:"white_stained_glass",head:"white_stained_glass",chest:"air",legs:"air",feet:"air"}


execute as @e[tag=mob_first,limit=1,sort=nearest,distance=..1] at @s if score #difficulty difficulty matches 2.. run function namespace:main/system/cal/attribute/set_attack {value:15}
execute as @e[tag=mob_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_attack_knockback {value:1}
effect give @e[tag=mob_first,limit=1,sort=nearest,distance=..1] minecraft:invisibility infinite 1 true

data merge entity @e[tag=mob_first,limit=1,sort=nearest,distance=..1] {Silent:1b,PersistenceRequired:1b,Tags:["boss18_attack2","boss18_attack","enemy","undead"]}



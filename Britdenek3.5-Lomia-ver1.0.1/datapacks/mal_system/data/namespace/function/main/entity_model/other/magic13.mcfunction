
function namespace:main/entity_model/mob_template {entity:"zombified_piglin",scale:1.5,health:1000,mainhand_id:102,offhand_id:102,head_id:101,legs_id:1000,feet_id:1000,chest_id:1000,mainhand:"white_stained_glass",offhand:"white_stained_glass",head:"white_stained_glass",chest:"air",legs:"air",feet:"air"}

execute as @e[tag=mob_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_attack {value:1}
data merge storage minecraft:attribute {value:1000}
execute store result storage attribute value double 0.8 run scoreboard players get @s magicAttackBase
execute as @e[tag=mob_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_max_health with storage attribute
effect give @e[tag=mob_first,limit=1,sort=nearest,distance=..1] minecraft:instant_damage 1 20 true
scoreboard players operation @e[tag=mob_first,limit=1,sort=nearest,distance=..1] magicAttackBase = @s magicAttackBase
scoreboard players operation @e[tag=mob_first,limit=1,sort=nearest,distance=..1] magicAttackBase /= #10 cal

scoreboard players operation @e[tag=mob_first,limit=1,sort=nearest,distance=..1] player = @s player
effect give @e[tag=mob_first,limit=1,sort=nearest,distance=..1] minecraft:invisibility infinite 1 true
scoreboard players set @e[tag=mob_first,limit=1,sort=nearest,distance=..1] summon_time 2400

data merge entity @e[tag=mob_first,limit=1,sort=nearest,distance=..1] {Silent:1b,PersistenceRequired:1b,NoAI:0b,Tags:["summon_mob","undead","magic13","player","undead"]}








scoreboard players add @e[tag=boss22,tag=body,scores={motion2=0..},limit=1] motion2 1


execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object2","boss22_random","boss22_object2_first"],Marker:1b,Invisible:1b}
execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object2","boss22_random","boss22_object2_first"],Marker:1b,Invisible:1b}
execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object2","boss22_random","boss22_object2_first"],Marker:1b,Invisible:1b}
execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object2","boss22_random","boss22_object2_first"],Marker:1b,Invisible:1b}
execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object2","boss22_random","boss22_object2_first"],Marker:1b,Invisible:1b}
execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object2","boss22_random","boss22_object2_first"],Marker:1b,Invisible:1b}

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object2","boss22_random","boss22_object2_first"],Marker:1b,Invisible:1b}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object2","boss22_random","boss22_object2_first"],Marker:1b,Invisible:1b}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object2","boss22_random","boss22_object2_first"],Marker:1b,Invisible:1b}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object2","boss22_random","boss22_object2_first"],Marker:1b,Invisible:1b}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object2","boss22_random","boss22_object2_first"],Marker:1b,Invisible:1b}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object2","boss22_random","boss22_object2_first"],Marker:1b,Invisible:1b}


execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run spreadplayers ~ ~ 15 40 false @e[tag=boss22_random]
execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22_random] at @s store result entity @s Pos[1] double 1.0 run data get entity @e[tag=boss22,tag=body,limit=1] Pos[1]

execute as @e[tag=boss22_random] at @s run teleport @s ~ ~-5 ~
execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] run tag @e[tag=boss22_random] remove boss22_random

execute if entity @e[tag=boss22,tag=body,scores={motion2=5..60}] as @e[tag=boss22_object2_first] at @s run particle minecraft:block{block_state:"minecraft:nether_wart_block"} ~ ~5.2 ~ 0.4 0.4 0.4 1 5 force
execute if entity @e[tag=boss22,tag=body,scores={motion2=5..60}] as @e[tag=boss22_object2_first] at @s run particle minecraft:dripping_lava ~ ~5.3 ~ 0.4 0.4 0.4 1 6 force
execute if entity @e[tag=boss22,tag=body,scores={motion2=10}] as @e[tag=boss22_object2_first] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1194



execute if entity @e[tag=boss22,tag=body,scores={motion2=61}] as @e[tag=boss22_object2_first] at @s run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 2 1.2
execute if entity @e[tag=boss22,tag=body,scores={motion2=61..65}] as @e[tag=boss22_object2_first] at @s run particle minecraft:dripping_lava ~ ~0.5 ~ 2 0.3 2 1 10 force
execute if entity @e[tag=boss22,tag=body,scores={motion2=61..65}] as @e[tag=boss22_object2_first] at @s run teleport @s ~ ~1 ~ ~33 ~
execute if entity @e[tag=boss22,tag=body,scores={motion2=61..65}] as @e[tag=boss22_object2_first] at @s as @e[tag=boss22battle,distance=..3] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss22,tag=body,scores={motion2=61..65}] as @e[tag=boss22_object2_first] at @s as @e[tag=boss22battle,distance=..3] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run effect give @s minecraft:wither 10 1 false


execute if entity @e[tag=boss22,tag=body,scores={motion2=76..79}] run kill @e[tag=boss22_object2]

execute if entity @e[tag=boss22,tag=body,scores={motion2=70..79}] as @e[tag=boss22_object2_first] at @s run teleport @s ~ ~-0.7 ~ ~13 ~




execute as @e[tag=boss22,tag=body,scores={motion2=110..},limit=1] at @s run function namespace:main/boss/boss22/motion/random2

execute if entity @e[tag=boss22,tag=body,scores={motion2=110..},limit=1] run scoreboard players set @e[tag=boss22,tag=body] motion2 0

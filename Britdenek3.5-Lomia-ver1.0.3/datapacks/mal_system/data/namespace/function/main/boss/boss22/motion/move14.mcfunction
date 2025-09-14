scoreboard players add @e[tag=boss22,tag=body,scores={motion2=0..},limit=1] motion2 1


execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object3","boss22_random","boss22_object2_first"],Marker:1b,Invisible:1b}

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object3","boss22_random","boss22_object2_first"],Marker:1b,Invisible:1b}


execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run spreadplayers ~ ~ 15 40 false @e[tag=boss22_random]
execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22_random] at @s store result entity @s Pos[1] double 1.0 run data get entity @e[tag=boss22,tag=body,limit=1] Pos[1]

execute as @e[tag=boss22_random] at @s run teleport @s ~ ~-10 ~
execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] run tag @e[tag=boss22_random] remove boss22_random


execute if entity @e[tag=boss22,tag=body,scores={motion2=15}] as @e[tag=boss22_object3] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1168

execute if entity @e[tag=boss22,tag=body,scores={motion2=11..50}] as @e[tag=boss22_object3] at @s run particle minecraft:dripping_lava ~ ~3 ~ 2 2 2 1 10 force
execute if entity @e[tag=boss22,tag=body,scores={motion2=11..27}] as @e[tag=boss22_object3] at @s run teleport @s ~ ~0.5 ~ ~4 ~
execute if entity @e[tag=boss22,tag=body,scores={motion2=11..65}] as @e[tag=boss22_object3] at @s run teleport @s ~ ~ ~ ~6 ~

execute if entity @e[tag=boss22,tag=body,scores={motion2=79}] as @e[tag=boss22_object3] at @s run particle minecraft:explosion ~ ~3 ~ 2 2 2 1 10 force
execute if entity @e[tag=boss22,tag=body,scores={motion2=79}] as @e[tag=boss22_object3] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 1.6
execute if entity @e[tag=boss22,tag=body,scores={motion2=79}] as @e[tag=boss22_object3] at @s run particle minecraft:block{block_state:"minecraft:nether_wart_block"} ~ ~3 ~ 2 2 2 1 300 force

execute if entity @e[tag=boss22,tag=body,scores={motion2=79}] as @e[tag=boss22_object3] at @s positioned ^ ^2 ^ run function namespace:main/entity_model/boss/boss22/boss22_bullet4
execute if entity @e[tag=boss22,tag=body,scores={motion2=79}] as @e[tag=boss22_object3] at @s positioned ^ ^2 ^ run function namespace:main/entity_model/boss/boss22/boss22_bullet4

execute if entity @e[tag=boss22,tag=body,scores={motion2=79}] run kill @e[tag=boss22_object3]




execute as @e[tag=boss22,tag=body,scores={motion2=110..},limit=1] at @s run function namespace:main/boss/boss22/motion/random2

execute if entity @e[tag=boss22,tag=body,scores={motion2=110..},limit=1] run scoreboard players set @e[tag=boss22,tag=body] motion2 0

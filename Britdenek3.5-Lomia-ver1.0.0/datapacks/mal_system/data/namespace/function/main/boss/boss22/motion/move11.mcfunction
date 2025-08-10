scoreboard players add @e[tag=boss22,tag=body,scores={motion2=0..},limit=1] motion2 1


execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object1","boss22_random","boss22_object1_first"],Marker:1b,Invisible:1b}
execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object1","boss22_random","boss22_object1_first"],Marker:1b,Invisible:1b}
execute if score “ïˆÕ“x difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object1","boss22_random","boss22_object1_first"],Marker:1b,Invisible:1b}
execute if score “ïˆÕ“x difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object1","boss22_random","boss22_object1_first"],Marker:1b,Invisible:1b}


execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22,tag=body] at @s run spreadplayers ~ ~ 15 40 false @e[tag=boss22_random]
execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[sort=random,limit=1,tag=boss22battle] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss22_attack","boss22_object1","boss22_random","boss22_object1_first"],Marker:1b,Invisible:1b}
execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] as @e[tag=boss22_random] at @s store result entity @s Pos[1] double 1.0 run data get entity @e[tag=boss22,tag=body,limit=1] Pos[1]

execute as @e[tag=boss22_random] at @s run teleport @s ~ ~-5 ~

execute if entity @e[tag=boss22,tag=body,scores={motion2=5}] run tag @e[tag=boss22_random] remove boss22_random


execute if entity @e[tag=boss22,tag=body,scores={motion2=21}] as @e[tag=boss22_object1_first] at @s run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 2 1.3
execute if entity @e[tag=boss22,tag=body,scores={motion2=26}] as @e[tag=boss22_object1_first] at @s run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 2 1.3
execute if entity @e[tag=boss22,tag=body,scores={motion2=30}] as @e[tag=boss22_object1_first] at @s run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 2 1.3
execute if entity @e[tag=boss22,tag=body,scores={motion2=21..30}] as @e[tag=boss22_object1_first] at @s run particle minecraft:dripping_lava ~ ~0.5 ~ 2 0.3 2 1 10 force
execute if entity @e[tag=boss22,tag=body,scores={motion2=21..30}] as @e[tag=boss22_object1_first] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1197
execute if entity @e[tag=boss22,tag=body,scores={motion2=21..30}] as @e[tag=boss22_object1_first] at @s run teleport @s ~ ~0.5 ~ ~13 ~
execute if entity @e[tag=boss22,tag=body,scores={motion2=21..30}] as @e[tag=boss22_object1_first,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~27 ~
execute if entity @e[tag=boss22,tag=body,scores={motion2=21..30}] as @e[tag=boss22_object1_first,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~33 ~

execute if entity @e[tag=boss22,tag=body,scores={motion2=30}] run tag @e[tag=boss22_object1_first] remove boss22_object1_first



execute as @e[tag=boss22,tag=body,scores={motion2=110..},limit=1] at @s run function namespace:main/boss/boss22/motion/random2

execute if entity @e[tag=boss22,tag=body,scores={motion2=110..},limit=1] run scoreboard players set @e[tag=boss22,tag=body] motion2 0

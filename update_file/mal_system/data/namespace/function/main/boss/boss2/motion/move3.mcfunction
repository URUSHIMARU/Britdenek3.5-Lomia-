scoreboard players set @e[tag=boss2,scores={motion2=16..},limit=1] motion2 0
scoreboard players add @e[tag=boss2,scores={motion2=0..},limit=1] motion2 1

execute as @e[tag=boss2,scores={motion2=1},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1006
execute as @e[tag=boss2,scores={motion2=2},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1007
execute as @e[tag=boss2,scores={motion2=3},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1008
execute as @e[tag=boss2,scores={motion2=4},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1009
execute as @e[tag=boss2,scores={motion2=5},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1010
execute as @e[tag=boss2,scores={motion2=6},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1011
execute as @e[tag=boss2,scores={motion2=7},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1012

execute as @e[tag=boss2,scores={motion2=7},limit=1] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.2

execute as @e[tag=boss2,scores={motion2=8},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1013
execute as @e[tag=boss2,scores={motion2=9},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1014
execute as @e[tag=boss2,scores={motion2=10},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1015
execute as @e[tag=boss2,scores={motion2=11},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1016
execute as @e[tag=boss2,scores={motion2=12},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1017
execute as @e[tag=boss2,scores={motion2=13},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1018
execute as @e[tag=boss2,scores={motion2=14},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1019
execute as @e[tag=boss2,scores={motion2=15},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1020


execute as @e[tag=boss2,scores={motion2=1..4},limit=1] at @s run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss2,scores={motion2=5..12},limit=1] at @s run teleport @s ~ ~0.1 ~
execute as @e[tag=boss2,scores={motion2=13..16},limit=1] at @s run teleport @s ~ ~-0.1 ~


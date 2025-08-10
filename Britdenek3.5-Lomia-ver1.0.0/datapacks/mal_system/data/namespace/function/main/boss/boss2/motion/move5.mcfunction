scoreboard players set @e[tag=boss2,scores={motion=200..},limit=1] motion 0
scoreboard players add @e[tag=boss2,scores={motion=0..},limit=1] motion 1

execute as @e[tag=boss2,scores={motion=1..3},limit=1] at @s run particle minecraft:sweep_attack ~ ~ ~ 3 1 3 1 80 force
execute as @e[tag=boss2,scores={motion=1},limit=1] at @s run execute as @e[tag=boss2shot,distance=..10] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss2,limit=1]
execute as @e[tag=boss2,scores={motion=1},limit=1] at @s run execute as @e[tag=boss2shot,distance=..10] at @s run teleport @s ~ ~ ~ ~180 -20
execute as @e[tag=boss2,scores={motion=1},limit=1] at @s run teleport @s ~ ~ ~ ~ -90
execute as @e[tag=boss2,scores={motion=1},limit=1] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 3 1.2


execute as @e[tag=boss2,scores={motion2=1},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1006
execute as @e[tag=boss2,scores={motion2=2},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1007
execute as @e[tag=boss2,scores={motion2=3},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1008
execute as @e[tag=boss2,scores={motion2=4},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1009
execute as @e[tag=boss2,scores={motion2=5},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1010
execute as @e[tag=boss2,scores={motion2=6},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1011
execute as @e[tag=boss2,scores={motion2=7},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1012

execute as @e[tag=boss2,scores={motion=7},limit=1] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.2

execute as @e[tag=boss2,scores={motion2=8},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1013
execute as @e[tag=boss2,scores={motion2=9},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1014
execute as @e[tag=boss2,scores={motion2=10},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1015
execute as @e[tag=boss2,scores={motion2=11},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1016
execute as @e[tag=boss2,scores={motion2=12},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1017
execute as @e[tag=boss2,scores={motion2=13},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1018
execute as @e[tag=boss2,scores={motion2=14},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1019
execute as @e[tag=boss2,scores={motion2=15},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1020

execute as @e[tag=boss2,scores={motion2=16},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1006
execute as @e[tag=boss2,scores={motion2=17},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1007
execute as @e[tag=boss2,scores={motion2=18},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1008
execute as @e[tag=boss2,scores={motion2=19},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1009
execute as @e[tag=boss2,scores={motion2=20},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1010
execute as @e[tag=boss2,scores={motion2=21},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1011
execute as @e[tag=boss2,scores={motion2=22},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1012

execute as @e[tag=boss2,scores={motion=22},limit=1] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.2

execute as @e[tag=boss2,scores={motion2=23},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1013
execute as @e[tag=boss2,scores={motion2=24},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1014
execute as @e[tag=boss2,scores={motion2=25},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1015
execute as @e[tag=boss2,scores={motion2=26},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1016
execute as @e[tag=boss2,scores={motion2=27},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1017
execute as @e[tag=boss2,scores={motion2=28},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1018
execute as @e[tag=boss2,scores={motion2=29},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1019
execute as @e[tag=boss2,scores={motion2=30},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1020


execute as @e[tag=boss2,scores={motion2=31},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1006
execute as @e[tag=boss2,scores={motion2=32},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1007
execute as @e[tag=boss2,scores={motion2=33},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1008
execute as @e[tag=boss2,scores={motion2=34},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1009
execute as @e[tag=boss2,scores={motion2=35},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1010
execute as @e[tag=boss2,scores={motion2=36},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1011
execute as @e[tag=boss2,scores={motion2=37},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1012

execute as @e[tag=boss2,scores={motion=37},limit=1] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.2

execute as @e[tag=boss2,scores={motion2=38},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1013
execute as @e[tag=boss2,scores={motion2=39},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1014
execute as @e[tag=boss2,scores={motion2=40},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1015
execute as @e[tag=boss2,scores={motion2=41},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1016
execute as @e[tag=boss2,scores={motion2=42},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1017
execute as @e[tag=boss2,scores={motion2=43},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1018
execute as @e[tag=boss2,scores={motion2=44},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1019
execute as @e[tag=boss2,scores={motion2=45},limit=1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1020


execute as @e[tag=boss2,scores={motion=1..31},limit=1] at @s run teleport @s ~ ~0.2 ~ ~ ~1.5
execute as @e[tag=boss2,scores={motion=32..},limit=1] at @s run teleport @s ~ ~0.2 ~ ~ ~
execute as @e[tag=boss2,scores={motion=47},limit=1] at @s run tag @s add flap1
execute as @e[tag=boss2,scores={motion=47},limit=1] at @s run function namespace:main/boss/boss2/motion/random
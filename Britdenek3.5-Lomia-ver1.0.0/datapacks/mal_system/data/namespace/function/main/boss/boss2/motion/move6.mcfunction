scoreboard players set @e[tag=boss2,scores={motion=200..},limit=1] motion 0

tag @e[tag=boss2,scores={motion=0..},limit=1] remove flap1
tag @e[tag=boss2,scores={motion=0..},limit=1] add flap2

scoreboard players add @e[tag=boss2,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss2,scores={motion=20},limit=1] at @s run execute as @e[tag=boss2] at @s run teleport @s ~ ~ ~ ~ -90

execute as @e[tag=boss2,scores={motion=30},limit=1] at @s run execute as @e[tag=boss2] at @s run playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 3 1.1


execute as @e[tag=boss2,scores={motion=30},limit=1] at @s positioned ^0.2 ^0.2 ^3 run function namespace:main/entity_model/boss/boss2/boss2_bullet1
execute as @e[tag=boss2,scores={motion=30},limit=1] at @s positioned ^0.2 ^-0.2 ^3 run function namespace:main/entity_model/boss/boss2/boss2_bullet1
execute as @e[tag=boss2,scores={motion=30},limit=1] at @s positioned ^-0.2 ^0.2 ^3 run function namespace:main/entity_model/boss/boss2/boss2_bullet1
execute as @e[tag=boss2,scores={motion=30},limit=1] at @s positioned ^-0.2 ^-0.2 ^3 run function namespace:main/entity_model/boss/boss2/boss2_bullet1


execute as @e[tag=boss2,scores={motion=30},limit=1] at @s run execute as @e[tag=boss2shot,limit=4,sort=nearest,distance=..4] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss2,limit=1]
execute as @e[tag=boss2,scores={motion=30},limit=1] at @s run execute as @e[tag=boss2shot,limit=4,sort=nearest,distance=..4] at @s run teleport @s ~ ~ ~ ~180 ~-50
execute as @e[tag=boss2,scores={motion=50},limit=1] at @s run function namespace:main/boss/boss2/motion/random

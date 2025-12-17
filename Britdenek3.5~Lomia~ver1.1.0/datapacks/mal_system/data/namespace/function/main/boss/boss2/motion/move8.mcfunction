scoreboard players set @e[tag=boss2,scores={motion=200..},limit=1] motion 0

tag @e[tag=boss2,scores={motion=0..},limit=1] remove flap1
tag @e[tag=boss2,scores={motion=0..},limit=1] add flap2

scoreboard players add @e[tag=boss2,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss2,scores={motion=5},limit=1] at @s run execute as @e[tag=boss2] at @s run execute as @e[tag=boss2] at @s run teleport @s ~ ~ ~ ~ 0


execute as @e[tag=boss2,scores={motion=6..},limit=1] at @s run execute as @e[tag=boss2] at @s run execute as @e[tag=boss2] at @s unless block ^ ^ ^3 #namespace:airs_for_mob run teleport @s ^ ^ ^1 ~75 0
execute as @e[tag=boss2,scores={motion=6..},limit=1] at @s run execute as @e[tag=boss2] at @s run execute as @e[tag=boss2] at @s if block ^ ^ ^3 #namespace:airs_for_mob run teleport @s ^ ^ ^1 ~ 0


execute as @e[tag=boss2,scores={motion=30},limit=1] at @s positioned ^ ^ ^2 run function namespace:main/entity_model/boss/boss2/boss2_bullet1
execute as @e[tag=boss2,scores={motion=30},limit=1] at @s run execute as @e[tag=boss2shot,limit=1,sort=nearest,distance=..4] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss2,limit=1]
execute as @e[tag=boss2,scores={motion=30},limit=1] at @s run execute as @e[tag=boss2shot,limit=1,sort=nearest,distance=..4] at @s run teleport @s ~ ~ ~ ~180 ~30

execute as @e[tag=boss2,scores={motion=60},limit=1] at @s positioned ^ ^ ^2 run function namespace:main/entity_model/boss/boss2/boss2_bullet1
execute as @e[tag=boss2,scores={motion=60},limit=1] at @s run execute as @e[tag=boss2shot,limit=1,sort=nearest,distance=..4] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss2,limit=1]
execute as @e[tag=boss2,scores={motion=60},limit=1] at @s run execute as @e[tag=boss2shot,limit=1,sort=nearest,distance=..4] at @s run teleport @s ~ ~ ~ ~180 ~30

execute as @e[tag=boss2,scores={motion=90},limit=1] at @s positioned ^ ^ ^2 run function namespace:main/entity_model/boss/boss2/boss2_bullet1
execute as @e[tag=boss2,scores={motion=90},limit=1] at @s run execute as @e[tag=boss2shot,limit=1,sort=nearest,distance=..4] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss2,limit=1]
execute as @e[tag=boss2,scores={motion=90},limit=1] at @s run execute as @e[tag=boss2shot,limit=1,sort=nearest,distance=..4] at @s run teleport @s ~ ~ ~ ~180 ~30

execute as @e[tag=boss2,scores={motion=120},limit=1] at @s positioned ^ ^ ^2 run function namespace:main/entity_model/boss/boss2/boss2_bullet1
execute as @e[tag=boss2,scores={motion=120},limit=1] at @s run execute as @e[tag=boss2shot,limit=1,sort=nearest,distance=..4] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss2,limit=1]
execute as @e[tag=boss2,scores={motion=120},limit=1] at @s run execute as @e[tag=boss2shot,limit=1,sort=nearest,distance=..4] at @s run teleport @s ~ ~ ~ ~180 ~30


execute as @e[tag=boss2,scores={motion=140},limit=1] at @s run execute as @e[tag=boss2] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,tag=player]
execute as @e[tag=boss2,scores={motion=180},limit=1] at @s run execute as @e[tag=boss2] at @s run teleport @s ~ ~ ~ ~ -50
execute as @e[tag=boss2,scores={motion=180},limit=1] at @s run execute as @e[tag=boss2] at @s run function namespace:main/boss/boss2/motion/random


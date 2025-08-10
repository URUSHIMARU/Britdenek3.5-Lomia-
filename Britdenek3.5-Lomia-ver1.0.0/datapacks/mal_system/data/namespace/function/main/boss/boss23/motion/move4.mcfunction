scoreboard players add @e[tag=boss23,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss23,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss23] ~ ~ ~ 
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss23] ^0.6 ^-0.3 ^-0.2
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss23] ^-0.6 ^-0.3 ^-0.2
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss23] ^ ^-1.2 ^-1.8

execute as @e[tag=boss23,tag=body] at @s run tag @e[tag=boss23,tag=body] remove stop
execute as @e[tag=boss23,tag=!tail] at @s unless block ^ ^1 ^-1 #namespace:airs_for_mob run tag @e[tag=boss23,tag=body] add stop
execute as @e[tag=boss23,tag=!tail] at @s unless block ^ ^1 ^-2 #namespace:airs_for_mob run tag @e[tag=boss23,tag=body] add stop


execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss23battle,limit=1,sort=nearest,tag=!bullet]
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss23] ~ ~ ~ ~ ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss23] ^0.6 ^-0.3 ^-0.2 ~-30 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss23] ^-0.6 ^-0.3 ^-0.2 ~30 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss23] ^ ^-1.2 ^-1.8 ~180 ~




execute if entity @e[tag=boss23,tag=body,scores={motion=22..25}] as @e[tag=arm1,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~10 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=22..25}] as @e[tag=arm2,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~-10 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=22..25}] as @e[tag=tail,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~ ~-6



execute if entity @e[tag=boss23,tag=body,scores={motion=35..36}] as @e[tag=tail,limit=1,tag=boss23] at @s run particle minecraft:explosion ^ ^1 ^ 1 1 1 1 5 force
execute if entity @e[tag=boss23,tag=body,scores={motion=35..36}] as @e[tag=tail,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~ ~20


execute if entity @e[tag=boss23,tag=body,scores={motion=35..40}] as @e[tag=body1,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss23,tag=body,scores={motion=35..40}] as @e[tag=body,limit=1,tag=boss23] at @s if block ~ ~1 ~ #namespace:airs_for_mob run teleport @s ~ ~2.5 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50},tag=!stop] as @e[tag=body,limit=1,tag=boss23] at @s run teleport @s ^ ^ ^-0.6

execute if entity @e[tag=boss23,tag=body,scores={motion=50..54}] as @e[tag=body1,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss23,tag=body,scores={motion=50..54}] as @e[tag=tail,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~ ~-10

execute if entity @e[tag=boss23,tag=body,scores={motion=50..53}] as @e[tag=arm1,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~-10 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=50..53}] as @e[tag=arm2,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~10 ~


execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s run particle minecraft:cloud ^ ^1 ^2 0.5 0.5 0.5 0.1 10 force
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s run playsound minecraft:item.crossbow.shoot master @a ^ ^ ^3 1.4
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^1 ^2 run function namespace:main/entity_model/boss/boss23/boss23_bullet2
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^1 ^2 run function namespace:main/entity_model/boss/boss23/boss23_bullet2
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^1 ^2 run function namespace:main/entity_model/boss/boss23/boss23_bullet2
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^1 ^2 run function namespace:main/entity_model/boss/boss23/boss23_bullet2
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^1 ^2 run function namespace:main/entity_model/boss/boss23/boss23_bullet2
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^1 ^2 run function namespace:main/entity_model/boss/boss23/boss23_bullet2
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^1 ^2 run function namespace:main/entity_model/boss/boss23/boss23_bullet2

execute as @e[tag=boss23,tag=body] at @s store result score @s x run data get entity @s Pos[0] 100
execute as @e[tag=boss23,tag=body] at @s store result score @s y run data get entity @s Pos[1] 100
execute as @e[tag=boss23,tag=body] at @s store result score @s z run data get entity @s Pos[2] 100


execute as @e[tag=boss23arrow_first] at @s store result score @s x run data get entity @s Pos[0] 100
execute as @e[tag=boss23arrow_first] at @s store result score @s y run data get entity @s Pos[1] 100
execute as @e[tag=boss23arrow_first] at @s store result score @s z run data get entity @s Pos[2] 100

execute as @e[tag=boss23arrow_first] at @s run scoreboard players operation @s x -= @e[tag=boss23,tag=body,limit=1] x
execute as @e[tag=boss23arrow_first] at @s run scoreboard players operation @s y -= @e[tag=boss23,tag=body,limit=1] y
execute as @e[tag=boss23arrow_first] at @s run scoreboard players operation @s z -= @e[tag=boss23,tag=body,limit=1] z


scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] x 20 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] x 30 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] x 40 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] x 50 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] x 20 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] x 30 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] x 40 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] x 50 

scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] y 20 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] y 30 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] y 40 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] y 50 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] y 20 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] y 30 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] y 40 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] y 50 

scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] z 20 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] z 30 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] z 40 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] z 50 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] z 20 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] z 30 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] z 40 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] z 50 

execute as @e[tag=boss23arrow_first] at @s store result entity @s Motion[0] double 0.006 run scoreboard players get @s x 
execute as @e[tag=boss23arrow_first] at @s store result entity @s Motion[1] double 0.006 run scoreboard players get @s y 
execute as @e[tag=boss23arrow_first] at @s store result entity @s Motion[2] double 0.006 run scoreboard players get @s z 

tag @e[tag=boss23arrow_first] remove boss23arrow_first



execute as @e[tag=boss23,tag=body,scores={motion=85..},limit=1] at @s run function namespace:main/boss/boss23/motion/random1
execute if entity @e[tag=boss23,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss23,tag=body] motion 0




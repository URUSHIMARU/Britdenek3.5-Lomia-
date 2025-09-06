scoreboard players add @e[tag=boss23,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss23,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss23] ~ ~ ~ 
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss23] ^0.6 ^-0.3 ^-0.2
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss23] ^-0.6 ^-0.3 ^-0.2
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss23] ^ ^-1.2 ^-1.8

execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body] at @s run tag @e[tag=boss23,tag=body] remove stop
execute as @e[tag=boss23,tag=!tail] at @s unless block ^ ^1 ^1 #namespace:airs_for_mob run tag @e[tag=boss23,tag=body] add stop
execute as @e[tag=boss23,tag=!tail] at @s unless block ^ ^1 ^2 #namespace:airs_for_mob run tag @e[tag=boss23,tag=body] add stop


execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss23battle,limit=1,sort=nearest,tag=!bullet]
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss23] ~ ~ ~ ~ ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss23] ^0.6 ^-0.3 ^-0.2 ~-30 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss23] ^-0.6 ^-0.3 ^-0.2 ~30 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss23] ^ ^-1.2 ^-1.8 ~180 ~




execute if entity @e[tag=boss23,tag=body,scores={motion=22}] as @e[tag=arm1,limit=1,tag=boss23] at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss23,tag=body,scores={motion=22..25}] as @e[tag=arm1,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~20 ~-4
execute if entity @e[tag=boss23,tag=body,scores={motion=22..25}] as @e[tag=arm2,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~-20 ~-4

execute if entity @e[tag=boss23,tag=body,scores={motion=52..55},tag=!stop] as @e[tag=body,limit=1,tag=boss23] at @s run teleport ^ ^ ^2

execute if entity @e[tag=boss23,tag=body,scores={motion=52..55}] as @e[tag=arm1,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~-32 ~-1
execute if entity @e[tag=boss23,tag=body,scores={motion=52..55}] as @e[tag=arm2,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~32 ~-1
execute if entity @e[tag=boss23,tag=body,scores={motion=52..55}] as @e[tag=body,limit=1,tag=boss23] at @s run particle minecraft:sweep_attack ^ ^1 ^3 1 1 1 1 30 force
execute if entity @e[tag=boss23,tag=body,scores={motion=52..55}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^1 ^3 as @e[tag=boss23battle,distance=..3] unless score @s player = @e[tag=boss23,tag=body,limit=1] player run scoreboard players set @s commandDamage 26
execute if entity @e[tag=boss23,tag=body,scores={motion=52..55}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^1 ^3 as @e[tag=boss23battle,distance=..3] unless score @s player = @e[tag=boss23,tag=body,limit=1] player run effect give @s minecraft:wither 5 5 false

execute if entity @e[tag=boss23,tag=body,scores={motion=52}] as @e[tag=body,limit=1,tag=boss23] at @s run playsound minecraft:item.trident.throw master @a ^ ^1 ^3 1 2





execute as @e[tag=boss23,tag=body,scores={motion=85..},limit=1] at @s run function namespace:main/boss/boss23/motion/random1
execute if entity @e[tag=boss23,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss23,tag=body] motion 0




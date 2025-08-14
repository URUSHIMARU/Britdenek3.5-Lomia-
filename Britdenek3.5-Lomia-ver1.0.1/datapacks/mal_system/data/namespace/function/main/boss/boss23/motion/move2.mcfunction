scoreboard players add @e[tag=boss23,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss23,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss23] ~ ~ ~ 
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss23] ^0.6 ^-0.3 ^-0.2
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss23] ^-0.6 ^-0.3 ^-0.2
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss23] ^ ^-1.2 ^-1.8







execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss23] ~ ~ ~ ~ ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss23] ^0.6 ^-0.3 ^-0.2 ~-30 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss23] ^-0.6 ^-0.3 ^-0.2 ~30 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss23] ^ ^-1.2 ^-1.8 ~180 ~



execute if entity @e[tag=boss23,tag=body,scores={motion=22}] as @e[tag=body1,limit=1,tag=boss23] at @s run playsound minecraft:entity.allay.item_thrown master @a ~ ~ ~ 3 0


execute if entity @e[tag=boss23,tag=body,scores={motion=22..25}] as @e[tag=arm1,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~20 ~-7

execute if entity @e[tag=boss23,tag=body,scores={motion=32..35}] as @e[tag=arm1,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~-30 ~-3


execute if entity @e[tag=boss23,tag=body,scores={motion=62..65}] as @e[tag=arm1,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~10 ~10


execute as @e[tag=boss23,tag=body,scores={motion=85..},limit=1] at @s run function namespace:main/boss/boss23/motion/random1
execute if entity @e[tag=boss23,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss23,tag=body] motion 0




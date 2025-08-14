scoreboard players add @e[tag=boss21,tag=body,scores={motion=0..},limit=1] motion 1

execute as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~ 
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^ 

execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~ ~ ~
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^ ~ ~90
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^ ~ ~90



execute if entity @e[tag=boss21,tag=body,scores={motion=10..30}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~-3 ~-5


execute if entity @e[tag=boss21,tag=body,scores={motion=50..70}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~3 ~5


execute if entity @e[tag=boss21,tag=body,scores={motion=30}] as @e[tag=arm2,limit=1,tag=boss21] at @s run playsound minecraft:entity.allay.death master @a ~ ~ ~ 2.5 1.9


execute as @e[tag=boss21,tag=body,scores={motion=85..},limit=1] at @s run function namespace:main/boss/boss21/motion/random1

execute if entity @e[tag=boss21,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss21,tag=body] motion 0

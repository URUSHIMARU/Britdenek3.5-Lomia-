scoreboard players add @e[tag=boss19,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ 
execute as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 







execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 ~ ~




execute if entity @e[tag=boss19,tag=body,scores={motion=10..30}] as @e[tag=body1,limit=1,tag=boss19] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss19,tag=body,scores={motion=10..30}] as @e[tag=arm1,limit=1,tag=boss19] at @s run teleport @s ~ ~ ~ ~2 ~-3
execute if entity @e[tag=boss19,tag=body,scores={motion=10..30}] as @e[tag=arm2,limit=1,tag=boss19] at @s run teleport @s ~ ~ ~ ~-2 ~-3


execute if entity @e[tag=boss19,tag=body,scores={motion=50..70}] as @e[tag=body1,limit=1,tag=boss19] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss19,tag=body,scores={motion=50..70}] as @e[tag=arm1,limit=1,tag=boss19] at @s run teleport @s ~ ~ ~ ~-2 ~3
execute if entity @e[tag=boss19,tag=body,scores={motion=50..70}] as @e[tag=arm2,limit=1,tag=boss19] at @s run teleport @s ~ ~ ~ ~2 ~3



execute if entity @e[tag=boss19,tag=body,scores={motion=10}] as @e[tag=body,limit=1,tag=boss19] at @s run playsound minecraft:entity.skeleton.converted_to_stray master @a ~ ~ ~ 1 0.8


execute as @e[tag=boss19,tag=body,scores={motion=85..},limit=1] at @s run function namespace:main/boss/boss19/motion/random1

execute if entity @e[tag=boss19,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss19,tag=body] motion 0

#execute if entity @e[tag=boss19,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss19,tag=body] motion 0

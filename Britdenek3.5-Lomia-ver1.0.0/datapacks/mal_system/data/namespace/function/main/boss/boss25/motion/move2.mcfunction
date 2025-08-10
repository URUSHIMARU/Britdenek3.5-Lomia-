scoreboard players add @e[tag=boss25,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss25,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss25] ~ ~0 ~ 
execute as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss25] ^-0.35 ^-0.05 ^-0.03
execute as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss25] ^0.35 ^-0.05 ^-0.03
execute as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss25] ^0.11 ^-0.8 ^ 
execute as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss25] ^-0.11 ^-0.8 ^ 






execute if entity @e[tag=boss25,tag=body,scores={motion=1..2}] as @e[tag=boss25,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss25] ~ ~0 ~ ~ ~
execute if entity @e[tag=boss25,tag=body,scores={motion=1..2}] as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss25] ^-0.35 ^-0.05 ^-0.03 ~ ~90
execute if entity @e[tag=boss25,tag=body,scores={motion=1..2}] as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss25] ^0.35 ^-0.05 ^-0.03 ~ ~90
execute if entity @e[tag=boss25,tag=body,scores={motion=1..2}] as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss25] ^0.11 ^-0.8 ^ ~ ~
execute if entity @e[tag=boss25,tag=body,scores={motion=1..2}] as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss25] ^-0.11 ^-0.8 ^ ~ ~




execute if entity @e[tag=boss25,tag=body,scores={motion=22..26}] as @e[tag=arm1,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~3 ~-15
execute if entity @e[tag=boss25,tag=body,scores={motion=22..26}] as @e[tag=arm2,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~-3 ~-15

execute if entity @e[tag=boss25,tag=body,scores={motion=22}] as @e[tag=body1,limit=1,tag=boss25] at @s run playsound minecraft:entity.vindicator.celebrate master @a ~ ~ ~ 2 0.8

execute if entity @e[tag=boss25,tag=body,scores={motion=52..56}] as @e[tag=arm1,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~-3 ~15
execute if entity @e[tag=boss25,tag=body,scores={motion=52..56}] as @e[tag=arm2,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~3 ~15




execute if entity @e[tag=boss25,tag=body,scores={motion=65..},limit=1] run scoreboard players set @e[tag=boss25,tag=body] bossmove 5
#execute as @e[tag=boss25,tag=body,scores={motion=65..},limit=1] at @s run function namespace:main/boss/boss25/motion/random1

execute if entity @e[tag=boss25,tag=body,scores={motion=65..},limit=1] run scoreboard players set @e[tag=boss25,tag=body] motion 0

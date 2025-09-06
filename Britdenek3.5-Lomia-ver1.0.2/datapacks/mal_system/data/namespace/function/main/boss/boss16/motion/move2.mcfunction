scoreboard players add @e[tag=boss16,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss16,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss16] ~ ~0 ~ 
execute as @e[tag=boss16,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss16] ^-0.35 ^-0.05 ^ 
execute as @e[tag=boss16,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss16] ^0.35 ^-0.05 ^ 
execute as @e[tag=boss16,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss16] ^0.11 ^-0.8 ^ 
execute as @e[tag=boss16,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss16] ^-0.11 ^-0.8 ^ 
execute as @e[tag=boss16,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss16] ^0.1 ^-0.65 ^ 






execute if entity @e[tag=boss16,tag=body,scores={motion=1..2}] as @e[tag=boss16,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss16] ~ ~0 ~ ~ ~
execute if entity @e[tag=boss16,tag=body,scores={motion=1..2}] as @e[tag=boss16,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss16] ^-0.35 ^-0.05 ^ ~ ~
execute if entity @e[tag=boss16,tag=body,scores={motion=1..2}] as @e[tag=boss16,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss16] ^0.35 ^-0.05 ^ ~ ~
execute if entity @e[tag=boss16,tag=body,scores={motion=1..2}] as @e[tag=boss16,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss16] ^0.11 ^-0.8 ^ ~ ~
execute if entity @e[tag=boss16,tag=body,scores={motion=1..2}] as @e[tag=boss16,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss16] ^-0.11 ^-0.8 ^ ~ ~
execute if entity @e[tag=boss16,tag=body,scores={motion=1..2}] as @e[tag=boss16,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss16] ^0.1 ^-0.65 ^ ~ ~




execute if entity @e[tag=boss16,tag=body,scores={motion=22..23}] as @e[tag=arm1,limit=1,tag=boss16] at @s run teleport @s ~ ~ ~ ~ ~-45
execute if entity @e[tag=boss16,tag=body,scores={motion=22..24}] as @e[tag=weapon,limit=1,tag=boss16] at @s run particle minecraft:electric_spark ^ ^1 ^1 0.5 0.5 0.5 1 30 force
execute if entity @e[tag=boss16,tag=body,scores={motion=22}] as @e[tag=arm1,limit=1,tag=boss16] at @s run playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 2





execute if entity @e[tag=boss16,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss16,tag=body] bossmove 3
#execute as @e[tag=boss16,tag=body,scores={motion=85..},limit=1] at @s run function namespace:main/boss/boss16/motion/random1

execute if entity @e[tag=boss16,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss16,tag=body] motion 0

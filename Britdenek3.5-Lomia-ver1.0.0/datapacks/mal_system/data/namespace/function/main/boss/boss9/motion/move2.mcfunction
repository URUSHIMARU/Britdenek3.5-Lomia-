
scoreboard players add @e[tag=boss9,tag=body,scores={motion2=0..},limit=1] motion 1


execute as @e[tag=boss9,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss9] ~ ~3 ~ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss9] ^ ^0.7 ^ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss9] ^-2 ^ ^ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss9] ^2 ^ ^ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss9] ^ ^-0.5 ^-1.4 


execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss9] ~ ~3 ~ ~ ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss9] ^ ^0.7 ^ ~ ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss9] ^-2 ^ ^ ~10 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss9] ^2 ^ ^ ~-10 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss9] ^ ^-0.5 ^-1.4 ~ ~





execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=head,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=body1,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=left_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~5 ~-8
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~-5 ~-4
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=wing,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~3

execute if entity @e[tag=boss9,tag=body,scores={motion=35}] as @e[tag=head,limit=1,tag=boss9] at @s run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 0.8
execute if entity @e[tag=boss9,tag=body,scores={motion=32..35}] as @e[tag=head,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~-18
execute if entity @e[tag=boss9,tag=body,scores={motion=32..35}] as @e[tag=body1,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss9,tag=body,scores={motion=32..35}] as @e[tag=left_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~-20 ~15
execute if entity @e[tag=boss9,tag=body,scores={motion=32..35}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~20 ~10
execute if entity @e[tag=boss9,tag=body,scores={motion=32..35}] as @e[tag=wing,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~3




execute if entity @e[tag=boss9,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss9,tag=body] motion2 0
execute as @e[tag=boss9,tag=body,scores={motion=85..},limit=1] run function namespace:main/boss/boss9/motion/random1
#execute if entity @e[tag=boss9,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss9,tag=body] motion 0

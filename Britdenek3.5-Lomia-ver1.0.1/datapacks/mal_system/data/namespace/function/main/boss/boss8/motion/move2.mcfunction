
scoreboard players add @e[tag=boss8,tag=body,scores={motion2=0..},limit=1] motion 1


execute as @e[tag=boss8,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss8] ~ ~-0.5 ~ ~ ~
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss8] ^ ^3.2 ^ 
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss8] ^-0.7 ^2.5 ^
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss8] ^0.7 ^2.5 ^
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss8] ^ ^ ^ 


execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss8] ~ ~ ~ ~ ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss8] ^ ^3.2 ^ ~ ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss8] ^-0.7 ^2.5 ^ ~90 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss8] ^0.7 ^2.5 ^ ~-90 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss8] ^ ^ ^ ~ ~




execute if entity @e[tag=boss8,tag=body,scores={motion=7}] as @e[tag=body1,limit=1,tag=boss8] at @s run playsound minecraft:entity.dolphin.death master @a ~ ~ ~ 2 0.8
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=body1,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~5 ~-6
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-5 ~-6
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=body2,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-1




execute if entity @e[tag=boss8,tag=body,scores={motion=45..},limit=1] run scoreboard players set @e[tag=boss8,tag=body] motion2 0
execute as @e[tag=boss8,tag=body,scores={motion=45..},limit=1] run function namespace:main/boss/boss8/motion/random1
#execute if entity @e[tag=boss8,tag=body,scores={motion=45..},limit=1] run scoreboard players set @e[tag=boss8,tag=body] motion 0

scoreboard players add @e[tag=boss13,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss13] ~ ~1.3 ~ 
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] run execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss13] ^3.5 ^-2.5 ^1 
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] run execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss13] ^-3.5 ^-2.5 ^1 
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss13] ^ ^2.2 ^
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss13] ^ ^1.5 ^




execute if entity @e[tag=boss13,tag=body,scores={motion=1}] as @e[tag=body,limit=1,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss13battle,limit=1]
execute if entity @e[tag=boss13,tag=body,scores={motion=1}] as @e[tag=body,limit=1,tag=body] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss13] ~ ~1.3 ~ ~ ~
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss13] ^3.5 ^-2.5 ^1 ~-30 ~60
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss13] ^-3.5 ^-2.5 ^1 ~30 ~60
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss13] ^ ^2.2 ^ ~ ~10
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss13] ^ ^1.5 ^ ~ ~



execute if entity @e[tag=boss13,tag=body,scores={motion=22..30}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run teleport @s ^ ^0.7 ^ ~2.5 ~-10
execute if entity @e[tag=boss13,tag=body,scores={motion=22..30}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run teleport @s ^ ^0.7 ^ ~-2.5 ~-10

execute if entity @e[tag=boss13,tag=body,scores={motion=60..61}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run teleport @s ^ ^-3 ^ ~ ~30
execute if entity @e[tag=boss13,tag=body,scores={motion=60..61}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run teleport @s ^ ^-3 ^ ~ ~30


execute if entity @e[tag=boss13,tag=body,scores={motion=61}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run function namespace:main/entity_model/bomb_template {power:3}
execute if entity @e[tag=boss13,tag=body,scores={motion=61}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run function namespace:main/entity_model/bomb_template {power:3}


execute as @e[tag=boss13,tag=body,scores={motion=100..},limit=1] at @s run function namespace:main/boss/boss13/motion/random2

#scoreboard players set @e[tag=body,tag=boss13,scores={motion=100..}] motion 0



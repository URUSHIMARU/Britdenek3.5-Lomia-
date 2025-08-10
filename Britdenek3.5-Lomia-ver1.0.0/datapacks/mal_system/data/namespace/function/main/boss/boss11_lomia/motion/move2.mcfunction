scoreboard players add @e[tag=boss11_lomia,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss11_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss11_lomia] ~ ~0.4 ~
execute as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss11_lomia] ^ ^1.7 ^0.5
execute as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss11_lomia] ^ ^1.7 ^0.4
execute as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss11_lomia] ^1.7 ^1.2 ^0.5 
execute as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss11_lomia] ^-1.7 ^1.2 ^0.5 
execute as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss11_lomia] ^1.5 ^ ^0.5
execute as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss11_lomia] ^-1.5 ^ ^0.5





execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss11_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss11_lomia] ~ ~0.4 ~ ~ ~
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss11_lomia] ^ ^1.7 ^0.4 ~ ~
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss11_lomia] ^ ^1.7 ^0.5 ~ ~20
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss11_lomia] ^1.7 ^1.2 ^0.5 ~ ~-20
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss11_lomia] ^-1.7 ^1.2 ^0.5 ~ ~-20
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss11_lomia] ^1.5 ^ ^0.5 ~ ~
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss11_lomia] ^-1.5 ^ ^0.5 ~ ~





execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=22..30}] as @e[tag=body2,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=22..30}] as @e[tag=left_arm,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~-5 ~-14
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=22..30}] as @e[tag=right_arm,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~5 ~-14


execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=22}] as @e[tag=head,limit=1,tag=boss11_lomia] at @s run playsound minecraft:entity.polar_bear.warning master @a ~ ~ ~ 2 0.8


execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss11_lomia,tag=body] motion2 0
execute as @e[tag=boss11_lomia,tag=body,scores={motion=85..,HP=150..},limit=1] at @s if entity @e[tag=boss11_lomiabattle,distance=..7] run function namespace:main/boss/boss11_lomia/motion/random11
execute as @e[tag=boss11_lomia,tag=body,scores={motion=85..,HP=150..},limit=1] at @s unless entity @e[tag=boss11_lomiabattle,distance=..7] run function namespace:main/boss/boss11_lomia/motion/random12
execute as @e[tag=boss11_lomia,tag=body,scores={motion=85..,HP=..149},limit=1] at @s if entity @e[tag=boss11_lomiabattle,distance=..7] run function namespace:main/boss/boss11_lomia/motion/random21
execute as @e[tag=boss11_lomia,tag=body,scores={motion=85..,HP=..149},limit=1] at @s unless entity @e[tag=boss11_lomiabattle,distance=..7] run function namespace:main/boss/boss11_lomia/motion/random22

#execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss11_lomia,tag=body] motion 0

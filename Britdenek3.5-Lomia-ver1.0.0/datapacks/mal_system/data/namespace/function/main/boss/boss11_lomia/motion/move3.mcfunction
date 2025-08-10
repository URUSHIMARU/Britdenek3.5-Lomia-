scoreboard players add @e[tag=boss11_lomia,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=boss11_lomia,tag=body,scores={motion2=0..},limit=1] motion2 1



execute as @e[tag=boss11_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss11_lomia] ~ ~0.4 ~
execute as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss11_lomia] ^ ^1.7 ^0.5
execute as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss11_lomia] ^ ^1.7 ^0.4
execute as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss11_lomia] ^1.7 ^1.2 ^0.5 
execute as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss11_lomia] ^-1.7 ^1.2 ^0.5 
execute as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss11_lomia] ^1.5 ^ ^0.5
execute as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss11_lomia] ^-1.5 ^ ^0.5




execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1}] as @e[tag=boss11_lomia,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss11_lomia] ~ ~ ~ facing entity @e[tag=boss11_lomiabattle,sort=nearest,limit=1,distance=10..]
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1}] as @e[tag=boss11_lomia,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss11_lomia] ~ ~ ~ ~ 0

execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1}] as @e[tag=boss11_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss11_lomia] ~ ~0.4 ~ ~ ~
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1}] as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss11_lomia] ^ ^1.7 ^0.5 ~ ~20
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1}] as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss11_lomia] ^1.5 ^ ^0.5 ~ ~
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1}] as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss11_lomia] ^-1.5 ^ ^0.5 ~ ~
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1}] as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss11_lomia] ^1.7 ^1.2 ^0.5 ~ ~-20
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1}] as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss11_lomia] ^-1.7 ^1.2 ^0.5 ~ ~-20
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1}] as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss11_lomia] ^ ^1.7 ^0.4 ~ ~



execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1}] as @e[tag=body2,limit=1,tag=boss11_lomia] at @s run playsound minecraft:entity.polar_bear.step master @a ~ ~ ~ 2 0.9
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=14}] as @e[tag=body2,limit=1,tag=boss11_lomia] at @s run playsound minecraft:entity.polar_bear.step master @a ~ ~ ~ 2 0.9


execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1..7}] as @e[tag=body2,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1..7}] as @e[tag=left_arm,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1..7}] as @e[tag=right_arm,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1..7}] as @e[tag=left_leg,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=1..7}] as @e[tag=right_leg,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~-3

execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=8..20}] as @e[tag=body2,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=8..20}] as @e[tag=left_arm,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=8..20}] as @e[tag=right_arm,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=8..20}] as @e[tag=left_leg,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=8..20}] as @e[tag=right_leg,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~3

execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=21..28}] as @e[tag=body2,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=21..28}] as @e[tag=left_arm,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=21..28}] as @e[tag=right_arm,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=21..28}] as @e[tag=left_leg,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=21..28}] as @e[tag=right_leg,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~-3

execute if entity @e[tag=boss11_lomia,tag=body,scores={motion2=28..},limit=1] run scoreboard players set @e[tag=boss11_lomia,tag=body] motion2 0


tag @e[tag=bossStop,tag=boss11_lomia,tag=body] remove bossStop
execute as @e[tag=boss11_lomia] at @s unless block ^ ^ ^2 #namespace:airs_for_mob unless block ^ ^0.1 ^3 #namespace:airs_for_mob run tag @e[tag=boss11_lomia,tag=body] add bossStop
execute if entity @e[tag=boss11_lomia,tag=body] as @e[tag=boss11_lomia,tag=body,tag=!bossStop] at @s run teleport @s ^ ^ ^0.25
execute if entity @e[tag=boss11_lomia,tag=body] as @e[tag=boss11_lomia,tag=body] at @s if block ^ ^-0.5 ^ #namespace:airs_for_mob run teleport @s ~ ~-0.5 ~

execute as @e[tag=boss11_lomia,tag=body] at @s if entity @e[tag=boss11_lomiabattle,distance=..7] run scoreboard players set @s motion 112

execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=112..},limit=1] run scoreboard players set @e[tag=boss11_lomia,tag=body] motion2 0
execute as @e[tag=boss11_lomia,tag=body,scores={motion=112..,HP=150..},limit=1] at @s if entity @e[tag=boss11_lomiabattle,distance=..7] run function namespace:main/boss/boss11_lomia/motion/random11
execute as @e[tag=boss11_lomia,tag=body,scores={motion=112..,HP=150..},limit=1] at @s unless entity @e[tag=boss11_lomiabattle,distance=..7] run function namespace:main/boss/boss11_lomia/motion/random12
execute as @e[tag=boss11_lomia,tag=body,scores={motion=112..,HP=..149},limit=1] at @s if entity @e[tag=boss11_lomiabattle,distance=..7] run function namespace:main/boss/boss11_lomia/motion/random21
execute as @e[tag=boss11_lomia,tag=body,scores={motion=112..,HP=..149},limit=1] at @s unless entity @e[tag=boss11_lomiabattle,distance=..7] run function namespace:main/boss/boss11_lomia/motion/random22


execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=112..},limit=1] run scoreboard players set @e[tag=boss11_lomia,tag=body] motion 0

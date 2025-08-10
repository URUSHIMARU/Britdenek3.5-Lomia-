
scoreboard players add @e[tag=boss10,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=boss10,tag=body,scores={motion2=0..},limit=1] motion2 1


execute as @e[tag=boss10,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss10] ~ ~ ~ 
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss10] ~ ~1.1 ~ 
execute as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss10] ^-1 ^1.6 ^
execute as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss10] ^1 ^1.6 ^ 
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss10] ^-1 ^-1.3 ^0.8
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss10] ^1 ^-1.3 ^0.8 
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss10] ^-1 ^-1.3 ^-0.8
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss10] ^1 ^-1.3 ^-0.8 

execute if entity @e[tag=boss10,tag=body,scores={motion=1}] as @e[tag=boss10,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss10] ~ ~ ~ ~ ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss10] ~ ~1.1 ~ ~ ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1}] as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss10] ^-1 ^1.6 ^ ~10 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1}] as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss10] ^1 ^1.6 ^ ~-10 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss10] ^-1 ^-1.3 ^0.8 ~45 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss10] ^1 ^-1.3 ^0.8 ~-45 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss10] ^-1 ^-1.3 ^-0.8 ~135 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss10] ^1 ^-1.3 ^-0.8 ~-135 ~

#ìkï‡
execute as @e[tag=boss10,tag=body] at @s if block ^ ^1 ^-2 #namespace:airs_for_mob if block ^ ^1 ^-3 #namespace:airs_for_mob run teleport @s ^ ^ ^-0.2
execute as @e[tag=boss10,tag=body] at @s unless block ^ ^1 ^-2 #namespace:airs_for_mob run scoreboard players set @s motion 90
execute as @e[tag=boss10,tag=body] at @s unless block ^ ^1 ^-3 #namespace:airs_for_mob run scoreboard players set @s motion 90

#ìkï‡ÉÇÅ[ÉVÉáÉì
execute if entity @e[tag=boss10,tag=body,scores={motion2=1}] as @e[tag=boss10,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss10battle,limit=1,sort=nearest]
execute if entity @e[tag=boss10,tag=body,scores={motion2=1}] as @e[tag=boss10,tag=body] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss10,tag=body,scores={motion2=1}] as @e[tag=boss10,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss10] ~ ~ ~ ~ ~
execute if entity @e[tag=boss10,tag=body,scores={motion2=1}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss10] ~ ~1.1 ~ ~ ~
execute if entity @e[tag=boss10,tag=body,scores={motion2=1}] as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss10] ^-1 ^1.6 ^ ~10 ~
execute if entity @e[tag=boss10,tag=body,scores={motion2=1}] as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss10] ^1 ^1.6 ^ ~-10 ~
execute if entity @e[tag=boss10,tag=body,scores={motion2=1}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss10] ^-1 ^-1.3 ^0.8 ~45 ~
execute if entity @e[tag=boss10,tag=body,scores={motion2=1}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss10] ^1 ^-1.3 ^0.8 ~-45 ~
execute if entity @e[tag=boss10,tag=body,scores={motion2=1}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss10] ^-1 ^-1.3 ^-0.8 ~135 ~
execute if entity @e[tag=boss10,tag=body,scores={motion2=1}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss10] ^1 ^-1.3 ^-0.8 ~-135 ~


execute if entity @e[tag=boss10,tag=body,scores={motion2=1..2}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss10,tag=body,scores={motion2=1..2}] as @e[tag=leg1,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss10,tag=body,scores={motion2=3..4}] as @e[tag=leg2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss10,tag=body,scores={motion2=5..6}] as @e[tag=leg3,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss10,tag=body,scores={motion2=7..8}] as @e[tag=leg4,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-20

execute if entity @e[tag=boss10,tag=body,scores={motion2=5..6}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-2

execute if entity @e[tag=boss10,tag=body,scores={motion2=3..4}] as @e[tag=leg1,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss10,tag=body,scores={motion2=5..6}] as @e[tag=leg2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss10,tag=body,scores={motion2=7..8}] as @e[tag=leg3,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss10,tag=body,scores={motion2=9..10}] as @e[tag=leg4,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~20

execute if entity @e[tag=boss10,tag=body,scores={motion2=1..5}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss10,tag=body,scores={motion2=1..5}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss10,tag=body,scores={motion2=6..10}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss10,tag=body,scores={motion2=6..10}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~3


execute if entity @e[tag=boss10,tag=body,scores={motion2=4}] as @e[tag=body,limit=1,tag=boss10] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~ ~ 2 0.1 2 1 100 force
execute if entity @e[tag=boss10,tag=body,scores={motion2=4}] as @e[tag=body,limit=1,tag=boss10] at @s run playsound minecraft:block.wood.break master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss10,tag=body,scores={motion2=8}] as @e[tag=body,limit=1,tag=boss10] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~ ~ 2 0.1 2 1 100 force
execute if entity @e[tag=boss10,tag=body,scores={motion2=8}] as @e[tag=body,limit=1,tag=boss10] at @s run playsound minecraft:block.wood.break master @a ~ ~ ~ 2 0



execute if entity @e[tag=boss10,tag=body,scores={motion2=10..},limit=1] run scoreboard players set @e[tag=boss10,tag=body] motion2 0








execute as @e[tag=boss10,tag=body,scores={motion=90..,HP=351..},limit=1] run function namespace:main/boss/boss10/motion/random1
execute as @e[tag=boss10,tag=body,scores={motion=90..,HP=..350},limit=1] run function namespace:main/boss/boss10/motion/random2


#execute if entity @e[tag=boss10,tag=body,scores={motion=90..},limit=1] run scoreboard players set @e[tag=boss10,tag=body] motion 0

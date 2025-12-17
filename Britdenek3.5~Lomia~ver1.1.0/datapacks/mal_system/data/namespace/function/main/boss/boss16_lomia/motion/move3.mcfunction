scoreboard players add @e[tag=boss16_lomia,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=boss16_lomia,tag=body,scores={motion2=0..},limit=1] motion2 1


execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1}] run tag @e[tag=boss16_lomia,tag=body,limit=1] remove stop
execute as @e[tag=boss16_lomia,tag=body,limit=1] at @s unless block ^ ^0.5 ^2 #namespace:airs_for_mob run tag @s add stop
execute as @e[tag=boss16_lomia,tag=body,limit=1] at @s if entity @e[tag=boss16_lomiabattle,distance=..7] run tag @s add stop


execute as @e[tag=boss16_lomia,tag=body,limit=1] at @s if block ^ ^0.5 ^2 #namespace:airs_for_mob run teleport @s ^ ^ ^0.05
execute as @e[tag=boss16_lomia,tag=body,limit=1,scores={motion2=1..10}] at @s if block ^ ^0.5 ^2 #namespace:airs_for_mob run teleport @s ^ ^ ^0.03
execute as @e[tag=boss16_lomia,tag=body,limit=1] at @s if block ^ ^0.5 ^2 #namespace:airs_for_mob run teleport @s ^ ^ ^0.01


execute as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss16_lomia] ~ ~0 ~ 
execute as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss16_lomia] ^-0.35 ^-0.05 ^ 
execute as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss16_lomia] ^0.35 ^-0.05 ^ 
execute as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss16_lomia] ^0.11 ^-0.8 ^ 
execute as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss16_lomia] ^-0.11 ^-0.8 ^ 
execute as @e[tag=boss16_lomia,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss16_lomia] ^0.1 ^-0.65 ^ 






execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss16_lomia] ~ ~0 ~ ~ ~
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss16_lomia] ^-0.35 ^-0.05 ^ ~ ~
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss16_lomia] ^0.35 ^-0.05 ^ ~ ~
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss16_lomia] ^0.11 ^-0.8 ^ ~ ~
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss16_lomia] ^-0.11 ^-0.8 ^ ~ ~
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss16_lomia,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss16_lomia] ^0.1 ^-0.65 ^ ~ ~




#‚·‚è‘«



execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss16_lomia] ~ ~0 ~ facing entity @e[tag=!bullet,tag=boss16_lomiabattle,limit=1]
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss16_lomia] ~ ~0 ~ ~ 0
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss16_lomia] ~ ~0 ~ ~ ~
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=arm1,limit=1,tag=boss16_lomia] ^-0.35 ^-0.05 ^ ~ ~-50
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=arm2,limit=1,tag=boss16_lomia] ^0.35 ^-0.05 ^ ~40 ~30
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=1..2}] as @e[tag=boss16_lomia,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss16_lomia] ^0.1 ^-0.65 ^ ~ ~40
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=leg1,limit=1,tag=boss16_lomia] ^0.11 ^-0.8 ^ ~ ~40
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=leg2,limit=1,tag=boss16_lomia] ^-0.11 ^-0.8 ^ ~ ~-20


execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=2..7}] as @e[tag=arm1,limit=1,tag=boss16_lomia] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=2..7}] as @e[tag=arm2,limit=1,tag=boss16_lomia] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=8..18}] as @e[tag=arm1,limit=1,tag=boss16_lomia] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=8..18}] as @e[tag=arm2,limit=1,tag=boss16_lomia] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=19..24}] as @e[tag=arm1,limit=1,tag=boss16_lomia] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=19..24}] as @e[tag=arm2,limit=1,tag=boss16_lomia] at @s run teleport @s ~ ~ ~ ~ ~1

execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=2..7}] as @e[tag=leg1,limit=1,tag=boss16_lomia] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=2..7}] as @e[tag=leg2,limit=1,tag=boss16_lomia] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=8..18}] as @e[tag=leg1,limit=1,tag=boss16_lomia] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=8..18}] as @e[tag=leg2,limit=1,tag=boss16_lomia] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=19..24}] as @e[tag=leg1,limit=1,tag=boss16_lomia] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion2=19..24}] as @e[tag=leg2,limit=1,tag=boss16_lomia] at @s run teleport @s ~ ~ ~ ~ ~2


scoreboard players set @e[tag=boss16_lomia,tag=body,scores={motion2=24..},limit=1] motion2 0


#execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=22..23}] as @e[tag=arm1,limit=1,tag=boss16_lomia] at @s run teleport @s ~ ~ ~ ~ ~-45
#execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=22..24}] as @e[tag=weapon,limit=1,tag=boss16_lomia] at @s run particle minecraft:electric_spark ^ ^1 ^1 0.5 0.5 0.5 1 30 force
#execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=22}] as @e[tag=arm1,limit=1,tag=boss16_lomia] at @s run playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 2



execute as @e[tag=boss16_lomia,tag=body,scores={motion=10..},limit=1,tag=stop] at @s run function namespace:main/boss/boss16_lomia/motion/random1
execute as @e[tag=boss16_lomia,tag=body,scores={motion=145..},limit=1] at @s run function namespace:main/boss/boss16_lomia/motion/random1


execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=145..},limit=1] run scoreboard players set @e[tag=boss16_lomia,tag=body] motion 0

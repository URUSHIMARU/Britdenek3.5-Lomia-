scoreboard players add @e[tag=boss26_lomia,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=boss26_lomia,tag=body,scores={motion2=0..},limit=1] motion2 1




execute as @e[tag=boss26_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss26_lomia] ~ ~-0.9 ~
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss26_lomia] ^-0.25 ^0.6 ^0.05
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss26_lomia] ^0.25 ^0.6 ^-0.03
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss26_lomia] ^0.11 ^-0.05 ^0.1
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss26_lomia] ^-0.11 ^0.05 ^-0.1



execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss26_lomia] ~ ~0 ~ facing entity @e[tag=!bullet,tag=boss26_lomiabattle,limit=1]
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss26_lomia] ~ ~0 ~ ~ 0
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss26_lomia] ~ ~-0.9 ~ ~ ~
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss26_lomia] ^-0.25 ^0.6 ^0.05 ~-25 ~20
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss26_lomia] ^0.25 ^0.6 ^-0.03 ~0 ~-20
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss26_lomia] ^0.11 ^-0.05 ^0.1 ~ ~
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss26_lomia] ^-0.11 ^0.05 ^-0.1 ~ ~

execute as @e[tag=boss26_lomia,tag=body,limit=1,scores={motion=10}] at @s run playsound minecraft:entity.horse.jump master @a ~ ~ ~ 2 1.1
execute as @e[tag=boss26_lomia,tag=body,limit=1,scores={motion=10}] at @s run particle minecraft:sweep_attack ~ ~0.5 ~ 1 1 1 1 40 force
execute as @e[tag=boss26_lomia,tag=body,limit=1,scores={motion=10..16}] at @s if block ^ ^0.5 ^-2 #namespace:airs_for_mob run teleport @s ^ ^ ^-0.8
execute as @e[tag=boss26_lomia,tag=body,limit=1,scores={motion=10..13}] at @s run teleport @s ^ ^0.8 ^
execute as @e[tag=boss26_lomia,tag=body,limit=1,scores={motion=13..16}] at @s run teleport @s ^ ^-0.8 ^


#execute as @e[tag=boss26_lomia,tag=body,scores={motion=20..},limit=1] at @s run function namespace:main/boss/boss26_lomia/motion/random1

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=20..},limit=1] run scoreboard players add @e[tag=body,tag=boss26_lomia] bossskill5 2

execute as @e[tag=boss26_lomia,tag=body,scores={motion=20..},limit=1] at @s run function namespace:main/boss/boss26_lomia/motion/random1

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=20..},limit=1] run scoreboard players set @e[tag=boss26_lomia,tag=body] motion 0

scoreboard players add @e[tag=boss26_lomia,tag=body,scores={motion=0..},limit=1] motion 1




execute as @e[tag=boss26_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss26_lomia] ~ ~-0.9 ~
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss26_lomia] ^-0.25 ^0.6 ^0.05
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss26_lomia] ^0.25 ^0.6 ^-0.03
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss26_lomia] ^0.11 ^-0.05 ^0.1
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss26_lomia] ^-0.11 ^0.05 ^-0.1




execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss26_lomia] ~ ~-0.9 ~ ~ ~
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss26_lomia] ^-0.25 ^0.6 ^0.05 ~-25 ~20
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss26_lomia] ^0.25 ^0.6 ^-0.03 ~0 ~-20
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss26_lomia] ^0.11 ^-0.05 ^0.1 ~ ~
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss26_lomia] ^-0.11 ^0.05 ^-0.1 ~ ~

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=3..20}] as @e[tag=arm1,limit=1,tag=boss26_lomia] at @s run teleport @s ~ ~ ~ ~ ~-0.3
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=3..20}] as @e[tag=arm2,limit=1,tag=boss26_lomia] at @s run teleport @s ~ ~ ~ ~ ~0.3


execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=60..},limit=1] run scoreboard players add @e[tag=body,tag=boss26_lomia] bossskill5 10


#execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=60..},limit=1] run scoreboard players set @e[tag=boss26_lomia,tag=body] bossmove 5
execute as @e[tag=boss26_lomia,tag=body,scores={motion=60..},limit=1] at @s run function namespace:main/boss/boss26_lomia/motion/random1

#execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=60..},limit=1] run scoreboard players set @e[tag=boss26_lomia,tag=body] motion 0

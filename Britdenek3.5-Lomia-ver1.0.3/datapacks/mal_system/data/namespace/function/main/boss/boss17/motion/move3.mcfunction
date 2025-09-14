scoreboard players add @e[tag=boss17,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=boss17,tag=body,scores={motion2=0..},limit=1] motion2 1


execute if entity @e[tag=boss17,tag=body,scores={motion=1}] run tag @e[tag=boss17,tag=body,limit=1] remove stop
execute as @e[tag=boss17,tag=body,limit=1] at @s unless block ^ ^0.7 ^2 #namespace:airs_for_mob run tag @s add stop
execute as @e[tag=boss17,tag=body,limit=1] at @s if entity @e[tag=boss17battle,distance=..6] run tag @s add stop


execute as @e[tag=boss17,tag=body,limit=1] at @s if block ^ ^0.5 ^2 #namespace:airs_for_mob run teleport @s ^ ^ ^0.2


execute as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss17] ~ ~0.7 ~ 
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss17] ^ ^0.1 ^2.3
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss17] ^-0.7 ^-0.2 ^2.2
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss17] ^0.7 ^-0.2 ^2.2
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss17] ^-0.8 ^-0.35 ^-0.6
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss17] ^0 ^-0.35 ^-0.6


execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss17] ~ ~0 ~ facing entity @e[tag=!bullet,tag=boss17battle,limit=1]
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss17] ~ ~0 ~ ~ 0


execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss17] ~ ~0.7 ~ ~ 0
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss17] ^ ^0.1 ^2.3 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss17] ^-0.7 ^-0.2 ^2.2 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss17] ^0.7 ^-0.2 ^2.2 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss17] ^-0.8 ^-0.35 ^-0.6 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss17] ^0 ^-0.35 ^-0.6 ~ ~




#ï‡çs
execute if entity @e[tag=boss17,tag=body,scores={motion2=1..2}] as @e[tag=boss17,tag=body] at @s run playsound minecraft:entity.horse.step master @a ~ ~ ~ 1 0
execute if entity @e[tag=boss17,tag=body,scores={motion2=1..2}] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss17] ~ ~0.7 ~ ~ 0
execute if entity @e[tag=boss17,tag=body,scores={motion2=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss17] ^ ^0.1 ^2.3 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion2=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss17] ^-0.7 ^-0.2 ^2.2 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion2=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss17] ^0.7 ^-0.2 ^2.2 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion2=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss17] ^-0.8 ^-0.35 ^-0.6 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion2=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss17] ^0 ^-0.35 ^-0.6 ~ ~

execute if entity @e[tag=boss17,tag=body,scores={motion2=2..7}] as @e[tag=leg1,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss17,tag=body,scores={motion2=2..7}] as @e[tag=leg2,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss17,tag=body,scores={motion2=2..7}] as @e[tag=leg4,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss17,tag=body,scores={motion2=2..7}] as @e[tag=leg3,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~-3

execute if entity @e[tag=boss17,tag=body,scores={motion2=8..19}] as @e[tag=leg1,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss17,tag=body,scores={motion2=8..19}] as @e[tag=leg2,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss17,tag=body,scores={motion2=8..19}] as @e[tag=leg4,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss17,tag=body,scores={motion2=8..19}] as @e[tag=leg3,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~3

execute if entity @e[tag=boss17,tag=body,scores={motion2=20..25}] as @e[tag=leg1,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss17,tag=body,scores={motion2=20..25}] as @e[tag=leg2,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss17,tag=body,scores={motion2=20..25}] as @e[tag=leg4,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss17,tag=body,scores={motion2=20..25}] as @e[tag=leg3,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~-3
scoreboard players set @e[tag=boss17,tag=body,scores={motion2=25..},limit=1] motion2 0


execute as @e[tag=boss17,tag=body,limit=1,tag=stop] at @s unless block ^ ^0.7 ^2 #namespace:airs_for_mob run function namespace:main/boss/boss17/motion/random1
execute as @e[tag=boss17,tag=body,limit=1,tag=stop] at @s if block ^ ^0.7 ^2 #namespace:airs_for_mob run function namespace:main/boss/boss17/motion/random2

execute if entity @e[tag=boss17,tag=body,scores={motion=125..},limit=1] run scoreboard players set @e[tag=boss17,tag=body] motion 0




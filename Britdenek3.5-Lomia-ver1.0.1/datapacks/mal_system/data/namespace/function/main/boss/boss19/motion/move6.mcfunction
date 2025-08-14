scoreboard players add @e[tag=boss19,tag=body,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ 
execute as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 
execute as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^0.5 ^1.1 



tag @e[tag=boss19,tag=body,tag=stop] remove stop
execute as @e[tag=boss19] at @s unless block ^1 ^0.5 ^-1 #namespace:airs_for_mob run tag @e[tag=boss19,tag=body] add stop


execute if entity @e[tag=boss19,tag=body,scores={motion=1..}] as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..}] as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 ~ ~

execute if entity @e[tag=boss19,tag=body,scores={motion=1}] as @e[tag=boss19,tag=body] at @s run playsound minecraft:entity.allay.ambient_with_item master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss19,tag=body,scores={motion=3..40}] as @e[tag=boss19,tag=body] at @s run teleport @s ^0 ^ ^0 facing entity @e[tag=boss19battle,limit=1,sort=nearest]
execute if entity @e[tag=boss19,tag=body,scores={motion=3..40}] as @e[tag=boss19,tag=body] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss19,tag=body,scores={motion=3..40}] as @e[tag=boss19,tag=body,tag=!stop] at @s run teleport @s ^0.2 ^ ^-0.05





execute as @e[tag=boss19,tag=body,scores={motion=50..},limit=1] at @s run function namespace:main/boss/boss19/motion/random1
execute if entity @e[tag=boss19,tag=body,scores={motion=50..},limit=1] run scoreboard players set @e[tag=boss19,tag=body] motion 0


scoreboard players add @e[tag=boss13,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=boss13,tag=body,scores={motion2=0..},limit=1] motion2 1



execute as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss13] ~ ~1.3 ~ ~ ~
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss13] ^0.5 ^-0.1 ^-0.2 
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss13] ^-0.5 ^-0.1 ^-0.2 
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss13] ^0.3 ^-1.4 ^-0.2 
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss13] ^-0.3 ^-1.4 ^-0.2 




execute if entity @e[tag=boss13,tag=body,scores={motion2=1}] as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss13] ~ ~ ~ facing entity @e[tag=boss13battle,sort=nearest,limit=1,distance=6..]
execute if entity @e[tag=boss13,tag=body,scores={motion2=1}] as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss13] ~ ~ ~ ~ 0

execute if entity @e[tag=boss13,tag=body,scores={motion2=1}] as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss13] ~ ~1.3 ~ ~ ~
execute if entity @e[tag=boss13,tag=body,scores={motion2=1}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss13] ^0.5 ^-0.1 ^-0.2 ~-30 ~60
execute if entity @e[tag=boss13,tag=body,scores={motion2=1}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss13] ^-0.5 ^-0.1 ^-0.2 ~30 ~60
execute if entity @e[tag=boss13,tag=body,scores={motion2=1}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss13] ^0.3 ^-1.4 ^-0.2 ~ ~
execute if entity @e[tag=boss13,tag=body,scores={motion2=1}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss13] ^-0.3 ^-1.4 ^-0.2 ~ ~



execute if entity @e[tag=boss13,tag=body,scores={motion2=1,motion=2..111}] as @e[tag=body1,limit=1,tag=boss13] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 0.6 1.1
execute if entity @e[tag=boss13,tag=body,scores={motion2=14,motion=2..111}] as @e[tag=body1,limit=1,tag=boss13] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 0.6 1.1


execute if entity @e[tag=boss13,tag=body,scores={motion2=1..7}] as @e[tag=body1,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss13,tag=body,scores={motion2=1..7}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss13,tag=body,scores={motion2=1..7}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss13,tag=body,scores={motion2=1..7}] as @e[tag=left_leg,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss13,tag=body,scores={motion2=1..7}] as @e[tag=right_leg,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~-3

execute if entity @e[tag=boss13,tag=body,scores={motion2=8..20}] as @e[tag=body1,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss13,tag=body,scores={motion2=8..20}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss13,tag=body,scores={motion2=8..20}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss13,tag=body,scores={motion2=8..20}] as @e[tag=left_leg,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss13,tag=body,scores={motion2=8..20}] as @e[tag=right_leg,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~3

execute if entity @e[tag=boss13,tag=body,scores={motion2=21..28}] as @e[tag=body1,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss13,tag=body,scores={motion2=21..28}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss13,tag=body,scores={motion2=21..28}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss13,tag=body,scores={motion2=21..28}] as @e[tag=left_leg,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss13,tag=body,scores={motion2=21..28}] as @e[tag=right_leg,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~-3

execute if entity @e[tag=boss13,tag=body,scores={motion2=28..},limit=1] run scoreboard players set @e[tag=boss13,tag=body] motion2 0

execute if entity @e[tag=boss13,tag=body,scores={motion=30}] as @e[tag=body,limit=1,tag=boss13] at @s positioned ^ ^0.2 ^ run function namespace:main/entity_model/boss/boss13/boss13_bullet3
execute if entity @e[tag=boss13,tag=body,scores={motion=30}] as @e[tag=body,limit=1,tag=boss13] at @s positioned ^ ^0.2 ^ run teleport @e[tag=boss13_attack3,limit=1,sort=nearest] @s

execute if entity @e[tag=boss13,tag=body,scores={motion=90}] as @e[tag=body,limit=1,tag=boss13] at @s positioned ^ ^0.2 ^ run function namespace:main/entity_model/boss/boss13/boss13_bullet3
execute if entity @e[tag=boss13,tag=body,scores={motion=90}] as @e[tag=body,limit=1,tag=boss13] at @s positioned ^ ^0.2 ^ run teleport @e[tag=boss13_attack3,limit=1,sort=nearest] @s


tag @e[tag=bossStop,tag=boss13,tag=body] remove bossStop
execute as @e[tag=boss13] at @s unless block ^ ^0.5 ^-1 #namespace:airs_for_mob unless block ^ ^0.5 ^-2 #namespace:airs_for_mob run tag @e[tag=boss13,tag=body] add bossStop
execute if entity @e[tag=boss13,tag=body] as @e[tag=boss13,tag=body,tag=!bossStop,scores={motion=2..111}] at @s run teleport @s ^ ^ ^-0.1
execute if entity @e[tag=boss13,tag=body] as @e[tag=boss13,tag=body] at @s if block ^ ^-0.5 ^ #namespace:airs_for_mob run teleport @s ~ ~-0.5 ~

execute as @e[tag=boss13,tag=body,scores={motion=112..},limit=1] at @s run function namespace:main/boss/boss13/motion/random1


execute if entity @e[tag=boss13,tag=body,scores={motion=112..},limit=1] run scoreboard players set @e[tag=boss13,tag=body] motion2 0

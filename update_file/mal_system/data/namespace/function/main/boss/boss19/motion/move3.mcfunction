scoreboard players add @e[tag=boss19,tag=body,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ 
execute as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 





execute if entity @e[tag=boss19,tag=body,scores={motion=1}] as @e[tag=boss19,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss19battle,limit=1,sort=nearest]
execute if entity @e[tag=boss19,tag=body,scores={motion=1}] as @e[tag=boss19,tag=body] at @s run teleport @s ~ ~ ~ ~ 10


execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 ~ ~


execute if entity @e[tag=boss19,tag=body,scores={motion=8..15}] as @e[tag=boss19,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss19,tag=body,scores={motion=8..15}] as @e[tag=boss19,tag=weapon] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss19,tag=body,scores={motion=8..15}] as @e[tag=boss19,tag=arm2] at @s run teleport @s ~ ~ ~ ~-2 ~


execute if entity @e[tag=boss19,tag=body,scores={motion=25..26}] as @e[tag=boss19,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~70
execute if entity @e[tag=boss19,tag=body,scores={motion=25..26}] as @e[tag=boss19,tag=weapon] at @s run teleport @s ~ ~ ~ ~ ~70
execute if entity @e[tag=boss19,tag=body,scores={motion=25..26}] as @e[tag=boss19,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss19,tag=body,scores={motion=25..26}] as @e[tag=boss19,tag=weapon] at @s run particle minecraft:sweep_attack ^ ^2 ^1 0.5 1 0.5 1 30 force
execute if entity @e[tag=boss19,tag=body,scores={motion=25}] as @e[tag=boss19,tag=weapon] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss19,tag=body,scores={motion=25..26}] as @e[tag=boss19,tag=arm1] at @s positioned ^ ^2 ^1 as @e[tag=boss19battle,distance=..3] unless score @s player = @e[tag=boss19,tag=body,limit=1] player run scoreboard players set @s commandDamage 27

execute if entity @e[tag=boss19,tag=body,scores={motion=26}] as @e[tag=boss19,tag=weapon] at @s positioned ~ ~0.5 ~ run function namespace:main/entity_model/boss/boss19/boss19_bullet1
execute if entity @e[tag=boss19,tag=body,scores={motion=26}] as @e[tag=boss19,tag=weapon] at @s run teleport @e[tag=boss19_attack1,limit=1,sort=nearest] ~ ~1 ~ ~ 0



execute if entity @e[tag=boss19,tag=body,scores={motion=40}] as @e[tag=boss19,tag=weapon] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1168
execute if entity @e[tag=boss19,tag=body,scores={motion=38..45}] as @e[tag=boss19,tag=arm1] at @s run teleport @s ~ ~ ~ ~10 ~-10
execute if entity @e[tag=boss19,tag=body,scores={motion=38..45}] as @e[tag=boss19,tag=weapon] at @s run teleport @s ~ ~ ~ ~10 ~-10
execute if entity @e[tag=boss19,tag=body,scores={motion=38..45}] as @e[tag=boss19,tag=arm2] at @s run teleport @s ~ ~ ~ ~-10 ~-5

execute if entity @e[tag=boss19,tag=body,scores={motion=60..69}] as @e[tag=boss19] at @s run teleport @s ~ ~ ~ ~-70 ~
execute if entity @e[tag=boss19,tag=body,scores={motion=60..69}] as @e[tag=boss19] at @s run particle minecraft:sweep_attack ^ ^ ^4 0.5 1 0.5 1 4 force
execute if entity @e[tag=boss19,tag=body,scores={motion=60}] as @e[tag=boss19] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss19,tag=body,scores={motion=60..69}] as @e[tag=boss19,tag=arm1] at @s positioned ^ ^ ^3 as @e[tag=boss19battle,distance=..3] unless score @s player = @e[tag=boss19,tag=body,limit=1] player run scoreboard players set @s commandDamage 29

execute if entity @e[tag=boss19,tag=body,scores={motion=60..64}] as @e[tag=boss19,tag=weapon] at @s run function namespace:main/entity_model/boss/boss19/boss19_bullet1
execute if entity @e[tag=boss19,tag=body,scores={motion=60..64}] as @e[tag=boss19,tag=weapon] at @s run teleport @e[tag=boss19_attack1,limit=1,sort=nearest] ~ ~1 ~ ~ 0


execute if entity @e[tag=boss19,tag=body,scores={motion=80}] as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=80}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=80}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=80}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=80}] as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=80}] as @e[tag=boss19,tag=weapon] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1167


execute as @e[tag=boss19,tag=body,scores={motion=80..},limit=1] at @s run function namespace:main/boss/boss19/motion/random1
execute if entity @e[tag=boss19,tag=body,scores={motion=80..},limit=1] run scoreboard players set @e[tag=boss19,tag=body] motion 0


scoreboard players add @e[tag=boss19,tag=body,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ 
execute if entity @e[tag=boss19,tag=body,scores={motion=1..40}] as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 
execute if entity @e[tag=boss19,tag=body,scores={motion=100..}] as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 





execute if entity @e[tag=boss19,tag=body,scores={motion=1}] as @e[tag=boss19,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss19battle,limit=1,sort=nearest]
execute if entity @e[tag=boss19,tag=body,scores={motion=1}] as @e[tag=boss19,tag=body] at @s run teleport @s ~ ~ ~ ~ 10


execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 ~ ~





execute if entity @e[tag=boss19,tag=body,scores={motion=20}] as @e[tag=boss19,tag=weapon] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1168
execute if entity @e[tag=boss19,tag=body,scores={motion=28..35}] as @e[tag=boss19,tag=arm1] at @s run teleport @s ~ ~ ~ ~10 ~-3
execute if entity @e[tag=boss19,tag=body,scores={motion=28..35}] as @e[tag=boss19,tag=weapon] at @s run teleport @s ~ ~ ~ ~10 ~-3
execute if entity @e[tag=boss19,tag=body,scores={motion=28..35}] as @e[tag=boss19,tag=arm2] at @s run teleport @s ~ ~ ~ ~-10 ~-3
execute if entity @e[tag=boss19,tag=body,scores={motion=20}] as @e[tag=boss19,tag=weapon] at @s run function namespace:main/entity_model/boss/boss19/boss19_bullet2
execute if entity @e[tag=boss19,tag=body,scores={motion=20}] as @e[tag=boss19,tag=weapon] at @s run teleport @e[tag=boss19_attack2] ^ ^ ^0.5 facing entity @e[tag=boss19,limit=1,sort=nearest]
execute if entity @e[tag=boss19,tag=body,scores={motion=20}] as @e[tag=boss19,tag=weapon] at @s run teleport @e[tag=boss19_attack2] ^ ^ ^0.5 ~ 0

execute if entity @e[tag=boss19,tag=body,scores={motion=40..42}] as @e[tag=boss19,tag=weapon] at @s run teleport @s ~ ~ ~ ~-20 ~
execute if entity @e[tag=boss19,tag=body,scores={motion=40..47}] as @e[tag=boss19,tag=arm1] at @s run teleport @s ~ ~ ~ ~-20 ~


execute if entity @e[tag=boss19,tag=body,scores={motion=40..100}] as @e[tag=boss19_attack2] at @s run teleport @s ^-0.5 ^ ^0.8 ~-6 ~
execute if entity @e[tag=boss19,tag=body,scores={motion=40..100}] as @e[tag=boss19_attack2] at @s run teleport @e[tag=boss19,tag=weapon] ~ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=100..}] run kill @e[tag=boss19_attack2]

execute if entity @e[tag=boss19,tag=body,scores={motion=40..100}] as @e[tag=boss19,tag=weapon] at @s run teleport @s ~ ~ ~ ~-60 ~

execute if entity @e[tag=boss19,tag=body,scores={motion=40..100}] as @e[tag=boss19,tag=weapon] at @s run particle minecraft:sweep_attack ^ ^1 ^1 0.5 1 0.5 1 4 force
execute if entity @e[tag=boss19,tag=body,scores={motion=40}] as @e[tag=boss19] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1.5 0
execute if entity @e[tag=boss19,tag=body,scores={motion=40..100}] as @e[tag=boss19,tag=weapon] at @s positioned ^ ^ ^ as @e[tag=boss19battle,distance=..3] unless score @s player = @e[tag=boss19,tag=body,limit=1] player run scoreboard players set @s commandDamage 26

execute if entity @e[tag=boss19,tag=body,scores={motion=40}] as @e[tag=boss19] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1.5 0
execute if entity @e[tag=boss19,tag=body,scores={motion=50}] as @e[tag=boss19] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1.5 0
execute if entity @e[tag=boss19,tag=body,scores={motion=60}] as @e[tag=boss19] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1.5 0
execute if entity @e[tag=boss19,tag=body,scores={motion=70}] as @e[tag=boss19] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1.5 0
execute if entity @e[tag=boss19,tag=body,scores={motion=80}] as @e[tag=boss19] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1.5 0
execute if entity @e[tag=boss19,tag=body,scores={motion=90}] as @e[tag=boss19] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1.5 0
execute if entity @e[tag=boss19,tag=body,scores={motion=100}] as @e[tag=boss19] at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 2 2



execute if entity @e[tag=boss19,tag=body,scores={motion=100}] as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=100}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=100}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=100}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=100}] as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=100}] as @e[tag=boss19,tag=weapon] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1167


execute as @e[tag=boss19,tag=body,scores={motion=120..},limit=1] at @s run function namespace:main/boss/boss19/motion/random1
execute if entity @e[tag=boss19,tag=body,scores={motion=120..},limit=1] run scoreboard players set @e[tag=boss19,tag=body] motion 0


scoreboard players add @e[tag=boss21,tag=body,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^


execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~ ~ ~
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^ ~ ~90
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^ ~ ~90



execute if entity @e[tag=boss21,tag=body,scores={motion=3..10}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~-6 ~-11
execute if entity @e[tag=boss21,tag=body,scores={motion=3..10}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~6 ~-11



execute if entity @e[tag=boss21,tag=body,scores={motion=4}] as @e[tag=boss21,tag=arm1] at @s run playsound minecraft:block.chain.place master @a ~ ~ ~ 2 0.8

execute if entity @e[tag=boss21,tag=body,scores={motion=4}] as @e[tag=boss21,tag=arm1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1184


execute if entity @e[tag=boss21,tag=body,scores={motion=35}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 2 0.4
execute if entity @e[tag=boss21,tag=body,scores={motion=45}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 2 0.4
execute if entity @e[tag=boss21,tag=body,scores={motion=55}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 2 0.4
execute if entity @e[tag=boss21,tag=body,scores={motion=65}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 2 0.4
execute if entity @e[tag=boss21,tag=body,scores={motion=75}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 2 0.4
execute if entity @e[tag=boss21,tag=body,scores={motion=85}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 2 0.4
execute if entity @e[tag=boss21,tag=body,scores={motion=95}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 2 0.4
execute if entity @e[tag=boss21,tag=body,scores={motion=105}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 2 0.4

execute if entity @e[tag=boss21,tag=body,scores={motion=35..110}] as @e[tag=boss21] at @s run teleport @s ~ ~ ~ ~37 ~

execute if entity @e[tag=boss21,tag=body,scores={motion=35..110}] as @e[tag=arm1,limit=1,tag=boss21] at @s run particle minecraft:sweep_attack ^0.5 ^ ^2 0.4 0.4 0.4 1 3 force
execute if entity @e[tag=boss21,tag=body,scores={motion=35..110}] as @e[tag=arm1,limit=1,tag=boss21] at @s as @e[tag=boss21battle,distance=..3] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss21,tag=body,scores={motion=35..110}] as @e[tag=body,limit=1,tag=boss21] at @s if block ^ ^0.1 ^0.8 #namespace:airs_for_mob run teleport @s ^ ^ ^0.4


execute if entity @e[tag=boss21,tag=body,scores={motion=120}] as @e[tag=boss21,tag=arm1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1178

execute if entity @e[tag=boss21,tag=body,scores={motion=118..123}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~-4 ~10
execute if entity @e[tag=boss21,tag=body,scores={motion=118..123}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~4 ~10


execute as @e[tag=boss21,tag=body,scores={motion=130..},limit=1] at @s run function namespace:main/boss/boss21/motion/random1
execute if entity @e[tag=boss21,tag=body,scores={motion=130..},limit=1] run scoreboard players set @e[tag=boss21,tag=body] motion 0


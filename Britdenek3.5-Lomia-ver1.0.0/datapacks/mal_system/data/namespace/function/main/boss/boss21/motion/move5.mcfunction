scoreboard players add @e[tag=boss21,tag=body,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^

execute if entity @e[tag=boss21,tag=body,scores={motion=1}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=!bullet,tag=boss21battle,limit=1,sort=nearest]
execute if entity @e[tag=boss21,tag=body,scores={motion=1}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~ ~ ~
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^ ~ ~90
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^ ~ ~90



execute if entity @e[tag=boss21,tag=body,scores={motion=3..10}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~3 ~-11

execute if entity @e[tag=boss21,tag=body,scores={motion=30..33}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~20 ~


execute if entity @e[tag=boss21,tag=body,scores={motion=4}] as @e[tag=boss21,tag=arm1] at @s run playsound minecraft:block.chain.place master @a ~ ~ ~ 2 0.8

execute if entity @e[tag=boss21,tag=body,scores={motion=4}] as @e[tag=boss21,tag=arm1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1182


execute if entity @e[tag=boss21,tag=body,scores={motion=35..50}] as @e[tag=arm1,limit=1,tag=boss21] at @s run particle minecraft:sweep_attack ^ ^ ^1 0.4 0.4 0.4 1 4 force
execute if entity @e[tag=boss21,tag=body,scores={motion=35..43}] as @e[tag=arm1,limit=1,tag=boss21] at @s run playsound minecraft:item.trident.riptide_2 master @a ~ ~ ~ 2 1.7
execute if entity @e[tag=boss21,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss21] at @s if block ^ ^0.1 ^0.8 #namespace:airs_for_mob run teleport @s ^ ^ ^0.8



execute if entity @e[tag=boss21,tag=body,scores={motion=35..50}] as @e[tag=arm1,limit=1,tag=boss21] at @s as @e[tag=boss21battle,distance=..2] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run scoreboard players set @s commandDamage 8
execute if entity @e[tag=boss21,tag=body,scores={motion=35..50}] as @e[tag=arm1,limit=1,tag=boss21] at @s as @e[tag=boss21battle,distance=..2] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run effect give @s minecraft:wither 5 1 false


execute if entity @e[tag=boss21,tag=body,scores={motion=50}] as @e[tag=boss21,tag=arm1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1178

execute if entity @e[tag=boss21,tag=body,scores={motion=48..53}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~-4 ~10


execute as @e[tag=boss21,tag=body,scores={motion=60..},limit=1] at @s run function namespace:main/boss/boss21/motion/random1
execute if entity @e[tag=boss21,tag=body,scores={motion=60..},limit=1] run scoreboard players set @e[tag=boss21,tag=body] motion 0


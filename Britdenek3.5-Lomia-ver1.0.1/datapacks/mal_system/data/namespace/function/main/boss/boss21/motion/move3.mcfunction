scoreboard players add @e[tag=boss21,tag=body,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^

execute if entity @e[tag=boss21,tag=body,scores={motion=1}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=!bullet,tag=boss21battle,limit=1,sort=nearest]
execute if entity @e[tag=boss21,tag=body,scores={motion=1}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~ ~ ~
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^ ~ ~90
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^ ~ ~90



execute if entity @e[tag=boss21,tag=body,scores={motion=3..10}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~-5 ~-11

execute if entity @e[tag=boss21,tag=body,scores={motion=4}] as @e[tag=boss21,tag=arm1] at @s run playsound minecraft:block.chain.place master @a ~ ~ ~ 2 0.8

execute if entity @e[tag=boss21,tag=body,scores={motion=4}] as @e[tag=boss21,tag=arm1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1182


execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run particle minecraft:sweep_attack ^ ^ ^0.2 0.4 0.4 0.4 1 4 force
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~20 ~

execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run function namespace:main/entity_model/boss/boss21/boss21_bullet1
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=1,sort=nearest,distance=..0.3] @s

execute if entity @e[tag=boss21,tag=body,scores={motion=30}] as @e[tag=arm1,limit=1,tag=boss21] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 1.2



execute if entity @e[tag=boss21,tag=body,scores={motion=60}] as @e[tag=boss21,tag=arm1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1178

execute if entity @e[tag=boss21,tag=body,scores={motion=58..63}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~-4 ~10


execute as @e[tag=boss21,tag=body,scores={motion=70..},limit=1] at @s run function namespace:main/boss/boss21/motion/random1
execute if entity @e[tag=boss21,tag=body,scores={motion=70..},limit=1] run scoreboard players set @e[tag=boss21,tag=body] motion 0


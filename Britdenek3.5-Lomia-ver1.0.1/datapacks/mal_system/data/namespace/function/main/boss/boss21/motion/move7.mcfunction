scoreboard players add @e[tag=boss21,tag=body,scores={motion=0..},limit=1] motion 1

#èdóÕ
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~

execute as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^

execute if entity @e[tag=boss21,tag=body,scores={motion=1}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=!bullet,tag=boss21battle,limit=1,sort=nearest]
execute if entity @e[tag=boss21,tag=body,scores={motion=1}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~ ~ ~
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^ ~ ~90
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^ ~ ~90

execute if entity @e[tag=boss21,tag=body,scores={motion=10}] as @e[tag=boss21,limit=1,tag=body] at @s run particle minecraft:sweep_attack ~ ~ ~ 0.5 0.5 0.5 1 8 force
execute if entity @e[tag=boss21,tag=body,scores={motion=10}] as @e[tag=boss21,limit=1,tag=body] at @s run playsound minecraft:entity.allay.ambient_with_item master @a ~ ~ ~ 2 1

execute if entity @e[tag=boss21,tag=body,scores={motion=10..11}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~10 ~-20
execute if entity @e[tag=boss21,tag=body,scores={motion=10..11}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~-10 ~-20



execute if entity @e[tag=boss21,tag=body,scores={motion=10..16}] as @e[tag=boss21,tag=body] at @s if block ^ ^ ^-0.8 #namespace:airs_for_mob run teleport @s ^ ^ ^-0.8
execute if entity @e[tag=boss21,tag=body,scores={motion=10..16}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~0.8 ~


execute if entity @e[tag=boss21,tag=body,scores={motion=20..21}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~-10 ~20
execute if entity @e[tag=boss21,tag=body,scores={motion=20..21}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~10 ~20


execute as @e[tag=boss21,tag=body,scores={motion=30..},limit=1] at @s run function namespace:main/boss/boss21/motion/random1
execute if entity @e[tag=boss21,tag=body,scores={motion=30..},limit=1] run scoreboard players set @e[tag=boss21,tag=body] motion 0


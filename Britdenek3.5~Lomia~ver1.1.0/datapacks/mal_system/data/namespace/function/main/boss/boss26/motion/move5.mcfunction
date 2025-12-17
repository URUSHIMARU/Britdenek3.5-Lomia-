
scoreboard players add @e[tag=boss26,tag=body,scores={motion=0..},limit=1] motion 1

execute as @e[tag=boss26,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss26] ~ ~-0.9 ~
execute as @e[tag=boss26,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss26] ^-0.25 ^0.6 ^0.05
execute as @e[tag=boss26,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss26] ^0.25 ^0.6 ^-0.03
execute as @e[tag=boss26,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss26] ^0.11 ^-0.05 ^0.1
execute as @e[tag=boss26,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss26] ^-0.11 ^0.05 ^-0.1


execute if entity @e[tag=boss26,tag=body,scores={motion=1..2}] as @e[tag=boss26,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss26] ~ ~0 ~ facing entity @e[tag=!bullet,tag=boss26battle,limit=1]
execute if entity @e[tag=boss26,tag=body,scores={motion=1..2}] as @e[tag=boss26,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss26] ~ ~0 ~ ~ 0
execute if entity @e[tag=boss26,tag=body,scores={motion=1..2}] as @e[tag=boss26,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss26] ~ ~-0.9 ~ ~ ~
execute if entity @e[tag=boss26,tag=body,scores={motion=1..2}] as @e[tag=boss26,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss26] ^-0.25 ^0.6 ^0.05 ~-25 ~20
execute if entity @e[tag=boss26,tag=body,scores={motion=1..2}] as @e[tag=boss26,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss26] ^0.25 ^0.6 ^-0.03 ~0 ~-20
execute if entity @e[tag=boss26,tag=body,scores={motion=1..2}] as @e[tag=boss26,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss26] ^0.11 ^-0.05 ^0.1 ~ ~
execute if entity @e[tag=boss26,tag=body,scores={motion=1..2}] as @e[tag=boss26,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss26] ^-0.11 ^0.05 ^-0.1 ~ ~




#モーション 
execute if entity @e[tag=boss26,tag=body,scores={motion2=1}] as @e[tag=body,tag=boss26] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=boss26battle,tag=!bullet]
execute if entity @e[tag=boss26,tag=body,scores={motion2=1}] as @e[tag=body,tag=boss26] at @s run teleport @s ~ ~ ~ ~ 0



execute if entity @e[tag=boss26,tag=body,scores={motion=2..25}] as @e[tag=boss26,tag=body] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 1 3 force

execute if entity @e[tag=boss26,tag=body,scores={motion=30}] as @e[tag=boss26,tag=body] at @s run playsound minecraft:entity.horse.jump master @a ~ ~ ~ 2 1.5
execute if entity @e[tag=boss26,tag=body,scores={motion=30}] as @e[tag=boss26,tag=body] at @s run particle minecraft:explosion ~ ~1 ~ 1 1 1 1 20 force
execute if entity @e[tag=boss26,tag=body,scores={motion=30..33}] as @e[tag=boss26,tag=leg1] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 1 100 force
execute if entity @e[tag=boss26,tag=body,scores={motion=30..33}] as @e[tag=boss26,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss26,tag=body,scores={motion=30..33}] as @e[tag=boss26,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss26,tag=body,scores={motion=30..33}] as @e[tag=boss26,tag=body] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss26,tag=body,scores={motion=30..33}] as @e[tag=boss26,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss26,tag=body,scores={motion=30..33}] as @e[tag=boss26,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss26,tag=body,scores={motion=30..45}] as @e[tag=boss26,tag=body] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss26,tag=body,scores={motion=30..45}] as @e[tag=boss26,tag=body] at @s run particle minecraft:firework ~ ~1 ~ 0.4 0.4 0.4 0.5 3 force
execute if entity @e[tag=boss26,tag=body,scores={motion=30..45}] as @e[tag=boss26,tag=body] at @s run execute if block ^ ^1 ^3 #namespace:airs_for_mob if block ^ ^1 ^2 #namespace:airs_for_mob run teleport @s ^ ^ ^2
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26,tag=body,scores={motion=30..45}] as @e[tag=boss26,tag=body] at @s positioned ^ ^ ^2.5 if entity @e[tag=boss26battle,distance=..4] run scoreboard players set @e[tag=boss26battle,distance=..4] commandDamage 1014
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26,tag=body,scores={motion=30..45}] as @e[tag=boss26,tag=body] at @s positioned ^ ^ ^2.5 if entity @e[tag=boss26battle,distance=..4] run scoreboard players set @e[tag=boss26battle,distance=..4] commandDamage 1018
execute if entity @e[tag=boss26,tag=body,scores={motion=30..45}] as @e[tag=boss26,tag=body] at @s positioned ^ ^ ^2.5 if entity @e[tag=boss26battle,distance=..4] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss26,tag=body,scores={motion=30..45}] as @e[tag=boss26,tag=body] at @s positioned ^ ^ ^2.5 if entity @e[tag=boss26battle,distance=..4] run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 50 force
execute if entity @e[tag=boss26,tag=body,scores={motion=30..45}] as @e[tag=boss26,tag=body] at @s positioned ^ ^ ^2.5 if entity @e[tag=boss26battle,distance=..4] run scoreboard players set @s motion 61

execute if entity @e[tag=boss26,tag=body,scores={motion=80..},limit=1] run scoreboard players remove @e[tag=body,tag=boss26] bossskill5 8
execute as @e[tag=boss26,tag=body,scores={motion=80..},limit=1] at @s run function namespace:main/boss/boss26/motion/random1
execute if entity @e[tag=boss26,tag=body,scores={motion=80..},limit=1] run scoreboard players set @e[tag=boss26,tag=body] motion 0




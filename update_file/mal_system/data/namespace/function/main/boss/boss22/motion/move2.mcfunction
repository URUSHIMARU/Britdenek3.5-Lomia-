scoreboard players add @e[tag=boss22,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss22,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss22] ~ ~0 ~ ~ ~
execute as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss22] ^ ^2.5 ^ 
execute as @e[tag=boss22,tag=body2] at @s run teleport @e[tag=body3,limit=1,tag=boss22] ^ ^5 ^ 
execute as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=arm11,limit=1,tag=boss22] ^-3 ^-1 ^
execute as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=arm21,limit=1,tag=boss22] ^3 ^-1 ^
execute as @e[tag=boss22,tag=arm11] at @s run teleport @e[tag=arm12,limit=1,tag=boss22] ^ ^ ^6 
execute as @e[tag=boss22,tag=arm21] at @s run teleport @e[tag=arm22,limit=1,tag=boss22] ^ ^ ^6 
#スライムボディ
execute as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=sbody1,limit=1,tag=boss22] ~ ~0 ~ ~ ~
execute as @e[tag=boss22,tag=arm11] at @s run teleport @e[tag=sarm11,limit=1,tag=boss22] ^ ^ ^2 ~ ~
execute as @e[tag=boss22,tag=arm12] at @s run teleport @e[tag=sarm12,limit=1,tag=boss22] ^ ^ ^2 ~ ~
execute as @e[tag=boss22,tag=arm21] at @s run teleport @e[tag=sarm21,limit=1,tag=boss22] ^ ^ ^2 ~ ~
execute as @e[tag=boss22,tag=arm22] at @s run teleport @e[tag=sarm22,limit=1,tag=boss22] ^ ^ ^2 ~ ~
#動かない装飾
execute as @e[tag=boss22,tag=body] at @s run teleport @e[tag=egg1,limit=1,tag=boss22] ^ ^ ^-1.5 ~ ~-30
execute as @e[tag=boss22,tag=body] at @s run teleport @e[tag=egg2,limit=1,tag=boss22] ^-5.5 ^-2 ^ ~-30 ~-20
execute as @e[tag=boss22,tag=body] at @s run teleport @e[tag=egg3,limit=1,tag=boss22] ^5.5 ^-2 ^ ~30 ~-20





execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss22] ^ ^2.5 ^ ~ ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss22] ^ ^2.5 ^ ~ ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body2] at @s run teleport @e[tag=body3,limit=1,tag=boss22] ^ ^5 ^ ~ ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=arm11,limit=1,tag=boss22] ^-3 ^-1 ^ ~30 ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=arm21,limit=1,tag=boss22] ^3 ^-1 ^ ~-30 ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=arm11] at @s run teleport @e[tag=arm12,limit=1,tag=boss22] ^ ^ ^6 ~-20 ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=arm21] at @s run teleport @e[tag=arm22,limit=1,tag=boss22] ^ ^ ^6 ~20 ~




execute if entity @e[tag=boss22,tag=body,scores={motion=11}] as @e[tag=boss22,tag=body1] at @s run playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 4 0.7


execute if entity @e[tag=boss22,tag=body,scores={motion=11..20}] as @e[tag=boss22,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~1.5
execute if entity @e[tag=boss22,tag=body,scores={motion=11..20}] as @e[tag=boss22,tag=body2] at @s run teleport @s ~ ~ ~ ~ ~1.5

execute if entity @e[tag=boss22,tag=body,scores={motion=11..30}] as @e[tag=boss22,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-1.5
execute if entity @e[tag=boss22,tag=body,scores={motion=11..30}] as @e[tag=boss22,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-1.5
execute if entity @e[tag=boss22,tag=body,scores={motion=11..30}] as @e[tag=boss22,tag=arm12] at @s run teleport @s ~ ~ ~ ~ ~-1.5
execute if entity @e[tag=boss22,tag=body,scores={motion=11..30}] as @e[tag=boss22,tag=arm22] at @s run teleport @s ~ ~ ~ ~ ~-1.5

execute if entity @e[tag=boss22,tag=body,scores={motion=41..51}] as @e[tag=boss22,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss22,tag=body,scores={motion=41..51}] as @e[tag=boss22,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss22,tag=body,scores={motion=41..51}] as @e[tag=boss22,tag=arm12] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss22,tag=body,scores={motion=41..51}] as @e[tag=boss22,tag=arm22] at @s run teleport @s ~ ~ ~ ~ ~3



execute as @e[tag=boss22,tag=body,scores={motion=60..},limit=1] at @s run function namespace:main/boss/boss22/motion/random1

execute if entity @e[tag=boss22,tag=body,scores={motion=60..},limit=1] run scoreboard players set @e[tag=boss22,tag=body] motion 0

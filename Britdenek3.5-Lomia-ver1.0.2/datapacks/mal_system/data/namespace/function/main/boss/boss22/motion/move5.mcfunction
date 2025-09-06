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



execute if entity @e[tag=boss22,tag=body,scores={motion=1}] as @e[tag=boss22,tag=body] at @s run teleport @e[tag=boss22,tag=body] ~ ~ ~ facing entity @e[tag=boss22battle,limit=1,sort=nearest,tag=!bullet]
execute if entity @e[tag=boss22,tag=body,scores={motion=1}] as @e[tag=boss22,tag=body] at @s run teleport @e[tag=boss22,tag=body] ~ ~ ~ ~ 0

execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss22] ^ ^2.5 ^ ~ ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss22] ^ ^2.5 ^ ~ ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body2] at @s run teleport @e[tag=body3,limit=1,tag=boss22] ^ ^5 ^ ~ ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=arm11,limit=1,tag=boss22] ^-3 ^-1 ^ ~30 ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=arm21,limit=1,tag=boss22] ^3 ^-1 ^ ~-30 ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=arm11] at @s run teleport @e[tag=arm12,limit=1,tag=boss22] ^ ^ ^6 ~-20 ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=arm21] at @s run teleport @e[tag=arm22,limit=1,tag=boss22] ^ ^ ^6 ~20 ~







execute if entity @e[tag=boss22,tag=body,scores={motion=31..50}] as @e[tag=boss22,tag=arm1] at @s run teleport @s ~ ~ ~ ~1 ~-2
execute if entity @e[tag=boss22,tag=body,scores={motion=31..50}] as @e[tag=boss22,tag=arm12] at @s run teleport @s ~ ~ ~ ~1 ~-2

execute if entity @e[tag=boss22,tag=body,scores={motion=31..50}] as @e[tag=boss22,tag=arm2] at @s run teleport @s ~ ~ ~ ~-1 ~-2
execute if entity @e[tag=boss22,tag=body,scores={motion=31..50}] as @e[tag=boss22,tag=arm22] at @s run teleport @s ~ ~ ~ ~-1 ~-2


execute if entity @e[tag=boss22,tag=body,scores={motion=60}] as @e[tag=boss22] at @s run particle minecraft:dust{color:[255,25,255],scale:2} ~ ~ ~ 3 2 3 1 130 force
execute if entity @e[tag=boss22,tag=body,scores={motion=60}] as @e[tag=boss22] at @s run particle minecraft:dripping_dripstone_lava ~ ~ ~ 3 2 3 1 130 force
execute if entity @e[tag=boss22,tag=body,scores={motion=60}] as @e[tag=boss22,tag=body] at @s run playsound minecraft:entity.ghast.death master @a ~ ~ ~ 4 0.7
execute if entity @e[tag=boss22,tag=body,scores={motion=60}] as @e[tag=boss22] at @s as @e[tag=boss22battle,distance=..6] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 15
execute if entity @e[tag=boss22,tag=body,scores={motion=60}] as @e[tag=boss22] at @s as @e[tag=boss22battle,distance=..8] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run effect give @s minecraft:wither 10 1 false


execute if entity @e[tag=boss22,tag=body,scores={motion=71..90}] as @e[tag=boss22,tag=arm1] at @s run teleport @s ~ ~ ~ ~-1 ~2
execute if entity @e[tag=boss22,tag=body,scores={motion=71..90}] as @e[tag=boss22,tag=arm12] at @s run teleport @s ~ ~ ~ ~-1 ~2

execute if entity @e[tag=boss22,tag=body,scores={motion=71..90}] as @e[tag=boss22,tag=arm2] at @s run teleport @s ~ ~ ~ ~1 ~2
execute if entity @e[tag=boss22,tag=body,scores={motion=71..90}] as @e[tag=boss22,tag=arm22] at @s run teleport @s ~ ~ ~ ~1 ~2



execute as @e[tag=boss22,tag=body,scores={motion=100..},limit=1] at @s run function namespace:main/boss/boss22/motion/random1

execute if entity @e[tag=boss22,tag=body,scores={motion=100..},limit=1] run scoreboard players set @e[tag=boss22,tag=body] motion 0

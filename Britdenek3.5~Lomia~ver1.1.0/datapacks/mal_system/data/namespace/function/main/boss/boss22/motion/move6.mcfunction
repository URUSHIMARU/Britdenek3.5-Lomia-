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









execute if entity @e[tag=boss22,tag=body,scores={motion=31..40}] as @e[tag=boss22,tag=arm1] at @s run teleport @s ~ ~ ~ ~-4 ~-4
execute if entity @e[tag=boss22,tag=body,scores={motion=31..40}] as @e[tag=boss22,tag=arm12] at @s run teleport @s ~ ~ ~ ~ ~-4

execute if entity @e[tag=boss22,tag=body,scores={motion=31..40}] as @e[tag=boss22,tag=arm2] at @s run teleport @s ~ ~ ~ ~4 ~-4
execute if entity @e[tag=boss22,tag=body,scores={motion=31..40}] as @e[tag=boss22,tag=arm22] at @s run teleport @s ~ ~ ~ ~ ~-4

execute if entity @e[tag=boss22,tag=body,scores={motion=61..64}] as @e[tag=boss22,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss22,tag=body,scores={motion=61..64}] as @e[tag=boss22,tag=arm12] at @s run teleport @s ~ ~ ~ ~ ~10

execute if entity @e[tag=boss22,tag=body,scores={motion=61..64}] as @e[tag=boss22,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss22,tag=body,scores={motion=61..64}] as @e[tag=boss22,tag=arm22] at @s run teleport @s ~ ~ ~ ~ ~10

execute if entity @e[tag=boss22,tag=body,scores={motion=64}] as @e[tag=boss22,tag=arm12] at @s run particle minecraft:explosion ^ ^2 ^5 1 1 1 1 10 force
execute if entity @e[tag=boss22,tag=body,scores={motion=64}] as @e[tag=boss22,tag=arm22] at @s run particle minecraft:explosion ^ ^2 ^5 1 1 1 1 10 force
execute if entity @e[tag=boss22,tag=body,scores={motion=64}] as @e[tag=boss22,tag=arm12] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if entity @e[tag=boss22,tag=body,scores={motion=64}] as @e[tag=boss22,tag=arm22] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8

execute if entity @e[tag=boss22,tag=body,scores={motion=70}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^10 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if entity @e[tag=boss22,tag=body,scores={motion=70}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^10 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if entity @e[tag=boss22,tag=body,scores={motion=70}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^10 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13

execute if entity @e[tag=boss22,tag=body,scores={motion=75}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^15 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if entity @e[tag=boss22,tag=body,scores={motion=75}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^15 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if entity @e[tag=boss22,tag=body,scores={motion=75}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^15 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13

execute if entity @e[tag=boss22,tag=body,scores={motion=80}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^20 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if entity @e[tag=boss22,tag=body,scores={motion=80}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^20 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if entity @e[tag=boss22,tag=body,scores={motion=80}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^20 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13

execute if entity @e[tag=boss22,tag=body,scores={motion=85}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^25 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if entity @e[tag=boss22,tag=body,scores={motion=85}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^25 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if entity @e[tag=boss22,tag=body,scores={motion=85}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^25 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13

execute if entity @e[tag=boss22,tag=body,scores={motion=90}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^30 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if entity @e[tag=boss22,tag=body,scores={motion=90}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^30 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if entity @e[tag=boss22,tag=body,scores={motion=90}] as @e[tag=boss22,tag=body] at @s positioned ^ ^2 ^30 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13



execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=70}] as @e[tag=boss22,tag=body] at @s positioned ^6 ^2 ^7 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=70}] as @e[tag=boss22,tag=body] at @s positioned ^6 ^2 ^7 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=70}] as @e[tag=boss22,tag=body] at @s positioned ^6 ^2 ^7 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=75}] as @e[tag=boss22,tag=body] at @s positioned ^9 ^2 ^12 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=75}] as @e[tag=boss22,tag=body] at @s positioned ^9 ^2 ^12 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=75}] as @e[tag=boss22,tag=body] at @s positioned ^9 ^2 ^12 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=80}] as @e[tag=boss22,tag=body] at @s positioned ^12 ^2 ^17 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=80}] as @e[tag=boss22,tag=body] at @s positioned ^12 ^2 ^17 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=80}] as @e[tag=boss22,tag=body] at @s positioned ^12 ^2 ^17 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=85}] as @e[tag=boss22,tag=body] at @s positioned ^15 ^2 ^22 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=85}] as @e[tag=boss22,tag=body] at @s positioned ^15 ^2 ^22 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=85}] as @e[tag=boss22,tag=body] at @s positioned ^15 ^2 ^22 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=90}] as @e[tag=boss22,tag=body] at @s positioned ^18 ^2 ^27 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=90}] as @e[tag=boss22,tag=body] at @s positioned ^18 ^2 ^27 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=90}] as @e[tag=boss22,tag=body] at @s positioned ^18 ^2 ^27 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13


execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=70}] as @e[tag=boss22,tag=body] at @s positioned ^-6 ^2 ^7 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=70}] as @e[tag=boss22,tag=body] at @s positioned ^-6 ^2 ^7 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=70}] as @e[tag=boss22,tag=body] at @s positioned ^-6 ^2 ^7 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=75}] as @e[tag=boss22,tag=body] at @s positioned ^-9 ^2 ^12 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=75}] as @e[tag=boss22,tag=body] at @s positioned ^-9 ^2 ^12 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=75}] as @e[tag=boss22,tag=body] at @s positioned ^-9 ^2 ^12 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=80}] as @e[tag=boss22,tag=body] at @s positioned ^-12 ^2 ^17 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=80}] as @e[tag=boss22,tag=body] at @s positioned ^-12 ^2 ^17 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=80}] as @e[tag=boss22,tag=body] at @s positioned ^-12 ^2 ^17 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=85}] as @e[tag=boss22,tag=body] at @s positioned ^-15 ^2 ^22 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=85}] as @e[tag=boss22,tag=body] at @s positioned ^-15 ^2 ^22 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=85}] as @e[tag=boss22,tag=body] at @s positioned ^-15 ^2 ^22 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=90}] as @e[tag=boss22,tag=body] at @s positioned ^-18 ^2 ^27 run particle minecraft:explosion ~ ~ ~ 2 2 2 1 20 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=90}] as @e[tag=boss22,tag=body] at @s positioned ^-18 ^2 ^27 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~2 ~ 3 0.8
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss22,tag=body,scores={motion=90}] as @e[tag=boss22,tag=body] at @s positioned ^-18 ^2 ^27 as @e[tag=boss22battle,distance=..5] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 13



execute as @e[tag=boss22,tag=body,scores={motion=140..},limit=1] at @s run function namespace:main/boss/boss22/motion/random1

execute if entity @e[tag=boss22,tag=body,scores={motion=140..},limit=1] run scoreboard players set @e[tag=boss22,tag=body] motion 0

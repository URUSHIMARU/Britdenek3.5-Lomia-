scoreboard players add @e[tag=boss16_lomia,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=boss16_lomia,tag=body,scores={motion2=0..},limit=1] motion2 1




execute as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss16_lomia] ~ ~0 ~ 
execute as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss16_lomia] ^-0.35 ^-0.05 ^ 
execute as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss16_lomia] ^0.35 ^-0.05 ^ 
execute as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss16_lomia] ^0.11 ^-0.8 ^ 
execute as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss16_lomia] ^-0.11 ^-0.8 ^ 
execute as @e[tag=boss16_lomia,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss16_lomia] ^0.1 ^-0.65 ^ 



execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss16_lomia] ~ ~0 ~ facing entity @e[tag=boss15battle,limit=1]
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss16_lomia] ~ ~0 ~ ~ 0

execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss16_lomia] ~ ~0 ~ ~ ~
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=arm1,limit=1,tag=boss16_lomia] ^-0.35 ^-0.05 ^ ~ ~-50
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=arm2,limit=1,tag=boss16_lomia] ^0.35 ^-0.05 ^ ~40 ~30
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss16_lomia,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss16_lomia] ^0.1 ^-0.65 ^ ~ ~40
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=leg1,limit=1,tag=boss16_lomia] ^0.11 ^-0.8 ^ ~ ~40
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=leg2,limit=1,tag=boss16_lomia] ^-0.11 ^-0.8 ^ ~ ~-20

execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=10..11}] as @e[tag=boss16_lomia,tag=arm1] at @s run teleport @s ~ ~ ~ ~-30 ~10
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=10..11}] as @e[tag=boss16_lomia,tag=weapon] at @s run teleport @s ~ ~ ~ ~-30 ~-10

execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=30}] as @e[tag=boss16_lomia,tag=arm1] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 1.6

execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=30..32}] as @e[tag=boss16_lomia,tag=body] at @s if block ^ ^0.5 ^2 #namespace:airs_for_mob run teleport @s ^ ^ ^2
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=30..32}] as @e[tag=boss16_lomia,tag=body] at @s positioned ^ ^-0.4 ^2 as @e[tag=boss16_lomiabattle,distance=..3] unless score @s player = @e[tag=boss16_lomia,tag=body,limit=1] player run scoreboard players set @s commandDamage 15
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=30..32}] as @e[tag=boss16_lomia,tag=body] at @s if block ^ ^0.5 ^2 #namespace:airs_for_mob run teleport @s ^ ^ ^2
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=30..32}] as @e[tag=boss16_lomia,tag=body] at @s positioned ^ ^-0.4 ^2 as @e[tag=boss16_lomiabattle,distance=..3] unless score @s player = @e[tag=boss16_lomia,tag=body,limit=1] player run scoreboard players set @s commandDamage 15
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=30..32}] as @e[tag=boss16_lomia,tag=body] at @s run particle minecraft:flash ~ ~1 ~ 1 1 1 1 100 force
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=30..32}] as @e[tag=boss16_lomia,tag=weapon] at @s run particle minecraft:sweep_attack ^ ^1.4 ^1 0.3 0.3 0.3 1 10 force
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=30..32}] as @e[tag=boss16_lomia,tag=arm1] at @s run teleport @s ~ ~ ~ ~50 ~-10
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=30..32}] as @e[tag=boss16_lomia,tag=weapon] at @s run teleport @s ~ ~ ~ ~50 ~10

execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=33..36}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=boss16_lomia] ~ ~0.1 ~
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=33..36}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=boss16_lomia] ~ ~-0.1 ~

execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=35..36}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss16_lomia] ~ ~0 ~ facing entity @e[tag=boss16_lomiabattle,limit=1]
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=35..36}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss16_lomia] ~ ~0 ~ ~ 0
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=35..36}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss16_lomia] ~ ~0 ~ ~25 0
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=35..36}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss16_lomia] ~ ~0 ~ ~ ~
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=35..36}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=arm1,limit=1,tag=boss16_lomia] ^-0.35 ^-0.05 ^ ~ ~-50
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=35..36}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=arm2,limit=1,tag=boss16_lomia] ^0.35 ^-0.05 ^ ~40 ~30
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=35..36}] as @e[tag=boss16_lomia,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss16_lomia] ^0.1 ^-0.65 ^ ~ ~40
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=35..36}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=leg1,limit=1,tag=boss16_lomia] ^0.11 ^-0.8 ^ ~ ~40
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=35..36}] as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=leg2,limit=1,tag=boss16_lomia] ^-0.11 ^-0.8 ^ ~ ~-20

execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=36..37}] as @e[tag=boss16_lomia,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~30
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=36..37}] as @e[tag=boss16_lomia,tag=weapon] at @s run teleport @s ~ ~ ~ ~ ~-10

execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=40..41}] as @e[tag=boss16_lomia,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-40
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=40..41}] as @e[tag=boss16_lomia,tag=weapon] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=40}] as @e[tag=boss16_lomia,tag=weapon] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 1.6
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=40}] as @e[tag=boss16_lomia,tag=weapon] at @s run particle minecraft:sweep_attack ^ ^1.4 ^2 0.3 0.3 0.3 1 10 force
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=40}] as @e[tag=boss16_lomia,tag=weapon] at @s run particle minecraft:sweep_attack ^ ^1.4 ^4 0.3 0.3 0.3 1 10 force
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=40}] as @e[tag=boss16_lomia,tag=weapon] at @s run particle minecraft:sweep_attack ^ ^1.4 ^6 0.3 0.3 0.3 1 10 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss16_lomia,tag=body,scores={motion=40}] as @e[tag=boss16_lomia,tag=weapon] at @s run particle minecraft:sweep_attack ^ ^1.4 ^8 0.3 0.3 0.3 1 10 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss16_lomia,tag=body,scores={motion=40}] as @e[tag=boss16_lomia,tag=weapon] at @s run particle minecraft:sweep_attack ^ ^1.4 ^10 0.3 0.3 0.3 1 10 force

execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=40}] as @e[tag=boss16_lomia,tag=weapon] at @s positioned ^ ^-0.4 ^2 as @e[tag=boss16_lomiabattle,distance=..3] unless score @s player = @e[tag=boss16_lomia,tag=body,limit=1] player run scoreboard players set @s commandDamage 15
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=40}] as @e[tag=boss16_lomia,tag=weapon] at @s positioned ^ ^-0.4 ^4 as @e[tag=boss16_lomiabattle,distance=..3] unless score @s player = @e[tag=boss16_lomia,tag=body,limit=1] player run scoreboard players set @s commandDamage 15
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=40}] as @e[tag=boss16_lomia,tag=weapon] at @s positioned ^ ^-0.4 ^6 as @e[tag=boss16_lomiabattle,distance=..3] unless score @s player = @e[tag=boss16_lomia,tag=body,limit=1] player run scoreboard players set @s commandDamage 15
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss16_lomia,tag=body,scores={motion=40}] as @e[tag=boss16_lomia,tag=weapon] at @s positioned ^ ^-0.4 ^8 as @e[tag=boss16_lomiabattle,distance=..3] unless score @s player = @e[tag=boss16_lomia,tag=body,limit=1] player run scoreboard players set @s commandDamage 15
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss16_lomia,tag=body,scores={motion=40}] as @e[tag=boss16_lomia,tag=weapon] at @s positioned ^ ^-0.4 ^10 as @e[tag=boss16_lomiabattle,distance=..3] unless score @s player = @e[tag=boss16_lomia,tag=body,limit=1] player run scoreboard players set @s commandDamage 15



#execute as @e[tag=boss16_lomia,tag=body,scores={motion=50..},limit=1] at @s run function namespace:main/boss/boss16_lomia/motion/random1
execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=80..},limit=1] run scoreboard players set @e[tag=boss16_lomia,tag=body] bossmove 3

execute if entity @e[tag=boss16_lomia,tag=body,scores={motion=80..},limit=1] run scoreboard players set @e[tag=boss16_lomia,tag=body] motion 0

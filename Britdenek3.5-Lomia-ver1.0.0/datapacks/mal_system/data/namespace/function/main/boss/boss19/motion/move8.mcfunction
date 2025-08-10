scoreboard players add @e[tag=boss19,tag=body,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ 
execute as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 
execute as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^0.5 ^1.1 


tag @e[tag=boss19,tag=body,tag=stop] remove stop


execute as @e[tag=boss19,tag=!body2] at @s unless block ^ ^0.5 ^1 #namespace:airs_for_mob run tag @e[tag=boss19,tag=body] add stop
execute as @e[tag=boss19,tag=!body2] at @s unless block ^ ^0.5 ^2 #namespace:airs_for_mob run tag @e[tag=boss19,tag=body] add stop
execute as @e[tag=boss19,tag=!body2] at @s positioned ^ ^ ^-1 if entity @e[tag=boss19battle,distance=..3] run tag @e[tag=boss19,tag=body] add stop

scoreboard players set @e[tag=boss19,tag=body,scores={motion=16..50},tag=stop] motion 51



execute if entity @e[tag=boss19,tag=body,scores={motion=1}] as @e[tag=boss19,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss19battle,limit=1,sort=nearest]
execute if entity @e[tag=boss19,tag=body,scores={motion=1}] as @e[tag=boss19,tag=body] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..}] as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 ~ ~

execute if entity @e[tag=boss19,tag=body,scores={motion=5}] as @e[tag=boss19,tag=weapon] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1168

execute if entity @e[tag=boss19,tag=body,scores={motion=8..15}] as @e[tag=boss19,tag=arm1] at @s run teleport @s ~ ~ ~ ~7 ~
execute if entity @e[tag=boss19,tag=body,scores={motion=8..15}] as @e[tag=boss19,tag=weapon] at @s run teleport @s ~ ~ ~ ~7 ~
execute if entity @e[tag=boss19,tag=body,scores={motion=8..15}] as @e[tag=boss19,tag=arm2] at @s run teleport @s ~ ~ ~ ~-2 ~


execute if entity @e[tag=boss19,tag=body,scores={motion=20..50}] as @e[tag=boss19,tag=body,tag=!stop] at @s run teleport @s ^ ^ ^1

execute if entity @e[tag=boss19,tag=body,scores={motion=20..21}] as @e[tag=boss19,tag=body2] at @s run teleport @s ^ ^ ^ ~ ~20

execute if entity @e[tag=boss19,tag=body,scores={motion=51..52}] as @e[tag=boss19,tag=body2] at @s run teleport @s ^ ^ ^ ~ ~-20

execute if entity @e[tag=boss19,tag=body,scores={motion=51..52}] as @e[tag=boss19,tag=arm1] at @s run teleport @s ~ ~ ~ ~-60 ~
execute if entity @e[tag=boss19,tag=body,scores={motion=51..52}] as @e[tag=boss19,tag=weapon] at @s run teleport @s ~ ~ ~ ~-60 ~
execute if entity @e[tag=boss19,tag=body,scores={motion=51..52}] as @e[tag=boss19,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss19,tag=body,scores={motion=51..52}] as @e[tag=boss19,tag=weapon] at @s run particle minecraft:sweep_attack ^ ^2 ^1 0.5 1 0.5 1 30 force
execute if entity @e[tag=boss19,tag=body,scores={motion=51}] as @e[tag=boss19,tag=weapon] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0

execute if entity @e[tag=boss19,tag=body,scores={motion=51..52}] as @e[tag=boss19,tag=weapon] at @s positioned ^ ^2 ^1 as @e[tag=boss19battle,distance=..3] unless score @s player = @e[tag=boss19,tag=body,limit=1] player run scoreboard players set @s commandDamage 26


execute if entity @e[tag=boss19,tag=body,scores={motion=60..61}] as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=60..61}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=60..61}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=60..61}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=60}] as @e[tag=boss19,tag=weapon] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1167


execute as @e[tag=boss19,tag=body,scores={motion=65..},limit=1] at @s run function namespace:main/boss/boss19/motion/random1
execute if entity @e[tag=boss19,tag=body,scores={motion=65..},limit=1] run scoreboard players set @e[tag=boss19,tag=body] motion 0


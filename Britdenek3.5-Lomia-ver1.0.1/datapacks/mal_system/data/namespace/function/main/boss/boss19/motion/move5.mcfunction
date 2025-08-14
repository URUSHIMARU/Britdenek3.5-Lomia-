scoreboard players add @e[tag=boss19,tag=body,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^
execute as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ 
execute as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 
execute if entity @e[tag=boss19,tag=body,scores={motion=25..}] as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^0.5 ^1.1 


tag @e[tag=boss19,tag=body,tag=stop] remove stop

execute as @e[tag=boss19] at @s unless block ^ ^0.5 ^-1 #namespace:airs_for_mob run tag @e[tag=boss19,tag=body] add stop
execute as @e[tag=boss19] at @s unless block ^ ^0.5 ^1 #namespace:airs_for_mob run tag @e[tag=boss19,tag=body] add stop


execute if entity @e[tag=boss19,tag=body,scores={motion=1}] as @e[tag=boss19,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss19battle,limit=1,sort=nearest]
execute if entity @e[tag=boss19,tag=body,scores={motion=1}] as @e[tag=boss19,tag=body] at @s run teleport @s ~ ~ ~ ~ 10


execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss19] ~ ~1.5 ~ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss19] ^ ^-1.3 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss19] ^-0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss19] ^0.5 ^-0.4 ^ ~ ~
execute if entity @e[tag=boss19,tag=body,scores={motion=1..2}] as @e[tag=boss19,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss19] ^-0.1 ^-0.7 ^1.1 ~ ~

execute if entity @e[tag=boss19,tag=body,scores={motion=8..15}] as @e[tag=boss19,tag=body,tag=!stop] at @s run teleport @s ^ ^ ^-0.2 ~ 0
execute if entity @e[tag=boss19,tag=body,scores={motion=8..15}] as @e[tag=boss19,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss19,tag=body,scores={motion=8..15}] as @e[tag=boss19,tag=weapon] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss19,tag=body,scores={motion=8..15}] as @e[tag=boss19,tag=arm2] at @s run teleport @s ~ ~ ~ ~-2 ~


execute if entity @e[tag=boss19,tag=body,scores={motion=20..23}] as @e[tag=boss19,tag=body] at @s run teleport @s ^ ^1 ^1
execute if entity @e[tag=boss19,tag=body,scores={motion=24..27}] as @e[tag=boss19,tag=body] at @s if block ~ ~-1 ~ #namespace:airs_for_mob run teleport @s ^ ^-1 ^1

execute if entity @e[tag=boss19,tag=body,scores={motion=28..50}] as @e[tag=boss19,tag=body] at @s if block ~ ~-1 ~ #namespace:airs_for_mob run teleport @s ^ ^-1 ^


execute if entity @e[tag=boss19,tag=body,scores={motion=25..26}] as @e[tag=boss19,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~70
execute if entity @e[tag=boss19,tag=body,scores={motion=25..26}] as @e[tag=boss19,tag=weapon] at @s run teleport @s ~ ~ ~ ~ ~70


execute if entity @e[tag=boss19,tag=body,scores={motion=25..26}] as @e[tag=boss19,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss19,tag=body,scores={motion=25..26}] as @e[tag=boss19,tag=weapon] at @s run particle minecraft:sweep_attack ^ ^2 ^1 0.5 1 0.5 1 30 force
execute if entity @e[tag=boss19,tag=body,scores={motion=25}] as @e[tag=boss19,tag=weapon] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss19,tag=body,scores={motion=25..28}] as @e[tag=boss19,tag=weapon] at @s positioned ^ ^2 ^1 as @e[tag=boss19battle,distance=..3] unless score @s player = @e[tag=boss19,tag=body,limit=1] player run scoreboard players set @s commandDamage 25



execute if entity @e[tag=boss19,tag=body,scores={motion=28}] as @e[tag=boss19,tag=weapon] at @s positioned ^ ^2.5 ^1 run function namespace:main/entity_model/boss/boss19/boss19_bullet3



execute as @e[tag=boss19,tag=body,scores={motion=60..},limit=1] at @s run function namespace:main/boss/boss19/motion/random1
execute if entity @e[tag=boss19,tag=body,scores={motion=60..},limit=1] run scoreboard players set @e[tag=boss19,tag=body] motion 0



scoreboard players add @e[tag=boss8,tag=body,scores={motion2=0..},limit=1] motion 1


execute as @e[tag=boss8,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss8] ~ ~-0.5 ~ 
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss8] ^ ^3.2 ^ 
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss8] ^-0.7 ^2.5 ^
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss8] ^0.7 ^2.5 ^
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss8] ^ ^ ^ 

execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss8battle,limit=1,sort=nearest]
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss8] ~ ~ ~ ~ ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss8] ^ ^3.2 ^ ~ ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss8] ^-0.7 ^2.5 ^ ~90 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss8] ^0.7 ^2.5 ^ ~-90 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss8] ^ ^ ^ ~ ~

execute if entity @e[tag=boss8,tag=body,scores={motion=40}] as @e[tag=boss8,tag=body] at @s run playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=boss8,tag=body] at @s if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^4 #namespace:loreley if block ^ ^1 ^3 #namespace:loreley if block ^ ^1 ^2 #namespace:loreley run particle minecraft:explosion ~ ~2 ~ 1 1 1 1 5 force
execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=boss8,tag=body] at @s if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^4 #namespace:loreley if block ^ ^1 ^3 #namespace:loreley if block ^ ^1 ^2 #namespace:loreley run teleport @s ^ ^ ^1
execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=boss8,tag=body] at @s if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^4 #namespace:loreley if block ^ ^1 ^3 #namespace:loreley if block ^ ^1 ^2 #namespace:loreley as @e[tag=boss8battle,distance=..4] unless score @s player = @e[tag=boss8,tag=body,limit=1] player run scoreboard players set @s commandDamage 1014

execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=boss8,tag=body] at @s if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^4 #namespace:loreley if block ^ ^1 ^3 #namespace:loreley if block ^ ^1 ^2 #namespace:loreley run particle minecraft:explosion ~ ~2 ~ 1 1 1 1 5 force
execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=boss8,tag=body] at @s if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^4 #namespace:loreley if block ^ ^1 ^3 #namespace:loreley if block ^ ^1 ^2 #namespace:loreley run teleport @s ^ ^ ^1
execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=boss8,tag=body] at @s if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^4 #namespace:loreley if block ^ ^1 ^3 #namespace:loreley if block ^ ^1 ^2 #namespace:loreley as @e[tag=boss8battle,distance=..4] unless score @s player = @e[tag=boss8,tag=body,limit=1] player run scoreboard players set @s commandDamage 1014

execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=boss8,tag=body] at @s if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^4 #namespace:loreley if block ^ ^1 ^3 #namespace:loreley if block ^ ^1 ^2 #namespace:loreley run particle minecraft:explosion ~ ~2 ~ 1 1 1 1 5 force
execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=boss8,tag=body] at @s if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^4 #namespace:loreley if block ^ ^1 ^3 #namespace:loreley if block ^ ^1 ^2 #namespace:loreley run teleport @s ^ ^ ^1
execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=boss8,tag=body] at @s if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^4 #namespace:loreley if block ^ ^1 ^3 #namespace:loreley if block ^ ^1 ^2 #namespace:loreley as @e[tag=boss8battle,distance=..4] unless score @s player = @e[tag=boss8,tag=body,limit=1] player run scoreboard players set @s commandDamage 1014

execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=boss8,tag=body] at @s if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^4 #namespace:loreley if block ^ ^1 ^3 #namespace:loreley if block ^ ^1 ^2 #namespace:loreley run particle minecraft:explosion ~ ~2 ~ 1 1 1 1 5 force
execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=boss8,tag=body] at @s if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^4 #namespace:loreley if block ^ ^1 ^3 #namespace:loreley if block ^ ^1 ^2 #namespace:loreley run teleport @s ^ ^ ^1
execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=boss8,tag=body] at @s if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^5 #namespace:loreley if block ^ ^1 ^4 #namespace:loreley if block ^ ^1 ^3 #namespace:loreley if block ^ ^1 ^2 #namespace:loreley as @e[tag=boss8battle,distance=..4] unless score @s player = @e[tag=boss8,tag=body,limit=1] player run scoreboard players set @s commandDamage 1014


execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~3 ~-6
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-3 ~-6
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=body2,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-1

execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~30 ~10
execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-30 ~10


execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss8,tag=body,scores={motion=40..43}] as @e[tag=body1,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~15




execute if entity @e[tag=boss8,tag=body,scores={motion=10}] as @e[tag=body2,limit=1,tag=boss8] at @s run playsound minecraft:entity.puffer_fish.death master @a ~ ~ ~ 2 1.2


execute if entity @e[tag=boss8,tag=body,scores={motion=60..},limit=1] run scoreboard players set @e[tag=boss8,tag=body] motion2 0
execute as @e[tag=boss8,tag=body,scores={motion=60..},limit=1] run function namespace:main/boss/boss8/motion/random1
#execute if entity @e[tag=boss8,tag=body,scores={motion=60..},limit=1] run scoreboard players set @e[tag=boss8,tag=body] motion 0

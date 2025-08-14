
scoreboard players add @e[tag=boss8,tag=body,scores={motion2=0..},limit=1] motion 1
scoreboard players add @e[tag=boss8,tag=body,scores={motion2=0..},limit=1] motion2 1


execute as @e[tag=boss8,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss8] ~ ~-0.5 ~ 
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss8] ^ ^3.2 ^ 
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss8] ^-0.7 ^2.5 ^
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss8] ^0.7 ^2.5 ^
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss8] ^ ^ ^ 


execute if entity @e[tag=boss8,tag=body,scores={motion2=1..2}] as @e[tag=boss8,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss8] ~ ~-0.5 ~ ~ ~100
execute if entity @e[tag=boss8,tag=body,scores={motion2=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss8] ^ ^3.2 ^ ~ ~80
execute if entity @e[tag=boss8,tag=body,scores={motion2=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss8] ^-0.7 ^2.5 ^ ~40 ~-70
execute if entity @e[tag=boss8,tag=body,scores={motion2=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss8] ^0.7 ^2.5 ^ ~-40 ~-70
execute if entity @e[tag=boss8,tag=body,scores={motion2=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss8] ^ ^ ^ ~ ~-70




execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s if block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run execute as @e[tag=boss8,tag=body] at @s run teleport @s ^ ^ ^0.8

execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s if block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run execute if entity @e[tag=boss8,tag=body,scores={motion2=3..6}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s if block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run execute if entity @e[tag=boss8,tag=body,scores={motion2=3..6}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~6 ~-6
execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s if block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run execute if entity @e[tag=boss8,tag=body,scores={motion2=3..6}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-6 ~-6
execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s if block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run execute if entity @e[tag=boss8,tag=body,scores={motion2=3..6}] as @e[tag=body2,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~6

execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s if block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run execute if entity @e[tag=boss8,tag=body,scores={motion2=7..12}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s if block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run execute if entity @e[tag=boss8,tag=body,scores={motion2=7..12}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-6 ~6
execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s if block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run execute if entity @e[tag=boss8,tag=body,scores={motion2=7..12}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~6 ~6
execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s if block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run execute if entity @e[tag=boss8,tag=body,scores={motion2=7..12}] as @e[tag=body2,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-6

execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s if block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run execute if entity @e[tag=boss8,tag=body,scores={motion2=13..17}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s if block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run execute if entity @e[tag=boss8,tag=body,scores={motion2=13..17}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~6 ~-6
execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s if block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run execute if entity @e[tag=boss8,tag=body,scores={motion2=13..17}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-6 ~-6
execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s if block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run execute if entity @e[tag=boss8,tag=body,scores={motion2=13..17}] as @e[tag=body2,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~6


execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s unless block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run scoreboard players set @s motion2 0
execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s unless block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run particle minecraft:bubble_pop ~ ~ ~ 1 1 1 1 100 force
execute if entity @e[tag=boss8,tag=body] as @e[tag=boss8,tag=body] at @s unless block ^ ^0.5 ^5 #namespace:loreley as @e[tag=boss8] at @s run teleport @s ~ ~ ~ ~133 ~



execute if entity @e[tag=boss8,tag=body,scores={motion=1}] as @e[tag=body,tag=boss8] at @s run particle minecraft:splash ~ ~ ~ 2 2 2 1 1000 force
execute if entity @e[tag=boss8,tag=body,scores={motion=1}] as @e[tag=body,tag=boss8] at @s run playsound minecraft:entity.dolphin.splash master @a ~ ~ ~ 2 1.3
execute if entity @e[tag=boss8,tag=body] as @e[tag=body,tag=boss8] at @s run particle minecraft:bubble ~ ~0.5 ~ 1 0.3 1 1 100 force

execute if entity @e[tag=boss8,tag=body,scores={motion=12}] as @e[tag=body,tag=boss8] at @s run particle minecraft:splash ~ ~ ~ 2 2 2 1 1000 force
execute if entity @e[tag=boss8,tag=body,scores={motion=12}] as @e[tag=body,tag=boss8] at @s run playsound minecraft:entity.dolphin.splash master @a ~ ~ ~ 2 1.3




execute if entity @e[tag=boss8,tag=body,scores={motion2=26..},limit=1] run scoreboard players set @e[tag=boss8,tag=body] motion2 0
#execute if entity @e[tag=boss8,tag=body,scores={motion=25..},limit=1] run scoreboard players set @e[tag=boss8,tag=body] bossmove 8
execute as @e[tag=boss8,tag=body,scores={motion=160..},limit=1] run function namespace:main/boss/boss8/motion/random2
#execute if entity @e[tag=boss8,tag=body,scores={motion=160..},limit=1] run scoreboard players set @e[tag=boss8,tag=body] motion 0







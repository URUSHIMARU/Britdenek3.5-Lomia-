
scoreboard players add @e[tag=boss9,tag=body,scores={motion2=0..},limit=1] motion 1


execute as @e[tag=boss9,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss9] ~ ~3 ~ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss9] ^ ^0.7 ^ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss9] ^-2 ^ ^ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss9] ^2 ^ ^ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss9] ^ ^-0.5 ^-1.4 




execute as @e[tag=boss9,tag=right_arm] at @s run teleport @e[tag=right_arm2,limit=1,tag=boss9] ^ ^-2.7 ^2.3 ~ ~22.5
execute as @e[tag=boss9,tag=left_arm] at @s run teleport @e[tag=left_arm2,limit=1,tag=boss9] ^ ^-2.7 ^2.3 ~ ~22.5


execute if entity @e[tag=boss9,tag=body,scores={motion=1}] as @e[tag=boss9,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss9battle,limit=1,sort=random]
execute if entity @e[tag=boss9,tag=body,scores={motion=1}] as @e[tag=boss9,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss9] ~ ~3 ~ ~ ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss9] ^ ^0.7 ^ ~ ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss9] ^-2 ^ ^ ~10 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss9] ^2 ^ ^ ~-10 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss9] ^ ^-0.5 ^-1.4 ~ ~





execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=head,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=body1,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=left_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~-5 ~-4
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~5 ~-4
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=wing,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~3

execute if entity @e[tag=boss9,tag=body,scores={motion=2}] as @e[tag=right_arm,limit=1,tag=boss9] at @s positioned ~ ~3 ~ run function namespace:main/entity_model/boss/boss9/boss9_right_arm2
execute if entity @e[tag=boss9,tag=body,scores={motion=2}] as @e[tag=left_arm,limit=1,tag=boss9] at @s positioned ~ ~3 ~ run function namespace:main/entity_model/boss/boss9/boss9_left_arm2

execute if entity @e[tag=boss9,tag=body,scores={motion=20}] as @e[tag=boss9,tag=left_arm2] run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1075
execute if entity @e[tag=boss9,tag=body,scores={motion=18}] as @e[tag=left_arm2,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^1 ^1 0.5 0.5 0.5 0.2 100 force
execute if entity @e[tag=boss9,tag=body,scores={motion=18}] as @e[tag=left_arm2,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^1 ^3 0.5 0.5 0.5 0.2 100 force
execute if entity @e[tag=boss9,tag=body,scores={motion=18}] as @e[tag=left_arm2,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^1 ^5 0.5 0.5 0.5 0.2 100 force
execute if entity @e[tag=boss9,tag=body,scores={motion=18}] as @e[tag=left_arm2,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^1 ^7 0.5 0.5 0.5 0.2 100 force
execute if entity @e[tag=boss9,tag=body,scores={motion=18}] as @e[tag=left_arm2,limit=1,tag=boss9] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 3 0.8

execute if entity @e[tag=boss9,tag=body,scores={motion=20}] as @e[tag=boss9,tag=right_arm2] run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1075
execute if entity @e[tag=boss9,tag=body,scores={motion=18}] as @e[tag=right_arm2,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^1 ^1 0.5 0.5 0.5 0.2 100 force
execute if entity @e[tag=boss9,tag=body,scores={motion=18}] as @e[tag=right_arm2,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^1 ^3 0.5 0.5 0.5 0.2 100 force
execute if entity @e[tag=boss9,tag=body,scores={motion=18}] as @e[tag=right_arm2,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^1 ^5 0.5 0.5 0.5 0.2 100 force
execute if entity @e[tag=boss9,tag=body,scores={motion=18}] as @e[tag=right_arm2,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^1 ^7 0.5 0.5 0.5 0.2 100 force


execute if entity @e[tag=boss9,tag=body,scores={motion=50}] as @e[tag=boss9,tag=body] at @s as @s run playsound minecraft:item.trident.riptide_2 master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss9,tag=body,scores={motion=50..54}] as @e[tag=boss9,tag=body] at @s as @s run teleport @s ~ ~1.2 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=55..59}] as @e[tag=boss9,tag=body] at @s as @s run teleport @s ~ ~-1.2 ~

execute if entity @e[tag=boss9,tag=body,scores={motion=50..60}] as @e[tag=boss9,tag=body1] at @s as @s positioned ^ ^ ^6 run function namespace:main/entity_model/boss/boss9/boss9_bullet1

execute if entity @e[tag=boss9,tag=body,scores={motion=50..60}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^-2.7 ^2.3 0.3 0.3 0.3 0.3 3 force
execute if entity @e[tag=boss9,tag=body,scores={motion=50..60}] as @e[tag=left_arm,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^-2.7 ^2.3 0.3 0.3 0.3 0.3 3 force
execute if entity @e[tag=boss9,tag=body,scores={motion=50..60}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^-2.7 ^3.3 0.3 0.3 0.3 0.3 3 force
execute if entity @e[tag=boss9,tag=body,scores={motion=50..60}] as @e[tag=left_arm,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^-2.7 ^3.3 0.3 0.3 0.3 0.3 3 force
execute if entity @e[tag=boss9,tag=body,scores={motion=50..60}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^-2.7 ^4.3 0.3 0.3 0.3 0.3 3 force
execute if entity @e[tag=boss9,tag=body,scores={motion=50..60}] as @e[tag=left_arm,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^-2.7 ^4.3 0.3 0.3 0.3 0.3 3 force


execute if entity @e[tag=boss9,tag=body,scores={motion=50..60}] as @e[tag=body1,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~53 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=50..60}] as @e[tag=head,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~53 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=50..60}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~53 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=50..60}] as @e[tag=left_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~53 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=50..60}] as @e[tag=wing,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~53 ~



execute if entity @e[tag=boss9,tag=body,scores={motion=60..},limit=1] as @e[tag=left_arm2,tag=boss9] at @s run particle minecraft:explosion ^ ^1 ^1 1 1 1 1 10 force
execute if entity @e[tag=boss9,tag=body,scores={motion=60..},limit=1] as @e[tag=left_arm2,tag=boss9] at @s run particle minecraft:explosion ^ ^1 ^3 1 1 1 1 10 force
execute if entity @e[tag=boss9,tag=body,scores={motion=60..},limit=1] as @e[tag=left_arm2,tag=boss9] at @s run particle minecraft:explosion ^ ^1 ^5 1 1 1 1 10 force

execute if entity @e[tag=boss9,tag=body,scores={motion=60..},limit=1] run tp @e[tag=left_arm2,tag=boss9] ~ ~-200 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=60..},limit=1] run kill @e[tag=left_arm2,tag=boss9]

execute if entity @e[tag=boss9,tag=body,scores={motion=60..},limit=1] run tp @e[tag=right_arm2,tag=boss9] ~ ~-200 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=60..},limit=1] run kill @e[tag=right_arm2,tag=boss9]


execute if entity @e[tag=boss9,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss9,tag=body] motion2 0
execute as @e[tag=boss9,tag=body,scores={motion=85..},limit=1] run function namespace:main/boss/boss9/motion/random1
#execute if entity @e[tag=boss9,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss9,tag=body] motion 0

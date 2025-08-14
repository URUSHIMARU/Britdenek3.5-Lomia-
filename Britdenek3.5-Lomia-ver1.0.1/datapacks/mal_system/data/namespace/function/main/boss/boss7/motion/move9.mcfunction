
scoreboard players add @e[tag=boss7,tag=body,scores={motion2=0..},limit=1] motion 1

execute as @e[tag=boss7,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss7] ~ ~ ~ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss7] ^-1.3 ^0.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss7] ^1.3 ^0.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss7] ^-0.5 ^-1.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss7] ^0.5 ^-1.5 ^ 
execute as @e[tag=boss7,tag=right_arm] at @s run teleport @e[tag=sword,limit=1,tag=boss7] ^ ^-2.5 ^1.5 
execute as @e[tag=boss7,tag=left_arm] at @s run teleport @e[tag=shield,limit=1,tag=boss7] ^ ^-2.5 ^1.5 

execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss7] ~ ~ ~ ~ ~10
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss7] ^-1.3 ^0.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss7] ^1.3 ^0.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss7] ^-0.5 ^-1.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss7] ^0.5 ^-1.5 ^ ~ ~


execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=right_arm] at @s run teleport @e[tag=sword,limit=1,tag=boss7] ^ ^-1.5 ^1.5 ~ ~90
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=left_arm] at @s run teleport @e[tag=shield,limit=1,tag=boss7] ^ ^-2.5 ^1.5 ~ ~-20





execute if entity @e[tag=boss7,tag=body,scores={motion=2..10}] as @e[tag=body1,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss7,tag=body,scores={motion=2..10}] as @e[tag=left_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss7,tag=body,scores={motion=2..10}] as @e[tag=right_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss7,tag=body,scores={motion=2..10}] as @e[tag=sword,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~3 ~-3
execute if entity @e[tag=boss7,tag=body,scores={motion=2..10}] as @e[tag=left_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~-2 ~5
execute if entity @e[tag=boss7,tag=body,scores={motion=2..10}] as @e[tag=right_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~2 ~-5

execute if entity @e[tag=boss7,tag=body,scores={motion=2..10}] as @e[tag=body,limit=1,tag=boss7] at @s run teleport @s ~ ~-0.1 ~

execute if entity @e[tag=boss7,tag=body,scores={motion=10}] as @e[tag=boss7,tag=!weapon] at @s run data merge entity @s {Invulnerable:1b}
execute if entity @e[tag=boss7,tag=body,scores={motion=10}] as @e[tag=boss7,tag=shield] at @s positioned ^ ^ ^3 run function namespace:main/entity_model/bomb_template {power:4}

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=10}] as @e[tag=boss7,tag=shield] at @s positioned ^-6 ^ ^3 run function namespace:main/entity_model/bomb_template {power:4}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=10}] as @e[tag=boss7,tag=shield] at @s positioned ^6 ^ ^3 run function namespace:main/entity_model/bomb_template {power:4}

execute if entity @e[tag=boss7,tag=body,scores={motion=13}] as @e[tag=boss7,tag=!weapon] at @s run data merge entity @s {Invulnerable:0b}

execute if entity @e[tag=boss7,tag=body,scores={motion=25}] as @e[tag=body,limit=1,tag=boss7] at @s run teleport @s ~ ~0.9 ~

execute as @e[tag=boss7,tag=body,scores={motion=25..},limit=1] run function namespace:main/boss/boss7/motion/random3

#execute if entity @e[tag=boss7,tag=body,scores={motion=25..},limit=1] run scoreboard players set @e[tag=boss7,tag=body] motion 0

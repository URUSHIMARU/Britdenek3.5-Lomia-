scoreboard players add @e[tag=boss5,tag=body,scores={motion=0..},limit=1] motion 1


#ç≈èâÇÃtick
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss5] ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=neck,limit=1,tag=boss5] ^ ^0.25 ^2.3 ~ ~45
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=neck] at @s run teleport @e[tag=head,limit=1,tag=boss5] ^ ^0.1 ^1.7 ~ ~25
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=head] at @s run teleport @e[tag=head2,limit=1,tag=boss5] ^ ^-0.25 ^0.9 ~ ~

execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^1.1 ^0.7 ^2.2 ~-90 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=left_arm1] at @s run teleport @e[tag=left_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~10

execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-1.1 ^0.7 ^2.2 ~90 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=right_arm1] at @s run teleport @e[tag=right_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~10

execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^1 ^0.4 ^ ~-20 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^-1 ^0.4 ^ ~20 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=tail1,limit=1,tag=boss5] ^ ^ ^-1.1 ~-180 ~70
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss5] ^ ^ ^2.0 ~ ~30

execute if entity @e[tag=boss5,tag=body,scores={motion=1..20},limit=1] as @e[tag=boss5] at @s run teleport @s ~ ~-0.1 ~
execute if entity @e[tag=boss5,tag=body,scores={motion=21..25},limit=1] as @e[tag=boss5] at @s run teleport @s ~ ~0.4 ~


#âHÇŒÇΩÇ´
execute if entity @e[tag=boss5,tag=body,scores={motion=21}] at @e[tag=boss5,tag=body,limit=1] run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.2
execute if entity @e[tag=boss5,tag=body,scores={motion=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^1.1 ^0.7 ^2.2 ~-90 ~-5
execute if entity @e[tag=boss5,tag=body,scores={motion=1..20}] as @e[tag=boss5,tag=left_arm1] at @s run teleport @e[tag=left_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~-20
execute if entity @e[tag=boss5,tag=body,scores={motion=21..25}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^1.1 ^0.7 ^2.2 ~-90 ~50
execute if entity @e[tag=boss5,tag=body,scores={motion=21..25}] as @e[tag=boss5,tag=left_arm1] at @s run teleport @e[tag=left_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~50

execute if entity @e[tag=boss5,tag=body,scores={motion=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-1.1 ^0.7 ^2.2 ~90 ~-5
execute if entity @e[tag=boss5,tag=body,scores={motion=1..20}] as @e[tag=boss5,tag=right_arm1] at @s run teleport @e[tag=right_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~-20
execute if entity @e[tag=boss5,tag=body,scores={motion=21..25}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-1.1 ^0.7 ^2.2 ~90 ~50
execute if entity @e[tag=boss5,tag=body,scores={motion=21..25}] as @e[tag=boss5,tag=right_arm1] at @s run teleport @e[tag=right_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~50

execute if entity @e[tag=boss5,tag=body,scores={motion=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=tail1,limit=1,tag=boss5] ^ ^ ^-1.1 ~-180 ~70
execute if entity @e[tag=boss5,tag=body,scores={motion=1..20}] as @e[tag=boss5,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss5] ^ ^ ^2.0 ~ ~30
execute if entity @e[tag=boss5,tag=body,scores={motion=21..30}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=tail1,limit=1,tag=boss5] ^ ^ ^-1.1 ~-180 ~65
execute if entity @e[tag=boss5,tag=body,scores={motion=21..30}] as @e[tag=boss5,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss5] ^ ^ ^2.0 ~ ~20

execute if entity @e[tag=boss5,tag=body,scores={motion=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^1 ^0.4 ^ ~-10 ~20
execute if entity @e[tag=boss5,tag=body,scores={motion=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^-1 ^0.4 ^ ~10 ~20
execute if entity @e[tag=boss5,tag=body,scores={motion=21..30}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^1 ^0.4 ^ ~-20 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=21..30}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^-1 ^0.4 ^ ~20 ~10




execute if entity @e[tag=boss5,tag=body,scores={motion=25..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] bossmove 11
execute if entity @e[tag=boss5,tag=body,scores={motion=25..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] motion 0


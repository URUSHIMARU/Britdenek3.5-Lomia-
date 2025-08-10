scoreboard players add @e[tag=boss5,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=body,tag=boss5,limit=1] motion2 1

#ç≈èâÇÃtick
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss5] ~ ~ ~ facing entity @e[tag=boss5battle,limit=1,sort=nearest]
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss5] ~ ~ ~ ~ 0

execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss5] ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=neck,limit=1,tag=boss5] ^ ^0.25 ^2.3 ~ ~45
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=neck] at @s run teleport @e[tag=head,limit=1,tag=boss5] ^ ^0.1 ^1.7 ~ ~25
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=head] at @s run teleport @e[tag=head2,limit=1,tag=boss5] ^ ^-0.25 ^0.9 ~ ~

execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^1.1 ^0.7 ^2.2 ~-90 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=left_arm1] at @s run teleport @e[tag=left_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~10

execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-1.1 ^0.7 ^2.2 ~90 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=right_arm1] at @s run teleport @e[tag=right_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~10

execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^1 ^0.4 ^ ~-20 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^-1 ^0.4 ^ ~20 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=tail1,limit=1,tag=boss5] ^ ^ ^-1.1 ~-180 ~70
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss5] ^ ^ ^2.0 ~ ~30

execute if entity @e[tag=boss5,tag=body,scores={motion2=1..20},limit=1] as @e[tag=boss5] at @s run teleport @s ~ ~-0.1 ~
execute if entity @e[tag=boss5,tag=body,scores={motion2=21..25},limit=1] as @e[tag=boss5] at @s run teleport @s ~ ~0.4 ~





#âHÇŒÇΩÇ´
execute if entity @e[tag=boss5,tag=body,scores={motion2=21}] at @e[tag=boss5,tag=body,limit=1] run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.2
execute if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^1.1 ^0.7 ^2.2 ~-90 ~-5
execute if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=left_arm1] at @s run teleport @e[tag=left_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~-20
execute if entity @e[tag=boss5,tag=body,scores={motion2=21..25}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^1.1 ^0.7 ^2.2 ~-90 ~50
execute if entity @e[tag=boss5,tag=body,scores={motion2=21..25}] as @e[tag=boss5,tag=left_arm1] at @s run teleport @e[tag=left_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~50

execute if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-1.1 ^0.7 ^2.2 ~90 ~-5
execute if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=right_arm1] at @s run teleport @e[tag=right_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~-20
execute if entity @e[tag=boss5,tag=body,scores={motion2=21..25}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-1.1 ^0.7 ^2.2 ~90 ~50
execute if entity @e[tag=boss5,tag=body,scores={motion2=21..25}] as @e[tag=boss5,tag=right_arm1] at @s run teleport @e[tag=right_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~50

execute if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=tail1,limit=1,tag=boss5] ^ ^ ^-1.1 ~-180 ~70
execute if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss5] ^ ^ ^2.0 ~ ~30
execute if entity @e[tag=boss5,tag=body,scores={motion2=21..30}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=tail1,limit=1,tag=boss5] ^ ^ ^-1.1 ~-180 ~65
execute if entity @e[tag=boss5,tag=body,scores={motion2=21..30}] as @e[tag=boss5,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss5] ^ ^ ^2.0 ~ ~20

execute if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^1 ^0.4 ^ ~-10 ~20
execute if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^-1 ^0.4 ^ ~10 ~20
execute if entity @e[tag=boss5,tag=body,scores={motion2=21..25}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^1 ^0.4 ^ ~-20 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion2=21..25}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^-1 ^0.4 ^ ~20 ~10


#ÉÇÅ[ÉVÉáÉì
execute if entity @e[tag=boss5,tag=body,scores={motion=1..50}] as @e[tag=boss5] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0.2 1 force
execute if entity @e[tag=boss5,tag=body,scores={motion=20..50}] as @e[tag=boss5] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0.2 1 force
execute if entity @e[tag=boss5,tag=body,scores={motion=40..50}] as @e[tag=boss5] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0.2 3 force

execute if entity @e[tag=boss5,tag=body,scores={motion=1..50}] as @e[tag=boss5] at @s unless block ~ ~-1.5 ~ #namespace:airs_for_mob run tag @e[tag=boss5,tag=body,limit=1,tag=!lock] add lock
execute if entity @e[tag=boss5,tag=body,scores={motion=1..50}] as @e[tag=boss5,tag=body,limit=1,tag=!lock] at @s run teleport @s ~ ~-0.25 ~ 

execute if entity @e[tag=boss5,tag=body,scores={motion=120}] as @e[tag=boss5,tag=body,limit=1] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.4 0.4 0.4 1 500
execute if entity @e[tag=boss5,tag=body,scores={motion=120}] as @e[tag=boss5,tag=body,limit=1] at @s run playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 3 0.8


execute if entity @e[tag=boss5,tag=body,scores={motion=120}] as @e[tag=boss5,tag=body,limit=1] at @s run summon armor_stand ~ ~ ~ {Tags:["boss5attack3"],Marker:1b,Invisible:1b}
execute if entity @e[tag=boss5,tag=body,scores={motion=120}] as @e[tag=boss5,tag=body,limit=1] at @s run teleport @e[tag=boss5attack3,limit=1] ~ ~ ~ ~ ~

execute if entity @e[tag=boss5,tag=body,scores={motion=120..}] as @e[tag=boss5,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss5] ~ ~0.25 ~ 


scoreboard players set @e[tag=boss5,tag=body,scores={motion2=25..},limit=1] motion2 0

execute if entity @e[tag=boss5,tag=body,scores={motion=175..},limit=1] run tag @e[tag=body,limit=1,tag=boss5] remove lock
execute if entity @e[tag=boss5,tag=body,scores={motion=175..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] bossmove 11
execute if entity @e[tag=boss5,tag=body,scores={motion=175..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] motion 0


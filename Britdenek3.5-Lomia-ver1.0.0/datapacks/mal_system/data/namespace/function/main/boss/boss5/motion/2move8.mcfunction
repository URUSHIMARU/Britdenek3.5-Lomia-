scoreboard players add @e[tag=boss5,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=body,tag=boss5,limit=1] motion2 1

#最初のtick
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

execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=1..20},limit=1] as @e[tag=boss5] at @s run teleport @s ~ ~-0.1 ~
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=21..25},limit=1] as @e[tag=boss5] at @s run teleport @s ~ ~0.4 ~

execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=1..9},limit=1] as @e[tag=boss5] at @s run teleport @s ~ ~-0.1 ~
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=10..12},limit=1] as @e[tag=boss5] at @s run teleport @s ~ ~0.3 ~




#羽ばたき
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=21}] at @e[tag=boss5,tag=body,limit=1] run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.2
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^1.1 ^0.7 ^2.2 ~-90 ~-5
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=left_arm1] at @s run teleport @e[tag=left_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~-20
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=21..25}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^1.1 ^0.7 ^2.2 ~-90 ~50
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=21..25}] as @e[tag=boss5,tag=left_arm1] at @s run teleport @e[tag=left_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~50

execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-1.1 ^0.7 ^2.2 ~90 ~-5
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=right_arm1] at @s run teleport @e[tag=right_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~-20
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=21..25}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-1.1 ^0.7 ^2.2 ~90 ~50
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=21..25}] as @e[tag=boss5,tag=right_arm1] at @s run teleport @e[tag=right_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~50

execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=tail1,limit=1,tag=boss5] ^ ^ ^-1.1 ~-180 ~70
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss5] ^ ^ ^2.0 ~ ~30
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=21..30}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=tail1,limit=1,tag=boss5] ^ ^ ^-1.1 ~-180 ~65
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=21..30}] as @e[tag=boss5,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss5] ^ ^ ^2.0 ~ ~20

execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^1 ^0.4 ^ ~-10 ~20
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=1..20}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^-1 ^0.4 ^ ~10 ~20
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=21..25}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^1 ^0.4 ^ ~-20 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] if entity @e[tag=boss5,tag=body,scores={motion2=21..25}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^-1 ^0.4 ^ ~20 ~10


#羽ばたき
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=11}] at @e[tag=boss5,tag=body,limit=1] run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 3 1.2
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=1..9}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^1.1 ^0.7 ^2.2 ~-90 ~-8
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=1..9}] as @e[tag=boss5,tag=left_arm1] at @s run teleport @e[tag=left_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~-20
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=10..12}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^1.1 ^0.7 ^2.2 ~-90 ~50
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=10..12}] as @e[tag=boss5,tag=left_arm1] at @s run teleport @e[tag=left_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~50

execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=1..9}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-1.1 ^0.7 ^2.2 ~90 ~-5
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=1..9}] as @e[tag=boss5,tag=right_arm1] at @s run teleport @e[tag=right_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~-20
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=10..12}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-1.1 ^0.7 ^2.2 ~90 ~50
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=10..12}] as @e[tag=boss5,tag=right_arm1] at @s run teleport @e[tag=right_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~50

execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=1..10}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=tail1,limit=1,tag=boss5] ^ ^ ^-1.1 ~-180 ~70
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=1..10}] as @e[tag=boss5,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss5] ^ ^ ^2.0 ~ ~30
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=10..15}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=tail1,limit=1,tag=boss5] ^ ^ ^-1.1 ~-180 ~65
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=10..15}] as @e[tag=boss5,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss5] ^ ^ ^2.0 ~ ~20

execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=1..9}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^1 ^0.4 ^ ~-10 ~20
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=1..9}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^-1 ^0.4 ^ ~10 ~20
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=10..12}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^1 ^0.4 ^ ~-20 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] if entity @e[tag=boss5,tag=body,scores={motion2=10..12}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^-1 ^0.4 ^ ~20 ~10



#モーション

execute if entity @e[tag=boss5,tag=body,scores={motion=26..75}] as @e[tag=head2,tag=boss5] at @s as @e[tag=right_arm2] at @s run particle minecraft:sweep_attack ~ ~0.5 ~ 0.8 0.8 0.8 1 4 force
execute if entity @e[tag=boss5,tag=body,scores={motion=26..75}] as @e[tag=head2,tag=boss5] at @s as @e[tag=left_arm2] at @s run particle minecraft:sweep_attack ~ ~0.5 ~ 0.8 0.8 0.8 1 4 force


execute if entity @e[tag=boss5,tag=body,scores={motion=40}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet31
execute if score #difficulty difficulty matches 2.. run execute if entity @e[tag=boss5,tag=body,scores={motion=40}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet32
execute if score #difficulty difficulty matches 2.. run execute if entity @e[tag=boss5,tag=body,scores={motion=40}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet33
execute if entity @e[tag=boss5,tag=body,scores={motion=40}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack3,distance=..1,limit=3,sort=nearest] ~ ~ ~ facing entity @e[tag=boss5battle,limit=1,sort=nearest]
execute if entity @e[tag=boss5,tag=body,scores={motion=40}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack32,distance=..1,limit=1,sort=nearest] ~ ~ ~ ~35 ~40
execute if entity @e[tag=boss5,tag=body,scores={motion=40}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack33,distance=..1,limit=1,sort=nearest] ~ ~ ~ ~-35 ~40

execute if entity @e[tag=boss5,tag=body,scores={motion=60}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet31
execute if score #difficulty difficulty matches 2.. run execute if entity @e[tag=boss5,tag=body,scores={motion=60}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet32
execute if score #difficulty difficulty matches 2.. run execute if entity @e[tag=boss5,tag=body,scores={motion=60}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet33
execute if entity @e[tag=boss5,tag=body,scores={motion=60}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack3,distance=..1,limit=3,sort=nearest] ~ ~ ~ facing entity @e[tag=boss5battle,limit=1,sort=nearest]
execute if entity @e[tag=boss5,tag=body,scores={motion=60}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack32,distance=..1,limit=1,sort=nearest] ~ ~ ~ ~35 ~40
execute if entity @e[tag=boss5,tag=body,scores={motion=60}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack33,distance=..1,limit=1,sort=nearest] ~ ~ ~ ~-35 ~40

execute if entity @e[tag=boss5,tag=body,scores={motion=80}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet31
execute if score #difficulty difficulty matches 2.. run execute if entity @e[tag=boss5,tag=body,scores={motion=80}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet32
execute if score #difficulty difficulty matches 2.. run execute if entity @e[tag=boss5,tag=body,scores={motion=80}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet33
execute if entity @e[tag=boss5,tag=body,scores={motion=80}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack3,distance=..1,limit=3,sort=nearest] ~ ~ ~ facing entity @e[tag=boss5battle,limit=1,sort=nearest]
execute if entity @e[tag=boss5,tag=body,scores={motion=80}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack32,distance=..1,limit=1,sort=nearest] ~ ~ ~ ~35 ~40
execute if entity @e[tag=boss5,tag=body,scores={motion=80}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack33,distance=..1,limit=1,sort=nearest] ~ ~ ~ ~-35 ~40



execute if entity @e[tag=boss5,tag=body,scores={motion=..25}] run scoreboard players set @e[tag=boss5,tag=body,scores={motion2=25..},limit=1] motion2 0
execute if entity @e[tag=boss5,tag=body,scores={motion=26..}] run scoreboard players set @e[tag=boss5,tag=body,scores={motion2=12..},limit=1] motion2 0

execute if entity @e[tag=boss5,tag=body,scores={motion=100..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] bossmove 11
execute if entity @e[tag=boss5,tag=body,scores={motion=100..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] motion 0


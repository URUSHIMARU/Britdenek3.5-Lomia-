#位置情報保存
scoreboard players add @e[tag=boss5,tag=body,scores={motion=0..},limit=1] motion 1
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss5] @s 
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss5] ^ ^0.75 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^0.3 ^0.65 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-0.3 ^0.65 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^0.1 ^0.05 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^-0.1 ^0.05 ^ ~ ~






#モーション
execute if entity @e[tag=boss5,tag=body,scores={motion=1..4}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^0.3 ^0.65 ^ ~180 ~0
execute if entity @e[tag=boss5,tag=body,scores={motion=1..4}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-0.3 ^0.65 ^ ~180 ~0

execute if entity @e[tag=boss5,tag=body,scores={motion=5..80}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^0.3 ^0.65 ^ ~180 ~90
execute if entity @e[tag=boss5,tag=body,scores={motion=5..80}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-0.3 ^0.65 ^ ~180 ~90

execute if entity @e[tag=boss5,tag=body,scores={motion=10..80}] as @e[tag=boss5,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss5battle,limit=1,sort=nearest]
execute if entity @e[tag=boss5,tag=body,scores={motion=10..80}] as @e[tag=boss5,tag=body] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss5,tag=body,scores={motion=10..80}] as @e[tag=body,tag=boss5] at @s run particle minecraft:soul ^ ^2 ^1 0.2 0.2 0.2 0.05 10 force
execute if entity @e[tag=boss5,tag=body,scores={motion=10}] as @e[tag=body,tag=boss5] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 2 0.8

execute if entity @e[tag=boss5,tag=body,scores={motion=30}] as @e[tag=body,tag=boss5] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.8
execute if entity @e[tag=boss5,tag=body,scores={motion=30}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet11
execute if score #difficulty difficulty matches 2.. run execute if entity @e[tag=boss5,tag=body,scores={motion=30}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet12
execute if score #difficulty difficulty matches 2.. run execute if entity @e[tag=boss5,tag=body,scores={motion=30}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet13
execute if entity @e[tag=boss5,tag=body,scores={motion=30}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack1,distance=..1,limit=3,sort=nearest] ~ ~ ~ ~ ~-40
execute if entity @e[tag=boss5,tag=body,scores={motion=30}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack12,distance=..1,limit=3,sort=nearest] ~ ~ ~ ~-60 ~-40
execute if entity @e[tag=boss5,tag=body,scores={motion=30}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack13,distance=..1,limit=3,sort=nearest] ~ ~ ~ ~60 ~-40

execute if entity @e[tag=boss5,tag=body,scores={motion=60}] as @e[tag=body,tag=boss5] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.8
execute if entity @e[tag=boss5,tag=body,scores={motion=60}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet11
execute if score #difficulty difficulty matches 2.. run execute if entity @e[tag=boss5,tag=body,scores={motion=60}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet12
execute if score #difficulty difficulty matches 2.. run execute if entity @e[tag=boss5,tag=body,scores={motion=60}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet13
execute if entity @e[tag=boss5,tag=body,scores={motion=60}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack1,distance=..1,limit=3,sort=nearest] ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss5,tag=body,scores={motion=60}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack12,distance=..1,limit=3,sort=nearest] ~ ~ ~ ~-60 ~-20
execute if entity @e[tag=boss5,tag=body,scores={motion=60}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack13,distance=..1,limit=3,sort=nearest] ~ ~ ~ ~60 ~-20

execute if entity @e[tag=boss5,tag=body,scores={motion=90}] as @e[tag=body,tag=boss5] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.8
execute if entity @e[tag=boss5,tag=body,scores={motion=90}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet11
execute if score #difficulty difficulty matches 2.. run execute if entity @e[tag=boss5,tag=body,scores={motion=90}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet12
execute if score #difficulty difficulty matches 2.. run execute if entity @e[tag=boss5,tag=body,scores={motion=90}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run function namespace:main/entity_model/boss/boss5/boss5_bullet13
execute if entity @e[tag=boss5,tag=body,scores={motion=90}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack1,distance=..1,limit=3,sort=nearest] ~ ~ ~ ~ ~0
execute if entity @e[tag=boss5,tag=body,scores={motion=90}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack12,distance=..1,limit=3,sort=nearest] ~ ~ ~ ~-60 ~0
execute if entity @e[tag=boss5,tag=body,scores={motion=90}] as @e[tag=body,tag=boss5] at @s positioned ^ ^1 ^1 run teleport @e[tag=boss5_attack13,distance=..1,limit=3,sort=nearest] ~ ~ ~ ~60 ~0




#execute if entity @e[tag=boss5,tag=body,scores={motion=100..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] motion 0
execute if entity @e[tag=boss5,tag=body,scores={motion=100..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] bossmove 1




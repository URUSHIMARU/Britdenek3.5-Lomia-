
scoreboard players add @e[tag=boss10,tag=body,scores={motion=0..},limit=1] motion 1

execute as @e[tag=boss10,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss10] ~ ~ ~ 
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss10] ~ ~1.1 ~ 
execute as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss10] ^-1 ^1.6 ^
execute as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss10] ^1 ^1.6 ^ 
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss10] ^-1 ^-1.3 ^0.8
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss10] ^1 ^-1.3 ^0.8 
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss10] ^-1 ^-1.3 ^-0.8
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss10] ^1 ^-1.3 ^-0.8 

execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss10] ~ ~ ~ ~ ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss10] ~ ~1.1 ~ ~ ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss10] ^-1 ^1.6 ^ ~10 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss10] ^1 ^1.6 ^ ~-10 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss10] ^-1 ^-1.3 ^0.8 ~45 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss10] ^1 ^-1.3 ^0.8 ~-45 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss10] ^-1 ^-1.3 ^-0.8 ~135 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss10] ^1 ^-1.3 ^-0.8 ~-135 ~





execute if entity @e[tag=boss10,tag=body,scores={motion=2..10}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss10,tag=body,scores={motion=2..10}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~-5 ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=2..10}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~5 ~-8


execute if entity @e[tag=boss10,tag=body,scores={motion=7..8}] as @e[tag=leg1,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss10,tag=body,scores={motion=7..8}] as @e[tag=leg2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss10,tag=body,scores={motion=7..8}] as @e[tag=leg3,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss10,tag=body,scores={motion=7..8}] as @e[tag=leg4,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-20

execute if entity @e[tag=boss10,tag=body,scores={motion=23}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss10,tag=body,scores={motion=23}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss10,tag=body,scores={motion=23}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss10,tag=body,scores={motion=23}] as @e[tag=leg1,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~90
execute if entity @e[tag=boss10,tag=body,scores={motion=23}] as @e[tag=leg2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~90
execute if entity @e[tag=boss10,tag=body,scores={motion=23}] as @e[tag=leg3,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~90
execute if entity @e[tag=boss10,tag=body,scores={motion=23}] as @e[tag=leg4,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~90
execute if entity @e[tag=boss10,tag=body,scores={motion=23}] as @e[tag=body,limit=1,tag=boss10] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~ ~ 4 0.2 4 1 1000 force
execute if entity @e[tag=boss10,tag=body,scores={motion=23}] as @e[tag=body,limit=1,tag=boss10] at @s run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 3 0.8



execute if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=boss10,tag=body] at @s positioned ^ ^-10 ^4 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=45}] as @e[tag=boss10,tag=body] at @s positioned ^ ^-10 ^8 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=50}] as @e[tag=boss10,tag=body] at @s positioned ^ ^-10 ^12 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=55}] as @e[tag=boss10,tag=body] at @s positioned ^ ^-10 ^16 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=60}] as @e[tag=boss10,tag=body] at @s positioned ^ ^-10 ^20 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=65}] as @e[tag=boss10,tag=body] at @s positioned ^ ^-10 ^24 run function namespace:main/entity_model/boss/boss10/boss10_bullet4

execute if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=boss10,tag=body] at @s positioned ^ ^-10 ^-4 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=45}] as @e[tag=boss10,tag=body] at @s positioned ^ ^-10 ^-8 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=50}] as @e[tag=boss10,tag=body] at @s positioned ^ ^-10 ^-12 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=55}] as @e[tag=boss10,tag=body] at @s positioned ^ ^-10 ^-16 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=60}] as @e[tag=boss10,tag=body] at @s positioned ^ ^-10 ^-20 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=65}] as @e[tag=boss10,tag=body] at @s positioned ^ ^-10 ^-24 run function namespace:main/entity_model/boss/boss10/boss10_bullet4

execute if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=boss10,tag=body] at @s positioned ^4 ^-10 ^ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=45}] as @e[tag=boss10,tag=body] at @s positioned ^8 ^-10 ^ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=50}] as @e[tag=boss10,tag=body] at @s positioned ^12 ^-10 ^ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=55}] as @e[tag=boss10,tag=body] at @s positioned ^16 ^-10 ^ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=60}] as @e[tag=boss10,tag=body] at @s positioned ^20 ^-10 ^ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=65}] as @e[tag=boss10,tag=body] at @s positioned ^24 ^-10 ^ run function namespace:main/entity_model/boss/boss10/boss10_bullet4

execute if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=boss10,tag=body] at @s positioned ^-4 ^-10 ^ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=45}] as @e[tag=boss10,tag=body] at @s positioned ^-8 ^-10 ^ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=50}] as @e[tag=boss10,tag=body] at @s positioned ^-12 ^-10 ^ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=55}] as @e[tag=boss10,tag=body] at @s positioned ^-16 ^-10 ^ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=60}] as @e[tag=boss10,tag=body] at @s positioned ^-20 ^-10 ^ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=65}] as @e[tag=boss10,tag=body] at @s positioned ^-24 ^-10 ^ run function namespace:main/entity_model/boss/boss10/boss10_bullet4


execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=boss10battle,nbt={OnGround:1b},tag=!bullet,sort=random,limit=2] at @s positioned ~ ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=45}] as @e[tag=boss10battle,nbt={OnGround:1b},tag=!bullet,sort=random,limit=2] at @s positioned ~ ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=50}] as @e[tag=boss10battle,nbt={OnGround:1b},tag=!bullet,sort=random,limit=2] at @s positioned ~ ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=55}] as @e[tag=boss10battle,nbt={OnGround:1b},tag=!bullet,sort=random,limit=2] at @s positioned ~ ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=60}] as @e[tag=boss10battle,nbt={OnGround:1b},tag=!bullet,sort=random,limit=2] at @s positioned ~ ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=65}] as @e[tag=boss10battle,nbt={OnGround:1b},tag=!bullet,sort=random,limit=2] at @s positioned ~ ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4


execute as @e[tag=boss10,tag=body,scores={motion=100..,HP=351..},limit=1] run function namespace:main/boss/boss10/motion/random1
execute as @e[tag=boss10,tag=body,scores={motion=100..,HP=..350},limit=1] run function namespace:main/boss/boss10/motion/random2


#execute if entity @e[tag=boss10,tag=body,scores={motion=100..},limit=1] run scoreboard players set @e[tag=boss10,tag=body] motion 0

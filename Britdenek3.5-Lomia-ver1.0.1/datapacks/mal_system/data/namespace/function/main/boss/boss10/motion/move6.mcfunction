
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

execute if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=leg1,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~70
execute if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=leg2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~70
execute if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=leg3,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~70
execute if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=leg4,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~70
execute if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~80
execute if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~80
execute if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=body,limit=1,tag=boss10] at @s run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 2.5 1.3
execute if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=body,limit=1,tag=boss10] at @s run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 3 0
execute if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=body,limit=1,tag=boss10] at @s run particle minecraft:explosion ~ ~ ~ 2 0 2 1 30 force
execute if entity @e[tag=boss10,tag=body,scores={motion=41..50}] as @e[tag=body,limit=1,tag=boss10] at @s run teleport @s ~ ~3 ~

execute if entity @e[tag=boss10,tag=body,scores={motion=51..60}] as @e[tag=leg1,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss10,tag=body,scores={motion=51..60}] as @e[tag=leg2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss10,tag=body,scores={motion=51..60}] as @e[tag=leg3,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss10,tag=body,scores={motion=51..60}] as @e[tag=leg4,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss10,tag=body,scores={motion=51..60}] as @e[tag=body,limit=1,tag=boss10] at @s run teleport @s ~ ~-1 ~

execute if entity @e[tag=boss10,tag=body,scores={motion=61}] as @e[tag=body,limit=1,tag=boss10] at @s run particle minecraft:explosion ~ ~1 ~ 4 0 4 1 30 force
execute if entity @e[tag=boss10,tag=body,scores={motion=61}] as @e[tag=body,limit=1,tag=boss10] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 3 0
execute if entity @e[tag=boss10,tag=body,scores={motion=61}] as @e[tag=body,limit=1,tag=boss10] at @s as @e[tag=boss10battle,distance=..7] unless score @s player = @e[tag=boss10,tag=body,limit=1] player run scoreboard players set @s commandDamage 17

execute if entity @e[tag=boss10,tag=body,scores={motion=60}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=65}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=70}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=75}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if entity @e[tag=boss10,tag=body,scores={motion=80}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4



execute as @e[tag=boss10,tag=body,scores={motion=85..,HP=351..},limit=1] run function namespace:main/boss/boss10/motion/random1
execute as @e[tag=boss10,tag=body,scores={motion=85..,HP=..350},limit=1] run function namespace:main/boss/boss10/motion/random2


#execute if entity @e[tag=boss10,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss10,tag=body] motion 0

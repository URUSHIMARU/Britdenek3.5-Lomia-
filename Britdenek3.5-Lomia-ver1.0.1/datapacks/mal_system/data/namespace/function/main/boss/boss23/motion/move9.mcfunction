scoreboard players add @e[tag=boss23,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss23,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss23] ~ ~ ~ 
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss23] ^0.6 ^-0.3 ^-0.2
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss23] ^-0.6 ^-0.3 ^-0.2
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss23] ^ ^-1.2 ^-1.8



execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss23battle,limit=1,sort=nearest,tag=!bullet]
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss23] ~ ~ ~ ~ ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss23] ^0.6 ^-0.3 ^-0.2 ~-30 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss23] ^-0.6 ^-0.3 ^-0.2 ~30 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss23] ^ ^-1.2 ^-1.8 ~180 ~




execute if entity @e[tag=boss23,tag=body,scores={motion=22..25}] as @e[tag=arm1,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~10 ~-6
execute if entity @e[tag=boss23,tag=body,scores={motion=22..25}] as @e[tag=arm2,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~-10 ~-6





execute if entity @e[tag=boss23,tag=body,scores={motion=50..53}] as @e[tag=arm1,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~-10 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=50..53}] as @e[tag=arm2,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~10 ~

execute if entity @e[tag=boss23,tag=body,scores={motion=80..83}] as @e[tag=arm1,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss23,tag=body,scores={motion=80..83}] as @e[tag=arm2,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss23,tag=body,scores={motion=80}] as @e[tag=arm1,limit=1,tag=boss23] at @s run playsound minecraft:entity.allay.item_thrown master @a ~ ~ ~ 1 0
execute if entity @e[tag=boss23,tag=body,scores={motion=80}] as @e[tag=arm1,limit=1,tag=boss23] at @s run particle minecraft:witch ~ ~ ~ 3 3 3 1 400 force


execute if entity @e[tag=boss23,tag=body,scores={motion=85}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^4 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=86}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^9 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=87}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^12 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=88}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^15 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=89}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^18 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=80}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^21 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=91}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^24 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=92}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^27 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=93}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^30 run function namespace:main/entity_model/boss/boss23/boss23_bullet5


execute if entity @e[tag=boss23,tag=body,scores={motion=85}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^-4 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=86}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^-9 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=87}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^-12 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=88}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^-15 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=89}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^-18 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=90}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^-21 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=91}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^-24 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=92}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^-27 run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=93}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^ ^15 ^-30 run function namespace:main/entity_model/boss/boss23/boss23_bullet5


execute if entity @e[tag=boss23,tag=body,scores={motion=85}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^4 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=86}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^9 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=87}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^12 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=88}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^15 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=89}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^18 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=90}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^21 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=91}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^24 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=92}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^27 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=93}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^30 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5


execute if entity @e[tag=boss23,tag=body,scores={motion=85}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^-4 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=86}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^-9 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=87}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^-12 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=88}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^-15 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=89}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^-18 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=90}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^-21 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=91}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^-24 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=92}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^-27 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5
execute if entity @e[tag=boss23,tag=body,scores={motion=93}] as @e[tag=body,limit=1,tag=boss23] at @s positioned ^-30 ^15 ^ run function namespace:main/entity_model/boss/boss23/boss23_bullet5



execute as @e[tag=boss23,tag=body,scores={motion=100..},limit=1] at @s run function namespace:main/boss/boss23/motion/random1
execute if entity @e[tag=boss23,tag=body,scores={motion=100..},limit=1] run scoreboard players set @e[tag=boss23,tag=body] motion 0




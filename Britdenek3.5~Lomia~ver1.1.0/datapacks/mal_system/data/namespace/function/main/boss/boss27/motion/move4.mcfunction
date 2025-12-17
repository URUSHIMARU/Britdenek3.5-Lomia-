scoreboard players add @e[tag=boss27,tag=body,scores={motion=0..},limit=1] motion 1
#scoreboard players add @e[tag=boss27,tag=body,scores={motion2=0..},limit=1] motion2 1



execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss27battle,limit=1,sort=nearest]
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss27] ~ ~-0.5 ~ ~ ~10
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss27] ^-0.7 ^0.8 ^0.2 ~10 ~-20
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss27] ^0.7 ^0.8 ^0.2 ~-10 ~-20
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss27] ^0.5 ^-0.7 ^-0.1 ~-10 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss27] ^-0.5 ^-0.7 ^-0.1 ~10 ~

execute if entity @e[tag=boss27,tag=body,scores={motion=10..20}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~-6 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=30..35}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~25 ~-2
execute if entity @e[tag=boss27,tag=body,scores={motion=40..46}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~-13 ~-1

execute if entity @e[tag=boss27,tag=body,scores={motion=35..45}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~6 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=55..60}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~-25 ~-2
execute if entity @e[tag=boss27,tag=body,scores={motion=65..71}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~13 ~1

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=30..35}] as @e[tag=boss27,tag=arm1] at @s run function namespace:main/entity_model/boss/boss27/boss27_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=30..35}] as @e[tag=boss27,tag=arm1] at @s run function namespace:main/entity_model/boss/boss27/boss27_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=30..35}] as @e[tag=boss27,tag=arm1] at @s run teleport @e[tag=boss27_first,limit=4,sort=nearest] ~ ~ ~ ~ ~-25
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=30..35}] as @e[tag=boss27,tag=arm1] at @s as @e[tag=boss27_first,limit=1,distance=..0.5,sort=random] at @s run teleport @s ~ ~ ~ ~ ~13
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=30..35}] as @e[tag=boss27,tag=arm1] at @s as @e[tag=boss27_first,limit=1,distance=..0.5,sort=random] at @s run teleport @s ~ ~ ~ ~ ~-6
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=30..35}] as @e[tag=boss27,tag=arm1] at @s as @e[tag=boss27_first,limit=1,distance=..0.5,sort=random] at @s run teleport @s ~ ~ ~ ~ ~13
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=30..35}] as @e[tag=boss27,tag=arm1] at @s as @e[tag=boss27_first,limit=1,distance=..0.5,sort=random] at @s run teleport @s ~ ~ ~ ~ ~-13
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=30..35}] as @e[tag=boss27,tag=arm1] at @s as @e[tag=boss27_first,limit=1,distance=..0.5,sort=random] at @s run teleport @s ~ ~ ~ ~6 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=30..35}] as @e[tag=boss27,tag=arm1] at @s as @e[tag=boss27_first,limit=1,distance=..0.5,sort=random] at @s run teleport @s ~ ~ ~ ~-6 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=30}] as @e[tag=boss27,tag=arm1] at @s run playsound minecraft:item.brush.brushing.sand.complete master @a ~ ~ ~ 2 0.8


execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=55..60}] as @e[tag=boss27,tag=arm2] at @s run function namespace:main/entity_model/boss/boss27/boss27_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=55..60}] as @e[tag=boss27,tag=arm2] at @s run function namespace:main/entity_model/boss/boss27/boss27_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=55..60}] as @e[tag=boss27,tag=arm2] at @s run teleport @e[tag=boss27_first,limit=4,sort=nearest] ~ ~ ~ ~ ~-25
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=55..60}] as @e[tag=boss27,tag=arm2] at @s as @e[tag=boss27_first,limit=1,distance=..0.5,sort=random] at @s run teleport @s ~ ~ ~ ~ ~13
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=55..60}] as @e[tag=boss27,tag=arm2] at @s as @e[tag=boss27_first,limit=1,distance=..0.5,sort=random] at @s run teleport @s ~ ~ ~ ~ ~-6
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=55..60}] as @e[tag=boss27,tag=arm2] at @s as @e[tag=boss27_first,limit=1,distance=..0.5,sort=random] at @s run teleport @s ~ ~ ~ ~ ~13
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=55..60}] as @e[tag=boss27,tag=arm2] at @s as @e[tag=boss27_first,limit=1,distance=..0.5,sort=random] at @s run teleport @s ~ ~ ~ ~ ~-13
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=55..60}] as @e[tag=boss27,tag=arm2] at @s as @e[tag=boss27_first,limit=1,distance=..0.5,sort=random] at @s run teleport @s ~ ~ ~ ~ ~6
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=55..60}] as @e[tag=boss27,tag=arm2] at @s as @e[tag=boss27_first,limit=1,distance=..0.5,sort=random] at @s run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss27,tag=body,scores={motion=55}] as @e[tag=boss27,tag=arm2] at @s run playsound minecraft:item.brush.brushing.sand.complete master @a ~ ~ ~ 2 0.8

tag @e[tag=boss27_first] remove boss27_first

execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss27,tag=body,scores={motion=55..60}] as @e[tag=boss27,tag=arm2] at @s run function namespace:main/entity_model/boss/boss27/boss27_bullet1
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss27,tag=body,scores={motion=55..60}] as @e[tag=boss27,tag=arm2] at @s run teleport @e[tag=boss27_first,limit=4,sort=nearest] ~ ~ ~ ~ ~-10
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss27,tag=body,scores={motion=55..60}] as @e[tag=boss27_first,limit=1,distance=..0.5] at @s run teleport ^ ^ ^2

execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss27,tag=body,scores={motion=30..35}] as @e[tag=boss27,tag=arm1] at @s run function namespace:main/entity_model/boss/boss27/boss27_bullet1
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss27,tag=body,scores={motion=30..35}] as @e[tag=boss27,tag=arm1] at @s run teleport @e[tag=boss27_first,limit=4,sort=nearest] ~ ~ ~ ~ ~-10
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss27,tag=body,scores={motion=30..35}] as @e[tag=boss27_first,limit=1,distance=..0.5] at @s run teleport ^ ^ ^2



execute as @e[tag=boss27,tag=body,scores={motion=80..},limit=1] at @s run function namespace:main/boss/boss27/motion/random1

execute if entity @e[tag=boss27,tag=body,scores={motion=80..},limit=1] run scoreboard players set @e[tag=boss27,tag=body] motion 0

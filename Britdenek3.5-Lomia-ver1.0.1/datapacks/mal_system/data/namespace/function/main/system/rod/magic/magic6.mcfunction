execute if entity @s[level=..10] run return 0
function namespace:main/entity_model/other/magic6_bullet
function namespace:main/entity_model/other/magic6_bullet
function namespace:main/entity_model/other/magic6_bullet
function namespace:main/entity_model/other/magic6_bullet
function namespace:main/entity_model/other/magic6_bullet
function namespace:main/entity_model/other/magic6_bullet
teleport @e[tag=magic6_bullet,limit=6,sort=nearest,distance=..1.5] ~ ~1 ~ ~ ~
execute as @e[tag=magic6_bullet,limit=3,sort=random,distance=..1.5] at @s run teleport @s ~ ~ ~ ~3 ~
execute as @e[tag=magic6_bullet,limit=3,sort=random,distance=..1.5] at @s run teleport @s ~ ~ ~ ~7 ~
execute as @e[tag=magic6_bullet,limit=3,sort=random,distance=..1.5] at @s run teleport @s ~ ~ ~ ~13 ~
execute as @e[tag=magic6_bullet,limit=3,sort=random,distance=..1.5] at @s run teleport @s ~ ~ ~ ~-3 ~
execute as @e[tag=magic6_bullet,limit=3,sort=random,distance=..1.5] at @s run teleport @s ~ ~ ~ ~-7 ~
execute as @e[tag=magic6_bullet,limit=3,sort=random,distance=..1.5] at @s run teleport @s ~ ~ ~ ~-13 ~

execute as @e[tag=magic6_bullet,limit=3,sort=random,distance=..1.5] at @s run teleport @s ~ ~ ~ ~ ~-3
execute as @e[tag=magic6_bullet,limit=3,sort=random,distance=..1.5] at @s run teleport @s ~ ~ ~ ~ ~-7
execute as @e[tag=magic6_bullet,limit=3,sort=random,distance=..1.5] at @s run teleport @s ~ ~ ~ ~ ~-13

particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0.3 10 force
particle minecraft:block{block_state:"minecraft:ice"} ~ ~0.5 ~ 0.5 0.5 0.5 0.05 2 force
particle minecraft:snowflake ~ ~0.5 ~ 0.1 0.1 0.1 0.3 2 force

xp add @s -11 levels
schedule function namespace:main/system/rod/magic/magic6_loop 1t replace

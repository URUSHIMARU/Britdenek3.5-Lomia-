execute as @e[tag=magic4_bullet] at @s store result score @s magicAttackBase run data get entity @s Health 1.0
execute as @e[tag=magic4_bullet] at @s run scoreboard players operation @e[tag=enemy,distance=..3] commandDamage = @s magicAttackBase
execute as @e[tag=magic4_bullet] at @s run scoreboard players operation @e[tag=enemy,distance=..3,tag=resist] commandDamage /= #3 cal
execute as @e[tag=magic4_bullet] at @s run particle minecraft:snowflake ~ ~0.5 ~ 0.3 0.3 0.3 0.12 3 force
execute as @e[tag=magic4_bullet] at @s run particle minecraft:block{block_state:"minecraft:ice"} ~ ~0.5 ~ 0.3 0.3 0.3 0.12 10 force
execute as @e[tag=magic4_bullet] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0.3 0.3 0.3 0.12 5 force

execute as @e[tag=magic4_bullet] at @s as @e[tag=enemy,distance=..3] run effect give @s minecraft:slowness 4 2 false
execute as @e[tag=magic4_bullet] at @s run teleport @s ^ ^ ^0.6 ~ ~
execute as @e[tag=magic4_bullet] at @s unless block ~ ~0.5 ~ #namespace:airs run kill @s


execute if entity @e[tag=magic4_bullet] run schedule function namespace:main/system/rod/magic/magic4_loop 1t replace


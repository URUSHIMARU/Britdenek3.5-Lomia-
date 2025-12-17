execute as @e[tag=magic6_bullet] at @s store result score @s magicAttackBase run data get entity @s Health 1.0
execute as @e[tag=magic6_bullet] at @s run scoreboard players operation @e[tag=enemy,distance=..3] commandDamage = @s magicAttackBase
execute as @e[tag=magic6_bullet] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.0 1 force
execute as @e[tag=magic6_bullet] at @s run particle minecraft:snowflake ~ ~0.5 ~ 0 0 0 0.12 1 force
execute as @e[tag=magic6_bullet] at @s run particle minecraft:block{block_state:"minecraft:ice"} ~ ~0.5 ~ 0 0 0 0.05 2 force

execute as @e[tag=magic6_bullet] at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 0.25 1.3

execute as @e[tag=magic6_bullet] at @s as @e[tag=enemy,distance=..3] run effect give @s slowness 5 2 false

execute as @e[tag=magic6_bullet] at @s run teleport @s ^ ^ ^1 ~ ~1
execute as @e[tag=magic6_bullet] at @s unless block ~ ~0.5 ~ #namespace:airs run kill @s
execute as @e[tag=magic6_bullet] at @s if entity @e[tag=enemy,distance=..2] run kill @s


execute if entity @e[tag=magic6_bullet] run schedule function namespace:main/system/rod/magic/magic6_loop 1t replace


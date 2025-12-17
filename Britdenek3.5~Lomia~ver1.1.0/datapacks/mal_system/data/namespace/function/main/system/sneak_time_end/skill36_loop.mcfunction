
execute as @e[tag=bullet,tag=skill36_bullet] at @s run particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.5 0.5 1 5 force
execute as @e[tag=bullet,tag=skill36_bullet] at @s run teleport @s ^ ^ ^0.9 ~ ~
execute as @e[tag=bullet,tag=skill36_bullet] at @s unless block ~ ~1 ~ #namespace:airs run kill @s
execute as @e[tag=bullet,tag=skill36_bullet] at @s store result score @s attackBase run data get entity @s Health 1.5
execute as @e[tag=bullet,tag=skill36_bullet] at @s run scoreboard players operation @e[tag=enemy,distance=..2] commandDamage = @s attackBase

execute if entity @e[tag=bullet,tag=skill36_bullet] run schedule function namespace:main/system/sneak_time_end/skill36_loop 1t replace


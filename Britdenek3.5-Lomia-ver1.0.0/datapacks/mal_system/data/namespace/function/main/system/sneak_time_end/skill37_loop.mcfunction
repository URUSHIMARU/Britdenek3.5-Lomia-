
execute as @e[tag=bullet,tag=skill37_bullet] at @s run particle minecraft:sweep_attack ~ ~1 ~ 0.8 0.8 0.8 1 5 force
execute as @e[tag=bullet,tag=skill37_bullet] at @s run teleport @s ^ ^ ^0.9 ~ ~
execute as @e[tag=bullet,tag=skill37_bullet] at @s unless block ~ ~1 ~ #namespace:airs run kill @s
execute as @e[tag=bullet,tag=skill37_bullet] at @s store result score @s attackBase run data get entity @s Health 1.5
execute as @e[tag=bullet,tag=skill37_bullet] at @s run scoreboard players operation @e[tag=enemy,distance=..3] commandDamage = @s attackBase
execute as @e[tag=bullet,tag=skill37_bullet] at @s run scoreboard players add @e[tag=bullet,tag=enemy,distance=..3] commandDamage 5

execute if entity @e[tag=bullet,tag=skill37_bullet] run schedule function namespace:main/system/sneak_time_end/skill37_loop 1t replace


execute as @e[tag=magic3_bullet] at @s run particle minecraft:flame ~ ~0.5 ~ 0.1 0.1 0.1 0.12 3 force
execute as @e[tag=magic3_bullet] at @s run particle minecraft:lava ~ ~0.5 ~ 0.1 0.1 0.1 0.12 3 force
execute as @e[tag=magic3_bullet] at @s run teleport @s ^ ^ ^1.5 ~ ~1

execute as @e[tag=magic3_bullet] at @s unless block ~ ~0.5 ~ #namespace:airs run tag @s add kill
execute as @e[tag=magic3_bullet] at @s if entity @e[tag=enemy,distance=..3] run tag @s add kill

execute as @e[tag=magic3_bullet,tag=kill] at @s as @e[tag=enemy,distance=..4] run data merge entity @s {Fire:100}
execute as @e[tag=magic3_bullet,tag=kill] at @s store result score @s magicAttackBase run data get entity @s Health 1.0
execute as @e[tag=magic3_bullet,tag=kill] at @s run scoreboard players operation @e[tag=enemy,distance=..4] commandDamage = @s magicAttackBase
execute as @e[tag=magic3_bullet,tag=kill] at @s run particle minecraft:explosion ~ ~ ~ 2 2 2 1 30 force
execute as @e[tag=magic3_bullet,tag=kill] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 3 0.8
execute as @e[tag=magic3_bullet,tag=kill] at @s run particle flame ~ ~ ~ 0.5 0.5 0.5 0.5 30 force
execute as @e[tag=magic3_bullet,tag=kill] at @s run kill @s

execute if entity @e[tag=magic3_bullet] run schedule function namespace:main/system/rod/magic/magic3_loop 1t replace


execute as @e[tag=magic1_bullet] at @s store result score @s magicAttackBase run data get entity @s Health 1.0
execute as @e[tag=magic1_bullet] at @s run scoreboard players operation @e[tag=enemy,distance=..3] commandDamage = @s magicAttackBase
execute as @e[tag=magic1_bullet] at @s run scoreboard players operation @e[tag=enemy,distance=..3,tag=resist] commandDamage /= #3 cal
execute as @e[tag=magic1_bullet] at @s run particle minecraft:flame ~ ~1.5 ~ 0.1 0.1 0.1 0.12 3 force
execute as @e[tag=magic1_bullet] at @s run particle minecraft:lava ~ ~1.5 ~ 0.1 0.1 0.1 0.12 1 force
execute as @e[tag=magic1_bullet] at @s run particle minecraft:flame ~ ~1.5 ~ 0.1 0.1 0.1 0 10 force

execute as @e[tag=magic1_bullet] at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 0.6 1.2
execute as @e[tag=magic1_bullet] at @s as @e[tag=enemy,distance=..3] run data merge entity @s {Fire:100s}
execute as @e[tag=magic1_bullet] at @s run teleport @s ^ ^ ^1 ~ ~1
execute as @e[tag=magic1_bullet] at @s unless block ~ ~1.5 ~ #namespace:airs run kill @s


execute if entity @e[tag=magic1_bullet] run schedule function namespace:main/system/rod/magic/magic1_loop 1t replace


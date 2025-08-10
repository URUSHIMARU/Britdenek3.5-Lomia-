execute as @a[scores={mant1=1..}] at @s as @e[tag=enemy,distance=..6] at @s run data merge entity @s {Fire:100s}
execute as @a[scores={mant1=1..}] at @s run scoreboard players operation @e[tag=enemy,distance=..6,tag=bullet] commandDamage = @s magicAttackBase
execute as @a[scores={mant1=1..}] at @s run scoreboard players operation @e[tag=enemy,distance=..6,tag=bullet] commandDamage /= #10 cal
execute as @a[scores={mant1=1..}] at @s run scoreboard players operation @e[tag=enemy,distance=..6,tag=bullet,tag=resist] commandDamage /= #3 cal


execute as @a[scores={mant1=1..}] at @s run particle minecraft:lava ~ ~0.5 ~ 0.1 0.1 0.1 0.12 1 force
execute as @a[scores={mant1=1..}] at @s run particle minecraft:flame ~ ~0.5 ~ 0.1 0.1 0.1 0.3 2 force
execute as @a[scores={mant1=1..}] at @s run particle minecraft:flame ~ ~0.5 ~ 0.5 0.5 0.5 0.05 2 force
execute as @a[scores={mant1=1..}] at @s run scoreboard players remove @s mant1 1

execute if entity @a[scores={mant1=1..}] run schedule function namespace:main/system/rod/magic/magic2_loop 1t replace


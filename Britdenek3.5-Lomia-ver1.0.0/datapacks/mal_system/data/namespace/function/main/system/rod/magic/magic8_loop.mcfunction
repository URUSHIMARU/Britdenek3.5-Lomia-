execute as @a[scores={mant3=1..}] at @s as @e[tag=enemy,distance=..6,tag=bullet] at @s run teleport @s ~ ~ ~ ~15 ~
execute as @a[scores={mant3=1..}] at @s as @e[type=arrow,distance=..6] at @s run data merge entity @s {Motion:[0d,1d,0d]}
execute as @a[scores={mant3=1..}] at @s as @e[type=splash_potion,distance=..6] at @s run data merge entity @s {Motion:[0d,1d,0d]}

execute as @a[scores={mant3=1..}] at @s run scoreboard players operation @e[tag=enemy,distance=..6,tag=bullet] commandDamage = @s magicAttackBase
execute as @a[scores={mant3=1..}] at @s run scoreboard players operation @e[tag=enemy,distance=..6,tag=bullet] commandDamage /= #10 cal
execute as @a[scores={mant3=1..}] at @s run scoreboard players operation @e[tag=enemy,distance=..6,tag=bullet,tag=resist] commandDamage /= #3 cal


execute as @a[scores={mant3=1..}] at @s run particle minecraft:sweep_attack ~ ~1 ~ 2 0.5 2 1 2 force
execute as @a[scores={mant3=1..}] at @s run particle minecraft:block{block_state:"minecraft:glass"} ~ ~0.5 ~ 2 0.5 2 0.05 2 force
execute as @a[scores={mant3=1..}] at @s run scoreboard players remove @s mant3 1

execute if entity @a[scores={mant3=1..}] run schedule function namespace:main/system/rod/magic/magic8_loop 1t replace


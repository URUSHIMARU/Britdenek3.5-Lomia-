execute as @a[scores={mant2=1..}] at @s as @e[tag=enemy,distance=..6] at @s run effect give @s wither 5 1 false
execute as @a[scores={mant2=1..}] at @s as @e[tag=enemy,distance=..6] at @s run effect give @s slowness 5 2 false
execute as @a[scores={mant2=1..}] at @s run scoreboard players operation @e[tag=enemy,distance=..6,tag=bullet] commandDamage = @s magicAttackBase
execute as @a[scores={mant2=1..}] at @s run scoreboard players operation @e[tag=enemy,distance=..6,tag=bullet] commandDamage /= #10 cal
execute as @a[scores={mant2=1..}] at @s run scoreboard players operation @e[tag=enemy,distance=..6,tag=bullet,tag=resist] commandDamage /= #3 cal


execute as @a[scores={mant2=1..}] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.12 1 force
execute as @a[scores={mant2=1..}] at @s run particle minecraft:snowflake ~ ~0.5 ~ 0.1 0.1 0.1 0.3 2 force
execute as @a[scores={mant2=1..}] at @s run particle minecraft:block{block_state:"minecraft:ice"} ~ ~0.5 ~ 0.5 0.5 0.5 0.05 2 force
execute as @a[scores={mant2=1..}] at @s run scoreboard players remove @s mant2 1

execute if entity @a[scores={mant2=1..}] run schedule function namespace:main/system/rod/magic/magic5_loop 1t replace


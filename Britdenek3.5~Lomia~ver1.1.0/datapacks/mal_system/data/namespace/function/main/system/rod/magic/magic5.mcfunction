execute if entity @s[level=..39] run return 0
scoreboard players set @s mant2 600
playsound minecraft:entity.breeze.idle_ground master @a ~ ~ ~ 2 1.2


particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.3 20 force
xp add @s -40 levels
schedule function namespace:main/system/rod/magic/magic5_loop 1t replace

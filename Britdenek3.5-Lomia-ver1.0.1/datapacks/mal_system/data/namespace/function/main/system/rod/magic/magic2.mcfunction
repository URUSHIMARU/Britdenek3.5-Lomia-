execute if entity @s[level=..34] run return 0
scoreboard players set @s mant1 600
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 0


particle minecraft:flame ~ ~1 ~ 0.1 0.1 0.1 0.3 20 force
xp add @s -35 levels
schedule function namespace:main/system/rod/magic/magic2_loop 1t replace

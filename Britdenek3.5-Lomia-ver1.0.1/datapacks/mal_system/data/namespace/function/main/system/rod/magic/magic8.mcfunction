execute if entity @s[level=..41] run return 0
scoreboard players set @s mant3 600
playsound minecraft:entity.breeze.idle_air master @a ~ ~ ~ 1 0.7


xp add @s -42 levels
schedule function namespace:main/system/rod/magic/magic8_loop 1t replace

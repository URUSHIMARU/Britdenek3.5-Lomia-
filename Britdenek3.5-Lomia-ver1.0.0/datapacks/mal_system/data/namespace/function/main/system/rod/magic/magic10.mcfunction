execute if entity @s[level=..49] run return 0
scoreboard players operation @s mant4 = @s magicAttackBase
scoreboard players operation @s mant4 *= #10 cal

playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.6 0.6
particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 1 30 force

xp add @s -50 levels
schedule function namespace:main/system/rod/magic/magic10_loop 1t replace

execute if entity @s[scores={commandDamage=..999}] as @s store result storage damage damage int 1 run scoreboard players get @s commandDamage
execute if entity @s[scores={commandDamage=..999}] run function namespace:main/system/root/normal_damage with storage minecraft:damage


execute if entity @s[scores={commandDamage=1..}] run scoreboard players remove @s commandDamage 1000
execute if entity @s[scores={commandDamage=1..}] run execute as @s store result storage damage damage int 1 run scoreboard players get @s commandDamage
execute if entity @s[scores={commandDamage=1..}] run function namespace:main/system/root/penetration_damage with storage minecraft:damage



scoreboard players operation @s mp += @s mpHealBase

execute if score @s mp matches 800.. run xp add @s[level=..99] 1 levels
execute if score @s mp matches 800.. run scoreboard players remove @s mp 800



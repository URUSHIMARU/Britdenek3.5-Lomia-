scoreboard players operation @s mant4 -= @s resist_damage
execute if entity @s[scores={mant4=..0}] run playsound minecraft:item.shield.break master @a ~ ~ ~ 0.5 0
execute if entity @s[scores={mant4=..0}] run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 1 30 force

execute if entity @s[scores={mant4=..0}] run effect clear @s resistance


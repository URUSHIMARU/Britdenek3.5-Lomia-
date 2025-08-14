
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 2
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.5 100 force
effect give @e[tag=enemy,distance=..40] minecraft:glowing 15 1 false

scoreboard players add @s[scores={skill2=..10}] skill2 1
execute if score @s skill2 matches 10 run advancement grant @s only namespace:skill/normal/skill2

xp add @s -2 levels

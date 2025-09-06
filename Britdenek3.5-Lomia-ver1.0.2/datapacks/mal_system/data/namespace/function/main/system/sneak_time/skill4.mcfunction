playsound minecraft:entity.horse.jump master @a ~ ~ ~ 1 1.2
effect give @s[tag=skill5] minecraft:resistance 1 5 false
particle minecraft:sweep_attack ~ ~0.1 ~ 0.8 0.2 0.8 0.1 50
tag @s add backStep
xp add @s -5 levels

scoreboard players add @s skill5 1
execute if score @s skill5 matches 30.. run advancement grant @s only namespace:skill/normal/skill5
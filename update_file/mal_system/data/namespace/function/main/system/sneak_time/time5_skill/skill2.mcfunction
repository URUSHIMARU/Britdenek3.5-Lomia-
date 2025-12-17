
playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 2 1.2
particle minecraft:heart ~ ~1.5 ~ 0.5 0.5 0.5 0 2 force
effect give @s minecraft:instant_health 1 0 true

scoreboard players add @s[scores={skill3=..10}] skill3 1
execute if score @s skill3 matches 10 run advancement grant @s only namespace:skill/normal/skill3

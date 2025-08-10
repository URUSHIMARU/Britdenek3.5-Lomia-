
effect give @s minecraft:speed 5 3 false
particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.2 10 force
scoreboard players add @s[scores={skill14=..50}] skill14 1
execute as @s[scores={skill14=50}] run advancement grant @s only namespace:skill/normal/skill14

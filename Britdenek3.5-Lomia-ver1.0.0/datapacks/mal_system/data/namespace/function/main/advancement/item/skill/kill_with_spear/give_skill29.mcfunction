scoreboard players set @s result 0
execute at @e[tag=enemy,distance=..10] run scoreboard players add @s result 1
execute if score @s result matches ..4 run return fail

advancement grant @s only namespace:skill/normal/skill29
scoreboard players add @s skill32 1

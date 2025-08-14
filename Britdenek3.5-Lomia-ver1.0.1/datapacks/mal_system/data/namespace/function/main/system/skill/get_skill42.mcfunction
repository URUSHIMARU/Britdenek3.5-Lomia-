
scoreboard players add @s skill42 1
execute if entity @s[scores={skill42=5..},advancements={namespace:skill/normal/skill3=true,namespace:skill/normal/skill42=false}] run advancement grant @s only namespace:skill/normal/skill42

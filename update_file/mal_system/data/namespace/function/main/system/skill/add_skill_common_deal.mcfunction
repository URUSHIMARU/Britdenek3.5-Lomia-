scoreboard players add @s skillCount 1
execute if score @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill1001=false}] skillCount matches 10.. run advancement grant @s only namespace:skill/normal/skill1001
execute if score @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill1002=false}] skillCount matches 20.. run advancement grant @s only namespace:skill/normal/skill1002
execute if score @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill1003=false}] skillCount matches 30.. run advancement grant @s only namespace:skill/normal/skill1003


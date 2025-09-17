effect give @s minecraft:regeneration 4 1 false
particle minecraft:glow ~ ~1 ~ 0.3 0.3 0.3 1 10 force

execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill9=true,namespace:skill/normal/skill10=false}] run function namespace:main/system/advancement/skill/give_skill10

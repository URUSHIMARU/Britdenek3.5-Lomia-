
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill6=false}] run function namespace:main/system/shield_damage/give_skill6
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill6=true,namespace:skill/normal/skill7=false},tag=skill6] run function namespace:main/system/shield_damage/give_skill7

execute as @s[tag=skill8,level=5..,scores={sneak=1..}] at @s run function namespace:main/system/shield_damage/skill/skill8
scoreboard players set @s[scores={shield_damage=1..}] shield_damage 0


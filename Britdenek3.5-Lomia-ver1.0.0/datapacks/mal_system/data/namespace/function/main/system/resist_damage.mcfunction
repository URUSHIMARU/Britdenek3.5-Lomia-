
execute as @s[scores={mant4=1..}] at @s run function namespace:main/system/resist_damage/magic10
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill17=true,namespace:skill/normal/skill18=false},tag=skill17,scores={skill18_timer=1..}] run function namespace:main/system/resist_damage/give_skill18

scoreboard players set @s resist_damage 0


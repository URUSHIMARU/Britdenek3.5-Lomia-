execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill9=false},scores={food=..1}] run function namespace:main/system/take_damage/give_skill9
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill17=false},tag=skill15,scores={take_damage=150}] run function namespace:main/system/take_damage/give_skill17

execute if entity @s[tag=skill13] run function namespace:main/system/take_damage/skill13
execute if entity @s[tag=skill14,tag=day_first_skill14,scores={Health=..10}] run function namespace:main/system/take_damage/skill14
scoreboard players set @s take_damage 0


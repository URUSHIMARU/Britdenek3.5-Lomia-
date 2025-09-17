

execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill13=false}] run function namespace:main/system/death/give_skill13
scoreboard players set @s death 0

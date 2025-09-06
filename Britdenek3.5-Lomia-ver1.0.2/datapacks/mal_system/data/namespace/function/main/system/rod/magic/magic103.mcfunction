execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill33=false}] run tellraw @s {"translate":"system.skill.get.error2"}
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill33=false}] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.5 2
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill33=false}] run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.01 10 force
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill38=true}] run tellraw @s {"translate":"system.skill.get.error1"}
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill38=true}] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.5 2
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill38=true}] run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.01 10 force
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill33=true,namespace:skill/normal/skill38=false}] run tellraw @s {"translate":"system.skill.get.success"}
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill33=true,namespace:skill/normal/skill38=false}] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill33=true,namespace:skill/normal/skill38=false}] run advancement grant @s only namespace:skill/normal/skill38




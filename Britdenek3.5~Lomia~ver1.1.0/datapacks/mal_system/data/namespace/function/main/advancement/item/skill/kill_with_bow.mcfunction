execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill21=false}] run function namespace:main/advancement/item/skill/kill_with_bow/give_skill21
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill22=true,namespace:skill/normal/skill23=false}] run function namespace:main/advancement/item/skill/kill_with_bow/give_skill23
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill23=true,namespace:skill/normal/skill24=false}] run function namespace:main/advancement/item/skill/kill_with_bow/give_skill24

execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill26=false}] run function namespace:main/advancement/item/skill/kill_with_bow/give_skill26

advancement revoke @s only namespace:all/item/skill/kill_with_bow


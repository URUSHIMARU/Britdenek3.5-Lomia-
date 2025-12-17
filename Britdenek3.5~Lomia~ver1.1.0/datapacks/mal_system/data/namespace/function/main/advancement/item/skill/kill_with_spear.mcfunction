execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill27=false}] run function namespace:main/advancement/item/skill/kill_with_spear/give_skill27


execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill27=true,namespace:skill/normal/skill28=false}] run function namespace:main/advancement/item/skill/kill_with_spear/give_skill28
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill28=true,namespace:skill/normal/skill31=false}] run function namespace:main/advancement/item/skill/kill_with_spear/give_skill31
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill27=true,namespace:skill/normal/skill29=false}] run function namespace:main/advancement/item/skill/kill_with_spear/give_skill29
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill30=false},scores={sneak_time=1..},tag=skill29] run function namespace:main/advancement/item/skill/kill_with_spear/give_skill30

execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill6=true,namespace:skill/normal/skill32=false},scores={skill32=3..}] run function namespace:main/advancement/item/skill/kill_with_spear/give_skill32

advancement revoke @s only namespace:all/item/skill/kill_with_spear


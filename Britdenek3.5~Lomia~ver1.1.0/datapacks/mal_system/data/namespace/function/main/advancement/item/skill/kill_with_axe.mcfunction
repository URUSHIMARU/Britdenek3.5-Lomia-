execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill15=false}] run function namespace:main/advancement/item/skill/kill_with_axe/give_skill15

execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill16=false},tag=skill15] run function namespace:main/advancement/item/skill/kill_with_axe/give_skill16

execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill19=false},tag=skill16] run function namespace:main/advancement/item/skill/kill_with_axe/give_skill19

execute if entity @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill20=false},tag=skill19] if entity @s[scores={Health=..7},nbt={SelectedItem:{components:{"minecraft:custom_data":{axe:true}}}}] run function namespace:main/advancement/item/skill/kill_with_axe/give_skill20

advancement revoke @s only namespace:all/item/skill/kill_with_axe


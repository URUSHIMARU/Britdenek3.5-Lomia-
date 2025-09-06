execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill33=false}] run function namespace:main/advancement/item/skill/kill_with_sword/give_skill33
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill33=true,namespace:skill/normal/skill36=false},tag=skill33] run function namespace:main/advancement/item/skill/kill_with_sword/give_skill36
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill33=true,namespace:skill/normal/skill39=false},nbt={equipment:{offhand:{components:{"minecraft:custom_data":{sword:true}}}}}] run function namespace:main/advancement/item/skill/kill_with_sword/give_skill39
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill39=true,namespace:skill/normal/skill40=false},nbt={equipment:{offhand:{components:{"minecraft:custom_data":{sword:true}}}}},tag=skill39] run function namespace:main/advancement/item/skill/kill_with_sword/give_skill40
execute as @s[advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill40=true,namespace:skill/normal/skill41=false},nbt={equipment:{offhand:{components:{"minecraft:custom_data":{sword:true}}}}},tag=skill39] run function namespace:main/advancement/item/skill/kill_with_sword/give_skill41

advancement revoke @s only namespace:all/item/skill/kill_with_sword


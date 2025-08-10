tellraw @s[tag=vampire] {"translate":"system.skill.remove.vampire.success"}
tag @s remove vampire
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 1 30 force

advancement revoke @s only namespace:all/item/potion/phantom_blood

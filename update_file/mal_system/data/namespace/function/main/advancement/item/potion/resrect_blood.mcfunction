tellraw @s[tag=!vampire] {"translate":"system.skill.get.vampire.success"}
tag @s add vampire
particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 1 30 force
advancement grant @s only namespace:skill/normal/skill43
advancement revoke @s only namespace:all/item/potion/resrect_blood


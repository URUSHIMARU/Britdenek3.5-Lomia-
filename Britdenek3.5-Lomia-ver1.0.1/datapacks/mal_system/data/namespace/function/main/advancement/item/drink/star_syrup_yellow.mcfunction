effect give @s minecraft:strength 90 4 false
effect give @s minecraft:speed 90 4 false
effect give @s minecraft:jump_boost 90 1 false
effect give @s minecraft:regeneration 90 2 false
effect give @s minecraft:haste 90 10 false

tag @s add star_syrup
scoreboard players add @s star_syrup 2
function namespace:main/system/cal_param

advancement revoke @s only namespace:all/item/drink/star_syrup_yellow

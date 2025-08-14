effect give @s minecraft:strength 120 2 false
effect give @s minecraft:speed 120 2 false
effect give @s minecraft:jump_boost 120 0 false
effect give @s minecraft:regeneration 120 1 false
effect give @s minecraft:water_breathing 120 1 false
effect give @s minecraft:fire_resistance 120 1 false
effect give @s minecraft:dolphins_grace 120 1 false
effect give @s minecraft:conduit_power 120 1 false
effect give @s minecraft:haste 120 6 false

tag @s add star_syrup
scoreboard players add @s star_syrup 1
function namespace:main/system/cal_param

advancement revoke @s only namespace:all/item/drink/star_syrup_blue

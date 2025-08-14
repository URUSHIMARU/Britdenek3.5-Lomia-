function namespace:main/system/cal_param
item replace entity @s player.cursor from entity @s inventory.2
execute if score @s getSkill matches ..2 run loot replace entity @s inventory.2 loot namespace:item/inventory/null_2
execute if score @s getSkill matches 3.. run loot replace entity @s inventory.2 loot namespace:item/inventory/empty_skill_2
execute if score @s skillNum3 matches 1.. run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 0.3 1.5
scoreboard players set @s skillNum3 0


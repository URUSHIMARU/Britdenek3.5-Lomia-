function namespace:main/system/cal_param
item replace entity @s player.cursor from entity @s inventory.4
execute if score @s getSkill matches ..4 run loot replace entity @s inventory.4 loot namespace:item/inventory/null_4
execute if score @s getSkill matches 5.. run loot replace entity @s inventory.4 loot namespace:item/inventory/empty_skill_4
execute if score @s skillNum5 matches 1.. run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 0.3 1.5
scoreboard players set @s skillNum5 0

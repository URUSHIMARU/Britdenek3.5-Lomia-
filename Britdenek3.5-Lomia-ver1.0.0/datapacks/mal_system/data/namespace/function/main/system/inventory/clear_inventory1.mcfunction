function namespace:main/system/cal_param
item replace entity @s player.cursor from entity @s inventory.1
loot replace entity @s inventory.1 loot namespace:item/inventory/empty_skill_1
execute if score @s skillNum2 matches 1.. run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 0.3 1.5
scoreboard players set @s skillNum2 0


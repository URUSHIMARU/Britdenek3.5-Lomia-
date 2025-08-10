function namespace:main/system/cal_param
item replace entity @s player.cursor from entity @s inventory.0
loot replace entity @s inventory.0 loot namespace:item/inventory/empty_skill_0
execute if score @s skillNum1 matches 1.. run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 0.3 1.5
scoreboard players set @s skillNum1 0


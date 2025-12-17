item replace entity @s player.cursor from entity @s enderchest.1
execute if score @s enderPage matches 1 run loot replace entity @s enderchest.1 loot namespace:item/ender_chest/num1
execute if score @s enderPage matches 2 run loot replace entity @s enderchest.1 loot namespace:item/ender_chest/num2
execute if score @s enderPage matches 3 run loot replace entity @s enderchest.1 loot namespace:item/ender_chest/num3


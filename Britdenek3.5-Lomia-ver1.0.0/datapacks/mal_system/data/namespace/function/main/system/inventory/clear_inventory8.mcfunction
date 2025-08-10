execute store result score @s result run data get entity @s Inventory[{Slot:17b}].components."minecraft:custom_data".value 1.0
execute if score @s result matches -1 run item replace entity @s player.cursor from entity @s inventory.8
execute if score @s result matches -1 run loot replace entity @s inventory.8 loot namespace:item/inventory/empty_money_8
execute if score @s result matches -1 run return 0

execute store result score @s result2 run data get entity @s Inventory[{Slot:17b}].count 1.0
scoreboard players operation @s result *= @s result2

scoreboard players operation @s getMoney = @s result
scoreboard players operation @s getMoney /= #10 cal
item replace entity @s player.cursor with air
loot replace entity @s inventory.8 loot namespace:item/inventory/empty_money_8






#親
#execute unless entity @s[nbt={Inventory:[{Slot:14b,components:{"minecraft:custom_data":{player_inventory: "empty_neckless"}}}]}] run
function namespace:main/system/cal_param
execute store result score @s result run clear @s minecraft:light_gray_stained_glass[minecraft:custom_data~{slot_number: 5b,species:"inventory_function"}] 0

#result 0:インベントリー検知アイテムプレイヤーカーソルにない場合  1:インベントリー検知アイテムプレイヤーカーソルにある場合
#インベントリ検知アイテム：カーソルにあり　スロットに正規アイテムあり
execute if entity @s[nbt={Inventory:[{Slot:14b,components:{"minecraft:custom_data":{slot_number: 5b}}}]}] if score @s result matches 1 run item replace entity @s player.cursor with air
#インベントリ検知アイテム：カーソルにあり スロットに正規アイテム：無し
execute unless entity @s[nbt={Inventory:[{Slot:14b,components:{"minecraft:custom_data":{slot_number: 5b}}}]}] if score @s result matches 1 run function namespace:main/system/inventory/clear_loot/clear_neckless1
execute if score @s result matches 1 run return 0

#インベントリ検知アイテム：カーソルになし スロットに正規アイテムあり
execute if entity @s[nbt={Inventory:[{Slot:14b,components:{"minecraft:custom_data":{slot_number: 5b}}}]}] if score @s result matches 0 run return 0
scoreboard players set @s result 0
execute if entity @s[nbt={Inventory:[{Slot:14b}]}] run scoreboard players set @s result 1

#result 0:スロットにアイテムが無い 1:スロットにアイテムがある場
execute if score @s result matches 0 run loot replace entity @s inventory.5 loot namespace:item/inventory/empty_neckless_5
execute if score @s result matches 0 run return 0

#execute if score @s result matches 1 run item replace entity @s enderchest.7 from entity @s inventory.5
#execute if score @s result matches 1 run item replace entity @s inventory.5 from entity @s player.cursor
#execute if score @s result matches 1 run item replace entity @s player.cursor from entity @s enderchest.7
#execute if score @s result matches 1 run loot replace entity @s enderchest.7 loot namespace:item/ender_chest/null

item replace entity @s enderchest.7 from entity @s inventory.5
item replace entity @s inventory.5 from entity @s player.cursor
item replace entity @s player.cursor from entity @s enderchest.7
loot replace entity @s enderchest.7 loot namespace:item/ender_chest/null




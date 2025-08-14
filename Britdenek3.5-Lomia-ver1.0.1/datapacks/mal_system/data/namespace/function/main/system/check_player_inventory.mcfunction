
execute unless entity @s[nbt={Inventory:[{Slot:9b,components:{"minecraft:custom_data":{species:"inventory_function","player_skill": true}}}]}] run function namespace:main/system/inventory/clear_inventory0
execute unless entity @s[nbt={Inventory:[{Slot:10b,components:{"minecraft:custom_data":{species:"inventory_function","player_skill": true}}}]}] run function namespace:main/system/inventory/clear_inventory1
execute unless entity @s[nbt={Inventory:[{Slot:11b,components:{"minecraft:custom_data":{species:"inventory_function","player_skill": true}}}]}] run function namespace:main/system/inventory/clear_inventory2
execute unless entity @s[nbt={Inventory:[{Slot:12b,components:{"minecraft:custom_data":{species:"inventory_function","player_skill": true}}}]}] run function namespace:main/system/inventory/clear_inventory3
execute unless entity @s[nbt={Inventory:[{Slot:13b,components:{"minecraft:custom_data":{species:"inventory_function","player_skill": true}}}]}] run function namespace:main/system/inventory/clear_inventory4
execute unless entity @s[nbt={Inventory:[{Slot:14b,components:{"minecraft:custom_data":{player_inventory: "empty_neckless"}}}]}] run function namespace:main/system/inventory/clear_inventory5
execute unless entity @s[nbt={Inventory:[{Slot:15b,components:{"minecraft:custom_data":{player_inventory: "empty_ring"}}}]}] run function namespace:main/system/inventory/clear_inventory6
execute unless entity @s[nbt={Inventory:[{Slot:16b,components:{"minecraft:custom_data":{species:"inventory_function",slot_number:7b}}}]}] run function namespace:main/system/inventory/clear_inventory7
execute unless entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_data":{species:"inventory_function",slot_number:8b}}}]}] run function namespace:main/system/inventory/clear_inventory8

function namespace:main/system/skill/remove_all_skill
execute store result storage skill_slot skillNum int 1.0 run scoreboard players get @s skillNum1
execute if score @s skillNum1 matches 1.. store result storage skill_slot slot int 0 run scoreboard players get #0 cal
execute if score @s skillNum1 matches 1.. run function namespace:main/system/ender_chest/root_inventory_effect/set_tag with storage minecraft:skill_slot

execute store result storage skill_slot skillNum int 1.0 run scoreboard players get @s skillNum2
execute if score @s skillNum2 matches 1.. store result storage skill_slot slot int -1 run scoreboard players get #-1 cal
execute if score @s skillNum2 matches 1.. run function namespace:main/system/ender_chest/root_inventory_effect/set_tag with storage minecraft:skill_slot

execute store result storage skill_slot skillNum int 1.0 run scoreboard players get @s skillNum3
execute if score @s skillNum3 matches 1.. store result storage skill_slot slot int 1 run scoreboard players get #2 cal
execute if score @s skillNum3 matches 1.. run function namespace:main/system/ender_chest/root_inventory_effect/set_tag with storage minecraft:skill_slot

execute store result storage skill_slot skillNum int 1.0 run scoreboard players get @s skillNum4
execute if score @s skillNum4 matches 1.. store result storage skill_slot slot int 1 run scoreboard players get #3 cal
execute if score @s skillNum4 matches 1.. run function namespace:main/system/ender_chest/root_inventory_effect/set_tag with storage minecraft:skill_slot

execute store result storage skill_slot skillNum int 1.0 run scoreboard players get @s skillNum5
execute if score @s skillNum5 matches 1.. store result storage skill_slot slot int 1 run scoreboard players get #4 cal
execute if score @s skillNum5 matches 1.. run function namespace:main/system/ender_chest/root_inventory_effect/set_tag with storage minecraft:skill_slot


execute if entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s hotbar.0 with air
execute if entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s hotbar.1 with air
execute if entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s hotbar.2 with air
execute if entity @s[nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s hotbar.3 with air
execute if entity @s[nbt={Inventory:[{Slot:4b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s hotbar.4 with air
execute if entity @s[nbt={Inventory:[{Slot:5b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s hotbar.5 with air
execute if entity @s[nbt={Inventory:[{Slot:6b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s hotbar.6 with air
execute if entity @s[nbt={Inventory:[{Slot:7b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s hotbar.7 with air
execute if entity @s[nbt={Inventory:[{Slot:8b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s hotbar.8 with air


execute if entity @s[nbt={Inventory:[{Slot:18b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.9 with air
execute if entity @s[nbt={Inventory:[{Slot:19b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.10 with air
execute if entity @s[nbt={Inventory:[{Slot:20b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.11 with air
execute if entity @s[nbt={Inventory:[{Slot:21b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.12 with air
execute if entity @s[nbt={Inventory:[{Slot:22b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.13 with air
execute if entity @s[nbt={Inventory:[{Slot:23b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.14 with air
execute if entity @s[nbt={Inventory:[{Slot:24b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.15 with air
execute if entity @s[nbt={Inventory:[{Slot:25b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.16 with air
execute if entity @s[nbt={Inventory:[{Slot:26b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.17 with air

execute if entity @s[nbt={Inventory:[{Slot:27b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.18 with air
execute if entity @s[nbt={Inventory:[{Slot:28b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.19 with air
execute if entity @s[nbt={Inventory:[{Slot:29b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.20 with air
execute if entity @s[nbt={Inventory:[{Slot:30b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.21 with air
execute if entity @s[nbt={Inventory:[{Slot:31b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.22 with air
execute if entity @s[nbt={Inventory:[{Slot:32b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.23 with air
execute if entity @s[nbt={Inventory:[{Slot:33b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.24 with air
execute if entity @s[nbt={Inventory:[{Slot:34b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.25 with air
execute if entity @s[nbt={Inventory:[{Slot:35b,components:{"minecraft:custom_data":{species:"inventory_function"}}}]}] run item replace entity @s inventory.26 with air

execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{species:"inventory_function"}}}}}] run item replace entity @s weapon.offhand with air

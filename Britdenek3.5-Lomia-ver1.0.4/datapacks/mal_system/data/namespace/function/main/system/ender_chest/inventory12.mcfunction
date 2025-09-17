playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 0.5 1
item replace entity @s player.cursor from entity @s enderchest.12
loot replace entity @s enderchest.12 loot namespace:item/ender_chest/skill_null
execute if score @s enderPage matches 1 run function namespace:main/system/ender_chest/root_inventory_effect/check_skill {"skillNum":4,enderSlot:12}
execute if score @s enderPage matches 2 run function namespace:main/system/ender_chest/root_inventory_effect/check_skill {"skillNum":22,enderSlot:12}
execute if score @s enderPage matches 3 run function namespace:main/system/ender_chest/root_inventory_effect/check_skill {"skillNum":40,enderSlot:12}
playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 0.5 1
item replace entity @s player.cursor from entity @s enderchest.15
loot replace entity @s enderchest.15 loot namespace:item/ender_chest/skill_null
execute if score @s enderPage matches 1 run function namespace:main/system/ender_chest/root_inventory_effect/check_skill {"skillNum":7,enderSlot:15}
execute if score @s enderPage matches 2 run function namespace:main/system/ender_chest/root_inventory_effect/check_skill {"skillNum":25,enderSlot:15}
execute if score @s enderPage matches 3 run function namespace:main/system/ender_chest/root_inventory_effect/check_skill {"skillNum":43,enderSlot:15}
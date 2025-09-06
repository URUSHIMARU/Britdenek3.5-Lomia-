playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 0.5 1
item replace entity @s player.cursor from entity @s enderchest.9
loot replace entity @s enderchest.9 loot namespace:item/ender_chest/skill_null
execute if score @s enderPage matches 1 run function namespace:main/system/ender_chest/root_inventory_effect/check_skill {"skillNum":1,enderSlot:9}
execute if score @s enderPage matches 2 run function namespace:main/system/ender_chest/root_inventory_effect/check_skill {"skillNum":19,enderSlot:9}
execute if score @s enderPage matches 3 run function namespace:main/system/ender_chest/root_inventory_effect/check_skill {"skillNum":37,enderSlot:9}
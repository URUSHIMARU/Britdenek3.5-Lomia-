$tag @s add skill$(skillNum)
$loot replace entity @s inventory.$(slot) loot namespace:item/inventory/skill$(skillNum)
#playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 0.5 1




$execute if entity @s[advancements={namespace:skill/normal/skill$(skillNum)=false}] run return 0
$execute if entity @s[tag=!skill$(skillNum)] run function namespace:main/system/ender_chest/root_inventory_effect/set_skill_score {"skillNum":$(skillNum)}
$loot replace entity @s enderchest.$(enderSlot) loot namespace:item/ender_chest/skill$(skillNum)

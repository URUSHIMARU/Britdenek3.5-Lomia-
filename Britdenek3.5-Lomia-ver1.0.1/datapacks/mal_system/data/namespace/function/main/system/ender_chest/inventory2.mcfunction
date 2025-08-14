execute as @s at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.2 1
item replace entity @s player.cursor from entity @s enderchest.2
loot replace entity @s enderchest.2 loot namespace:item/ender_chest/right
scoreboard players add @s enderPage 1
execute if score @s enderPage matches 4.. run scoreboard players set @s enderPage 1

function namespace:main/system/skill/update_enderchest

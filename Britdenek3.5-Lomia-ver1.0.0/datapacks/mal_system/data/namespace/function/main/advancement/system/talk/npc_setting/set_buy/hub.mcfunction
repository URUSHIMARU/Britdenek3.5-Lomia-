execute store result storage score score.score1 int 1.0 run scoreboard players get @s result2

function namespace:main/advancement/system/talk/npc_setting/set_buy/get_item_information with storage minecraft:score score

scoreboard players add @s result2 1
execute if score @s result >= @s result2 run function namespace:main/advancement/system/talk/npc_setting/set_buy/hub

#スロットマシーン1稼働中
execute if score #slot1_start lomia_gambling matches 1.. run function namespace:main/city/lomia/mini_game/slot/slot1_loop

#スロットマシーン2稼働中
execute if score #slot2_start lomia_gambling matches 1.. run function namespace:main/city/lomia/mini_game/slot/slot2_loop

#スロットマシーン景品
execute if score #slot1 result matches 1 run schedule function namespace:main/city/lomia/mini_game/slot/glow_false1 1s replace
execute if score #slot1 result matches 1.. run execute positioned -408 94 884 run loot spawn ~ ~ ~ loot namespace:random/gambling/green_coin
execute if score #slot2 result matches 1.. run execute positioned -408 94 884 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 2
execute if score #slot1 result matches 1.. run scoreboard players remove #slot1 result 1

execute if score #slot2 result matches 1 run schedule function namespace:main/city/lomia/mini_game/slot/glow_false2 1s replace
execute if score #slot2 result matches 1.. run execute positioned -413 94 884 run loot spawn ~ ~ ~ loot namespace:random/gambling/green_coin
execute if score #slot2 result matches 1.. run execute positioned -413 94 884 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 2
execute if score #slot2 result matches 1.. run scoreboard players remove #slot2 result 1


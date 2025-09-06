function namespace:main/city/illusion_arena/set_book/book2
kill @e[tag=npc]
scoreboard players set #main_storyline event 2
#オートマトン・ファーマー
execute positioned -454 92 904 run function namespace:main/entity_model/npc/lomia/npc2
execute as @e[tag=npc2] at @s run teleport @s ~ ~ ~ 90 0
#長老
execute positioned -450 93 910 run function namespace:main/entity_model/npc/lomia/npc16
execute as @e[tag=npc16] at @s run teleport @s ~ ~ ~ 0 0
#闇商人
execute positioned -319 92 961 run function namespace:main/entity_model/npc/lomia/npc15
#鍛冶屋
execute positioned -419 92 915 run function namespace:main/entity_model/npc/lomia/npc14
execute as @e[tag=npc14] at @s run teleport @s ~ ~ ~ -90 0
#宿の店主
execute positioned -433 93 882 run function namespace:main/entity_model/npc/lomia/npc13
execute as @e[tag=npc13] at @s run teleport @s ~ ~ ~ -90 0
#魔道具屋
execute positioned -402 92 910 run function namespace:main/entity_model/npc/lomia/npc21

#オートマトンオーナー
execute positioned -396 92 891 run function namespace:main/entity_model/npc/lomia/npc8
execute as @e[tag=npc8] at @s run teleport @s ~ ~0.4 ~ -90 0
#ルイーサ
execute positioned -391 92 935 run function namespace:main/entity_model/npc/lomia/npc11
execute as @e[tag=npc11] at @s run teleport @s ~ ~ ~ -145 0
#ハヤテ
execute positioned -387 92 876 run function namespace:main/entity_model/npc/lomia/npc12
execute as @e[tag=npc12] at @s run teleport @s ~ ~ ~ -90 0
#アスラン
execute positioned -403 93 939 run function namespace:main/entity_model/npc/lomia/npc19
execute as @e[tag=npc19] at @s run teleport @s ~ ~ ~ -90 0



function namespace:main/city/illusion_arena/set_book/book5
kill @e[tag=npc]
scoreboard players set #main_storyline event 5
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

#ナンナ
execute positioned -434 93 892 run function namespace:main/entity_model/npc/lomia/npc17
execute as @e[tag=npc17] at @s run teleport @s ~ ~ ~ -180 0
#エレナ
execute positioned -442 93 897 run function namespace:main/entity_model/npc/lomia/npc18
execute as @e[tag=npc18] at @s run teleport @s ~ ~ ~ 90 0
#鍛冶屋オートマトン
setblock -413 92 911 anvil
execute positioned -419 92 913 run function namespace:main/entity_model/npc/lomia/npc3
execute as @e[tag=npc3] at @s run teleport @s ~ ~ ~ -90 0
#オートマトンディラー
execute positioned -405 92 888 run function namespace:main/entity_model/npc/lomia/npc4
execute as @e[tag=npc4] at @s run teleport @s ~ ~ ~ -90 0
#オートマトンナイト
execute positioned -366 92 926 run function namespace:main/entity_model/npc/lomia/npc5
execute as @e[tag=npc5] at @s run teleport @s ~ ~0.4 ~ 180 0

#ピサロ
execute positioned -450 93 914 run function namespace:main/entity_model/npc/lomia/npc22
execute as @e[tag=npc22] at @s run teleport @s ~ ~ ~ 180 0
#オートマトントレーダー
execute positioned -377 92 940 run function namespace:main/entity_model/npc/lomia/npc6
execute as @e[tag=npc6] at @s run teleport @s ~ ~0.4 ~ 90 0

#オートマトントレーダー2
execute positioned -377 92 906 run function namespace:main/entity_model/npc/lomia/npc7
execute as @e[tag=npc7] at @s run teleport @s ~ ~0.4 ~ 90 0
#オートマトンコック
execute positioned -377 92 946 run function namespace:main/entity_model/npc/lomia/npc1
execute as @e[tag=npc1] at @s run teleport @s ~ ~0.4 ~ 90 0




#長老ダミー
execute positioned -296 101 907 run function namespace:main/entity_model/npc/lomia/dummy/npc16
execute as @e[tag=npc16_dummy] at @s run teleport @s ~ ~ ~ 90 0
#鍛冶屋ダミー
execute positioned -299 99 936 run function namespace:main/entity_model/npc/lomia/dummy/npc14
execute as @e[tag=npc14_dummy] at @s run teleport @s ~ ~ ~ 90 0
#宿の店主
execute positioned -296 101 951 run function namespace:main/entity_model/npc/lomia/dummy/npc13
execute as @e[tag=npc13_dummy] at @s run teleport @s ~ ~ ~ 135 0
#ナンナ
execute positioned -317 99 947 run function namespace:main/entity_model/npc/lomia/dummy/npc17
execute as @e[tag=npc17_dummy] at @s run teleport @s ~ ~ ~ 0 0
#アスラン
execute positioned -338 105 956 run function namespace:main/entity_model/npc/lomia/dummy/npc19
execute as @e[tag=npc19_dummy] at @s run teleport @s ~ ~ ~ 0 0
#ピサロ
execute positioned -353 101 946 run function namespace:main/entity_model/npc/lomia/dummy/npc22
execute as @e[tag=npc22_dummy] at @s run teleport @s ~ ~ ~ -117 0






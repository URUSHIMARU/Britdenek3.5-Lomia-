#1: オートマトン・コック
#2: オートマトン・ファーマー
#3: オートマトン・ブラックスミス
#4: オートマトン・ディラー
#5: オートマトン・ナイト
#6: オートマトン・トレーダー
#7: オートマトン・トレーダー
#8: オートマトン・ディーラー
#9: オートマトン・ディーラー
#10:オートマトン・ナイト
##11:ルイーサ
#12:ハヤテ
#13:ナヴ(宿屋)
#14:ローガン(鍛冶屋)
#15:???(闇商人)
#16:ジョゼ(村長)
#17:ナンナ(黒人メ店員)
#18:エレナ(茶髪の店員)
#19:アスラン
#20:アルバス(牧師)
#21:リガン(魔法屋)
#22:ピサロ(高額商人)
function namespace:main/city/illusion_arena/set_book/book1
scoreboard players set #main_storyline event 0
#オートマトン・ファーマー
execute positioned -454 92 904 run function namespace:main/entity_model/npc/lomia/npc2
execute as @e[tag=npc2] at @s run teleport @s ~ ~ ~ 90 0
#長老
execute positioned -398 92 918 run function namespace:main/entity_model/npc/lomia/npc16
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




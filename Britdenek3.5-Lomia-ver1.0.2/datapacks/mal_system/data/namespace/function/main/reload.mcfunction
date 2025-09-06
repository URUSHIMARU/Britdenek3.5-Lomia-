#ボスデスポーン
execute if entity @e[tag=boss] run function namespace:main/reload/bosskill

#スコアリスト更新
function namespace:main/reload/scorelist

#ゲームルール
gamerule mobGriefing false
gamerule doMobSpawning false
gamerule doFireTick false
gamerule keepInventory true
gamerule showDeathMessages false
gamerule spawnRadius 0


scoreboard players add #difficulty difficulty 0

#ボスデスポーン
execute if entity @e[tag=boss] run function namespace:main/reload/bosskill

#スコアリスト更新
function namespace:main/reload/scorelist

#ゲームルール
gamerule mob_griefing false
gamerule spawn_mobs false
gamerule fire_spread_radius_around_player 0
gamerule keep_inventory true
gamerule show_death_messages false
gamerule respawn_radius 0

#gamerule mobGriefing false
#gamerule doMobSpawning false
#gamerule doFireTick false
#gamerule keepInventory true
#gamerule showDeathMessages false
#gamerule spawnRadius 0

#マルリンク対応確認
#execute if score #mal_shooter_mal_link mal_link matches 1 run

scoreboard players add #difficulty difficulty 0

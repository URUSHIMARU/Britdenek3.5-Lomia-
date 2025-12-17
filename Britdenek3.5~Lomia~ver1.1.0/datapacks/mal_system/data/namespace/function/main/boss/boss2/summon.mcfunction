kill @e[tag=boss2shot]
kill @e[tag=boss2egg]
kill @e[tag=boss2]
function namespace:main/entity_model/boss/boss2/boss2_body


scoreboard players set @e[tag=boss2,limit=1] bossmove 1
scoreboard players set @e[tag=boss2,limit=1] motion 0
scoreboard players set @e[tag=boss2] motion2 0

#HP
scoreboard players set @e[tag=boss2] HP 180
execute as @a at @s run scoreboard players add @e[tag=boss2,tag=body] HP 50

#チーム
$scoreboard players set @e[tag=boss2] player $(team)


#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss2
bossbar add boss2 {"translate":"system.boss.name.2","color":"white"}
bossbar set minecraft:boss2 color yellow
bossbar set minecraft:boss2 visible true
execute as @e[tag=boss2] store result bossbar boss2 max run scoreboard players get @s HP
scoreboard players set @e[tag=boss2,limit=1] motion 0
execute as @e[tag=boss2] store result bossbar boss2 value run scoreboard players get @s HP


function namespace:main/boss/boss2/const
execute as @e[tag=boss2] at @s run teleport @s ~ ~1 ~ ~ ~-90
bossbar set minecraft:boss2 players @a[tag=boss2battle]


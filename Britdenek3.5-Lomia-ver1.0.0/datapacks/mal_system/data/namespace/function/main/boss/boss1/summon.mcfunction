kill @e[tag=boss1]
kill @e[tag=boss1attack]


function namespace:main/entity_model/boss/boss1/boss1_armor
function namespace:main/entity_model/boss/boss1/boss1_body
function namespace:main/entity_model/boss/boss1/boss1_left_arm
function namespace:main/entity_model/boss/boss1/boss1_right_arm
function namespace:main/entity_model/boss/boss1/boss1_left_leg
function namespace:main/entity_model/boss/boss1/boss1_right_leg


scoreboard players set @e[tag=boss1,limit=1,tag=body] bossmove 1
scoreboard players set @e[tag=boss1,limit=1,tag=body] motion 0

#HP
scoreboard players set @e[tag=boss1,tag=body] HP 250
execute as @a at @s run scoreboard players add @e[tag=boss1,tag=body] HP 50

#チーム
$scoreboard players set @e[tag=boss1] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss1
bossbar add boss1 {"translate":"system.boss.name.1","color":"white"}
bossbar set minecraft:boss1 color yellow
execute as @e[tag=boss1,tag=body] store result bossbar boss1 max run scoreboard players get @s HP
bossbar set minecraft:boss1 visible true
execute as @e[tag=boss1,tag=body] store result bossbar boss1 value run scoreboard players get @s HP

scoreboard players set @e[tag=boss1,tag=body] bossmove 4
function namespace:main/boss/boss1/const
bossbar set minecraft:boss1 players @a[tag=boss1battle]


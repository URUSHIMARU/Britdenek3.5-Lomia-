kill @e[tag=boss7attack1]
kill @e[tag=boss7]


execute positioned ~ ~3.1 ~ run function namespace:main/entity_model/boss/boss7/boss7_armor
execute positioned ~ ~3.1 ~ run function namespace:main/entity_model/boss/boss7/boss7_body1
function namespace:main/entity_model/boss/boss7/boss7_left_arm
function namespace:main/entity_model/boss/boss7/boss7_left_leg
function namespace:main/entity_model/boss/boss7/boss7_right_arm
function namespace:main/entity_model/boss/boss7/boss7_right_leg
function namespace:main/entity_model/boss/boss7/boss7_shield
function namespace:main/entity_model/boss/boss7/boss7_sword

scoreboard players set @e[tag=boss7,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss7,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss7,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss7,tag=body] HP 300
execute as @a at @s run scoreboard players add @e[tag=boss7,tag=body] HP 140


#チーム
$scoreboard players set @e[tag=boss7] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss7
bossbar add boss7 {"translate":"system.boss.name.7","color":"red"}
bossbar set minecraft:boss7 color red
execute as @e[tag=boss7,tag=body] store result bossbar boss7 max run scoreboard players get @s HP
bossbar set minecraft:boss7 visible true
execute as @e[tag=boss7,tag=body] store result bossbar boss7 value run scoreboard players get @s HP

function namespace:main/boss/boss7/const
bossbar set minecraft:boss7 players @a[tag=boss7battle]







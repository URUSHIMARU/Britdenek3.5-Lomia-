kill @e[tag=boss4_attack]
kill @e[tag=boss4]

function namespace:main/entity_model/boss/boss4/boss4_armor
function namespace:main/entity_model/boss/boss4/boss4_head
function namespace:main/entity_model/boss/boss4/boss4_body1
function namespace:main/entity_model/boss/boss4/boss4_body2
function namespace:main/entity_model/boss/boss4/boss4_arm1
function namespace:main/entity_model/boss/boss4/boss4_arm2
function namespace:main/entity_model/boss/boss4/boss4_leg1
function namespace:main/entity_model/boss/boss4/boss4_leg2
function namespace:main/entity_model/boss/boss4/boss4_leg3
function namespace:main/entity_model/boss/boss4/boss4_leg4

scoreboard players set @e[tag=boss4,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss4,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss4,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss4,tag=body] HP 195
execute as @a at @s run scoreboard players add @e[tag=boss4,tag=body] HP 35

#チーム
$scoreboard players set @e[tag=boss4] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss4
bossbar add boss4 {"translate":"system.boss.name.4","color":"white"}
bossbar set minecraft:boss4 color yellow
execute as @e[tag=boss4,tag=body] store result bossbar boss4 max run scoreboard players get @s HP
bossbar set minecraft:boss4 visible true
execute as @e[tag=boss4,tag=body] store result bossbar boss4 value run scoreboard players get @s HP


function namespace:main/boss/boss4/const
bossbar set minecraft:boss4 players @a[tag=boss4battle]


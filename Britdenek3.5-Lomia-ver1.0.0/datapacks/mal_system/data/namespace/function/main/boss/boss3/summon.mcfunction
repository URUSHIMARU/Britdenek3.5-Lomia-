kill @e[tag=boss3]
kill @e[tag=boss3_crys]
kill @e[tag=boss3_attack]
function namespace:main/entity_model/boss/boss3/boss3_armor
function namespace:main/entity_model/boss/boss3/boss3_body1
function namespace:main/entity_model/boss/boss3/boss3_body2
function namespace:main/entity_model/boss/boss3/boss3_head1
function namespace:main/entity_model/boss/boss3/boss3_head2
function namespace:main/entity_model/boss/boss3/boss3_leg1
function namespace:main/entity_model/boss/boss3/boss3_leg2
function namespace:main/entity_model/boss/boss3/boss3_leg3
function namespace:main/entity_model/boss/boss3/boss3_leg4
function namespace:main/entity_model/boss/boss3/boss3_wing1
function namespace:main/entity_model/boss/boss3/boss3_wing2


scoreboard players set @e[tag=boss3,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss3,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss3,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss3,tag=body] HP 400
execute as @a at @s run scoreboard players add @e[tag=boss3,tag=body] HP 50

#チーム
$scoreboard players set @e[tag=boss3] player $(team)


#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss3
bossbar add boss3 {"translate":"system.boss.name.3","color":"white"}
bossbar set minecraft:boss3 color yellow
execute as @e[tag=boss3,tag=body] store result bossbar boss3 max run scoreboard players get @s HP
bossbar set minecraft:boss3 visible true
execute as @e[tag=boss3,tag=body] store result bossbar boss3 value run scoreboard players get @s HP



function namespace:main/boss/boss3/const
bossbar set minecraft:boss3 players @a[tag=boss3battle]


kill @e[tag=boss6]
kill @e[tag=boss6_attack1]

execute positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss6/boss6_armor
function namespace:main/entity_model/boss/boss6/boss6_body1
function namespace:main/entity_model/boss/boss6/boss6_head1
function namespace:main/entity_model/boss/boss6/boss6_head2
function namespace:main/entity_model/boss/boss6/boss6_left_arm
function namespace:main/entity_model/boss/boss6/boss6_left_leg1
function namespace:main/entity_model/boss/boss6/boss6_left_leg2
function namespace:main/entity_model/boss/boss6/boss6_right_arm
function namespace:main/entity_model/boss/boss6/boss6_right_leg1
function namespace:main/entity_model/boss/boss6/boss6_right_leg2
function namespace:main/entity_model/boss/boss6/boss6_wing



scoreboard players set @e[tag=boss6,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss6,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss6,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss6,tag=body] HP 450
execute as @a at @s run scoreboard players add @e[tag=boss6,tag=body] HP 70


#チーム
$scoreboard players set @e[tag=boss6] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss6
bossbar add boss6 {"translate":"system.boss.name.6","color":"red"}
bossbar set minecraft:boss6 color red
execute as @e[tag=boss6,tag=body] store result bossbar boss6 max run scoreboard players get @s HP
bossbar set minecraft:boss6 visible true
execute as @e[tag=boss6,tag=body] store result bossbar boss6 value run scoreboard players get @s HP

function namespace:main/boss/boss6/const
bossbar set minecraft:boss6 players @a[tag=boss6battle]







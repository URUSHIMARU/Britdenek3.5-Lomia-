kill @e[tag=boss5]

function namespace:main/entity_model/boss/boss5/boss5_armor
function namespace:main/entity_model/boss/boss5/boss5_body1
function namespace:main/entity_model/boss/boss5/boss5_head
function namespace:main/entity_model/boss/boss5/boss5_right_arm1
function namespace:main/entity_model/boss/boss5/boss5_left_arm1
function namespace:main/entity_model/boss/boss5/boss5_right_leg
function namespace:main/entity_model/boss/boss5/boss5_left_leg

scoreboard players set @e[tag=boss5,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss5,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss5,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss5,tag=body] HP 350
execute as @a at @s run scoreboard players add @e[tag=boss5,tag=body] HP 50
#チーム
$scoreboard players set @e[tag=boss5] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss5
bossbar add boss5 {"translate":"system.boss.name.5","color":"white"}
bossbar set minecraft:boss5 color yellow
execute as @e[tag=boss5,tag=body] store result bossbar boss5 max run scoreboard players get @s HP
bossbar set minecraft:boss5 visible true
execute as @e[tag=boss5,tag=body] store result bossbar boss5 value run scoreboard players get @s HP



function namespace:main/boss/boss5/const
bossbar set minecraft:boss5 players @a[tag=boss5battle]

kill @e[tag=boss5attack4]
kill @e[tag=boss5attack3]
kill @e[tag=boss5_bat]
kill @e[tag=boss5_attack1]
kill @e[tag=boss5_attack2]
kill @e[tag=boss5_attack3]
kill @e[tag=boss5target2]
kill @e[tag=boss5target1,type=minecraft:armor_stand] 

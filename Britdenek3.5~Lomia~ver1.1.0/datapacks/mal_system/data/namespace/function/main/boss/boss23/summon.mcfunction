kill @e[tag=boss23]
kill @e[tag=boss23_attack]




execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss23/boss23_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss23/boss23_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss23/boss23_arm1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss23/boss23_arm2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss23/boss23_tail





scoreboard players set @e[tag=boss23,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss23,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss23,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss23,tag=body] HP 200
execute as @a at @s run scoreboard players add @e[tag=boss23,tag=body] HP 150


#チーム
$scoreboard players set @e[tag=boss23] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss23
bossbar add boss23 {"translate":"system.boss.name.23","color":"blue"}
bossbar set minecraft:boss23 color blue
execute as @e[tag=boss23,tag=body] store result bossbar boss23 max run scoreboard players get @s HP
bossbar set minecraft:boss23 visible true
execute as @e[tag=boss23,tag=body] store result bossbar boss23 value run scoreboard players get @s HP

function namespace:main/boss/boss23/const
bossbar set minecraft:boss23 players @a[tag=boss23battle]








kill @e[tag=boss17]
kill @e[tag=boss17_attack]

execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss17/boss17_armor
execute positioned ~ 1 ~ run function namespace:main/entity_model/boss/boss17/boss17_head
execute positioned ~ 1 ~ run function namespace:main/entity_model/boss/boss17/boss17_body
execute positioned ~ 1 ~ run function namespace:main/entity_model/boss/boss17/boss17_leg1
execute positioned ~ 1 ~ run function namespace:main/entity_model/boss/boss17/boss17_leg2
execute positioned ~ 1 ~ run function namespace:main/entity_model/boss/boss17/boss17_leg3
execute positioned ~ 1 ~ run function namespace:main/entity_model/boss/boss17/boss17_leg4

scoreboard players set @e[tag=boss17,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss17,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss17,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss17,tag=body] HP 190
execute as @a at @s run scoreboard players add @e[tag=boss17,tag=body] HP 80


#チーム
$scoreboard players set @e[tag=boss17] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss17
bossbar add boss17 {"translate":"system.boss.name.17","color":"red"}
bossbar set minecraft:boss17 color red
execute as @e[tag=boss17,tag=body] store result bossbar boss17 max run scoreboard players get @s HP
bossbar set minecraft:boss17 visible true
execute as @e[tag=boss17,tag=body] store result bossbar boss17 value run scoreboard players get @s HP

function namespace:main/boss/boss17/const
bossbar set minecraft:boss17 players @a[tag=boss17battle]








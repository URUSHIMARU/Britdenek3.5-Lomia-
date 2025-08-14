kill @e[tag=boss10]
kill @e[tag=boss10_attack11]
kill @e[tag=boss10_attack22]
kill @e[tag=boss10_attack3]
kill @e[tag=boss10_attack4]
kill @e[tag=boss10_attack8]


execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss10/boss10_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss10/boss10_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss10/boss10_body2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss10/boss10_left_arm
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss10/boss10_right_arm
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss10/boss10_leg1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss10/boss10_leg2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss10/boss10_leg3
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss10/boss10_leg4





scoreboard players set @e[tag=boss10,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss10,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss10,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss10,tag=body] HP 300
execute as @a at @s run scoreboard players add @e[tag=boss10,tag=body] HP 350


#チーム
$scoreboard players set @e[tag=boss10] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss10
bossbar add boss10 {"translate":"system.boss.name.10","color":"white"}
bossbar set minecraft:boss10 color yellow
execute as @e[tag=boss10,tag=body] store result bossbar boss10 max run scoreboard players get @s HP
bossbar set minecraft:boss10 visible true
execute as @e[tag=boss10,tag=body] store result bossbar boss10 value run scoreboard players get @s HP

function namespace:main/boss/boss10/const
bossbar set minecraft:boss10 players @a[tag=boss10battle]








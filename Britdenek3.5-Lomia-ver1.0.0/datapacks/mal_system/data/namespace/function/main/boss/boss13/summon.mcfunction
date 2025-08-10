kill @e[tag=boss13]
kill @e[tag=boss13_attack]


execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss13/boss13_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss13/boss13_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss13/boss13_left_arm
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss13/boss13_left_leg
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss13/boss13_right_arm
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss13/boss13_right_leg




scoreboard players set @e[tag=boss13,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss13,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss13,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss13,tag=body] HP 400
execute as @a at @s run scoreboard players add @e[tag=boss13,tag=body] HP 100


#チーム
$scoreboard players set @e[tag=boss13] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss13
bossbar add boss13 {"translate":"system.boss.name.13","color":"white"}
bossbar set minecraft:boss13 color yellow
execute as @e[tag=boss13,tag=body] store result bossbar boss13 max run scoreboard players get @s HP
bossbar set minecraft:boss13 visible true
execute as @e[tag=boss13,tag=body] store result bossbar boss13 value run scoreboard players get @s HP

function namespace:main/boss/boss13/const
bossbar set minecraft:boss13 players @a[tag=boss13battle]








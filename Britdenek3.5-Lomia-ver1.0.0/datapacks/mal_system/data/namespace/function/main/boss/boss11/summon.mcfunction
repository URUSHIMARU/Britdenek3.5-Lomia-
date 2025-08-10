kill @e[tag=boss11]
kill @e[tag=boss11_attack]

execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss11/boss11_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss11/boss11_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss11/boss11_body2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss11/boss11_left_arm
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss11/boss11_left_leg
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss11/boss11_right_arm
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss11/boss11_right_leg
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss11/boss11_head




scoreboard players set @e[tag=boss11,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss11,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss11,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss11,tag=body] HP 170
execute as @a at @s run scoreboard players add @e[tag=boss11,tag=body] HP 90


#チーム
$scoreboard players set @e[tag=boss11] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss11
bossbar add boss11 {"translate":"system.boss.name.11","color":"white"}
bossbar set minecraft:boss11 color yellow
execute as @e[tag=boss11,tag=body] store result bossbar boss11 max run scoreboard players get @s HP
bossbar set minecraft:boss11 visible true
execute as @e[tag=boss11,tag=body] store result bossbar boss11 value run scoreboard players get @s HP

function namespace:main/boss/boss11/const
bossbar set minecraft:boss11 players @a[tag=boss11battle]








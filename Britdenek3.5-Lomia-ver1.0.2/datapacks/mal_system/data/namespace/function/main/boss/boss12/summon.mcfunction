kill @e[tag=boss12]
kill @e[tag=boss12_attack]



execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss12/boss12_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss12/boss12_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss12/boss12_body2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss12/boss12_left_arm
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss12/boss12_left_leg
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss12/boss12_right_arm
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss12/boss12_right_leg
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss12/boss12_head






scoreboard players set @e[tag=boss12,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss12,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss12,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss12,tag=body] HP 250
execute as @a at @s run scoreboard players add @e[tag=boss12,tag=body] HP 120


#チーム
$scoreboard players set @e[tag=boss12] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss12
bossbar add boss12 {"translate":"system.boss.name.12","color":"white"}
bossbar set minecraft:boss12 color yellow
execute as @e[tag=boss12,tag=body] store result bossbar boss12 max run scoreboard players get @s HP
bossbar set minecraft:boss12 visible true
execute as @e[tag=boss12,tag=body] store result bossbar boss12 value run scoreboard players get @s HP

function namespace:main/boss/boss12/const
bossbar set minecraft:boss12 players @a[tag=boss12battle]








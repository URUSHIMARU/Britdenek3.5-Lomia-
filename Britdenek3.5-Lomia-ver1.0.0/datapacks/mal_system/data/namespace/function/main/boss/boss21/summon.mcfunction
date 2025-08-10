kill @e[tag=boss21]
kill @e[tag=boss21_attack]

execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss21/boss21_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss21/boss21_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss21/boss21_arm1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss21/boss21_arm2

scoreboard players set @e[tag=boss21,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss21,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss21,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss21,tag=body] HP 120
execute as @a at @s run scoreboard players add @e[tag=boss21,tag=body] HP 80


#チーム
$scoreboard players set @e[tag=boss21] player $(team)


#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss21
bossbar add boss21 {"translate":"system.boss.name.21","color":"white"}
bossbar set minecraft:boss21 color yellow
execute as @e[tag=boss21,tag=body] store result bossbar boss21 max run scoreboard players get @s HP
bossbar set minecraft:boss21 visible true
execute as @e[tag=boss21,tag=body] store result bossbar boss21 value run scoreboard players get @s HP

function namespace:main/boss/boss21/const
bossbar set minecraft:boss21 players @a[tag=boss21battle]








kill @e[tag=boss19]
kill @e[tag=boss19_attack]


execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss19/boss19_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss19/boss19_arm1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss19/boss19_arm2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss19/boss19_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss19/boss19_body2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss19/boss19_weapon


scoreboard players set @e[tag=boss19,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss19,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss19,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss19,tag=body] HP 450
execute as @a at @s run scoreboard players add @e[tag=boss19,tag=body] HP 150


#チーム
$scoreboard players set @e[tag=boss19] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss19
bossbar add boss19 {"translate":"system.boss.name.19","color":"white"}
bossbar set minecraft:boss19 color yellow
execute as @e[tag=boss19,tag=body] store result bossbar boss19 max run scoreboard players get @s HP
bossbar set minecraft:boss19 visible true
execute as @e[tag=boss19,tag=body] store result bossbar boss19 value run scoreboard players get @s HP

function namespace:main/boss/boss19/const
bossbar set minecraft:boss19 players @a[tag=boss19battle]








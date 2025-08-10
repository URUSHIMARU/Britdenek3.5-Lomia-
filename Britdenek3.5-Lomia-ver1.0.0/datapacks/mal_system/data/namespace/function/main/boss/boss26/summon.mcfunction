kill @e[tag=boss26]
kill @e[tag=boss26_attack]




execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss26/boss26_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss26/boss26_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss26/boss26_arm1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss26/boss26_arm2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss26/boss26_leg1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss26/boss26_leg2



scoreboard players set @e[tag=boss26,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss26,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss26,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss26,tag=body] HP 220
execute as @a at @s run scoreboard players add @e[tag=boss26,tag=body] HP 50


#チーム
$scoreboard players set @e[tag=boss26] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss26
bossbar add boss26 {"translate":"system.boss.name.26","color":"white"}
bossbar set minecraft:boss26 color yellow
execute as @e[tag=boss26,tag=body] store result bossbar boss26 max run scoreboard players get @s HP
bossbar set minecraft:boss26 visible true
execute as @e[tag=boss26,tag=body] store result bossbar boss26 value run scoreboard players get @s HP

function namespace:main/boss/boss26/const
bossbar set minecraft:boss26 players @a[tag=boss26battle]


scoreboard players add @e[tag=body,tag=boss26] bossskill5 20





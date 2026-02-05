
kill @e[tag=boss28]
kill @e[tag=boss28_attack]




execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss28/boss28_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss28/boss28_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss28/boss28_arm1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss28/boss28_arm2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss28/boss28_leg1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss28/boss28_leg2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss28/boss28_weapon
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss28/boss28_parts



scoreboard players set @e[tag=boss28,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss28,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss28,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss28,tag=body] HP 320
execute as @a at @s run scoreboard players add @e[tag=boss28,tag=body] HP 150


#チーム
$scoreboard players set @e[tag=boss28] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss28
bossbar add boss28 {"translate":"system.boss.name.28","color":"white"}
bossbar set minecraft:boss28 color yellow
execute as @e[tag=boss28,tag=body] store result bossbar boss28 max run scoreboard players get @s HP
bossbar set minecraft:boss28 visible true
execute as @e[tag=boss28,tag=body] store result bossbar boss28 value run scoreboard players get @s HP

function namespace:main/boss/boss28/const
bossbar set minecraft:boss28 players @a[tag=boss28battle]








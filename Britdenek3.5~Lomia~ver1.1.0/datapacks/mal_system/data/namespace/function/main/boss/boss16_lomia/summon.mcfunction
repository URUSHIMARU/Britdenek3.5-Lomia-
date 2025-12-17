kill @e[tag=boss16_lomia]
kill @e[tag=boss16_lomia_attack]



execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss16_lomia/boss16_lomia_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss16_lomia/boss16_lomia_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss16_lomia/boss16_lomia_arm1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss16_lomia/boss16_lomia_arm2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss16_lomia/boss16_lomia_leg1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss16_lomia/boss16_lomia_leg2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss16_lomia/boss16_lomia_weapon




scoreboard players set @e[tag=boss16_lomia,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss16_lomia,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss16_lomia,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss16_lomia,tag=body] HP 200
execute as @e[tag=boss16_lomia,tag=body] at @s run function namespace:main/city/lomia/mini_game/arena/set_boss_condition

#チーム
$scoreboard players set @e[tag=boss16_lomia] lomia $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss16_lomia
bossbar add boss16_lomia {"translate":"system.boss.name.16","color":"white"}
bossbar set minecraft:boss16_lomia color yellow
execute as @e[tag=boss16_lomia,tag=body] store result bossbar boss16_lomia max run scoreboard players get @s HP
bossbar set minecraft:boss16_lomia visible true
execute as @e[tag=boss16_lomia,tag=body] store result bossbar boss16_lomia value run scoreboard players get @s HP

function namespace:main/boss/boss16_lomia/const
bossbar set minecraft:boss16_lomia players @a[tag=boss16_lomiabattle]








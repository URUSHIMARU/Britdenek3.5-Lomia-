kill @e[tag=boss11_lomia]
kill @e[tag=boss11_lomia_attack]

execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss11_lomia/boss11_lomia_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss11_lomia/boss11_lomia_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss11_lomia/boss11_lomia_body2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss11_lomia/boss11_lomia_left_arm
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss11_lomia/boss11_lomia_left_leg
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss11_lomia/boss11_lomia_right_arm
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss11_lomia/boss11_lomia_right_leg
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss11_lomia/boss11_lomia_head




scoreboard players set @e[tag=boss11_lomia,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss11_lomia,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss11_lomia,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss11_lomia,tag=body] HP 150
execute as @e[tag=boss11_lomia,tag=body] at @s run function namespace:main/city/lomia/mini_game/arena/set_boss_condition

#チーム
$scoreboard players set @e[tag=boss11_lomia] lomia $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル


function namespace:main/boss/boss11_lomia/const
bossbar set minecraft:boss11_lomia players @a[tag=boss11_lomiabattle]








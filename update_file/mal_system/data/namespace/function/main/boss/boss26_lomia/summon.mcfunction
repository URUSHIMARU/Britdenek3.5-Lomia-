kill @e[tag=boss26_lomia]
kill @e[tag=boss26_lomia_attack]



execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss26_lomia/boss26_lomia_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss26_lomia/boss26_lomia_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss26_lomia/boss26_lomia_arm1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss26_lomia/boss26_lomia_arm2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss26_lomia/boss26_lomia_leg1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss26_lomia/boss26_lomia_leg2




scoreboard players set @e[tag=boss26_lomia,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss26_lomia,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss26_lomia,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss26_lomia,tag=body] HP 150
execute as @e[tag=boss26_lomia,tag=body] at @s run function namespace:main/city/lomia/mini_game/arena/set_boss_condition

#チーム
$scoreboard players set @e[tag=boss26_lomia] lomia $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル

function namespace:main/boss/boss26_lomia/const
bossbar set minecraft:boss26_lomia players @a[tag=boss26_lomiabattle]


scoreboard players add @e[tag=body,tag=boss26_lomia] bossskill5 20





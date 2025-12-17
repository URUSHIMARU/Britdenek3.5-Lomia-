kill @e[tag=boss24_lomia]
kill @e[tag=boss24_lomia_attack]



execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss24_lomia/boss24_lomia_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss24_lomia/boss24_lomia_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss24_lomia/boss24_lomia_arm1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss24_lomia/boss24_lomia_arm2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss24_lomia/boss24_lomia_leg1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss24_lomia/boss24_lomia_leg2




scoreboard players set @e[tag=boss24_lomia,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss24_lomia,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss24_lomia,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss24_lomia,tag=body] HP 150
execute as @e[tag=boss24_lomia,tag=body] at @s run function namespace:main/city/lomia/mini_game/arena/set_boss_condition

#チーム
$scoreboard players set @e[tag=boss24_lomia] lomia $(team)


#最初の演出と動くきっかけ
#ボス1 属性はノーマル

function namespace:main/boss/boss24_lomia/const
bossbar set minecraft:boss24_lomia players @a[tag=boss24_lomiabattle]








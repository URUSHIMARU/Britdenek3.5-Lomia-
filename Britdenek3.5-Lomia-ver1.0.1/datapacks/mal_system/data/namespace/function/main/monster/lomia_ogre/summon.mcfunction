kill @e[tag=ogre_lomia]

execute positioned ~ ~ ~ run function namespace:main/entity_model/normal_enemy/lomia_ogre/ogre1
execute positioned ~ ~ ~ run function namespace:main/entity_model/normal_enemy/lomia_ogre/ogre1
execute positioned ~ ~ ~ run function namespace:main/entity_model/normal_enemy/lomia_ogre/ogre2
execute positioned ~ ~ ~ run function namespace:main/entity_model/normal_enemy/lomia_ogre/ogre2




scoreboard players set @e[tag=ogre_lomia] HP 0
execute as @e[tag=ogre_lomia] at @s store result score @s bossHP run data get entity @s Health
execute as @e[tag=ogre_lomia] at @s run scoreboard players operation @e[tag=ogre_lomia] HP += @s bossHP

#チーム
$scoreboard players set @e[tag=ogre_lomia] lomia $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル







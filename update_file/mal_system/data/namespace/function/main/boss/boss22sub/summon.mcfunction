kill @e[tag=boss22sub]
kill @e[tag=boss22sub_attack]


execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss22sub/boss22sub_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22sub/boss22sub_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22sub/boss22sub_body2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22sub/boss22sub_left_arm
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22sub/boss22sub_left_leg
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22sub/boss22sub_right_arm
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22sub/boss22sub_right_leg
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22sub/boss22sub_head



execute as @e[tag=boss22,tag=body] at @s run scoreboard players operation @e[tag=boss22sub] player = @e[tag=boss22,tag=body,limit=1] player


scoreboard players set @e[tag=boss22sub,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss22sub,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss22sub,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss22sub,tag=body] HP 250
execute as @a at @s run scoreboard players add @e[tag=boss22sub,tag=body] HP 120


#チーム
$scoreboard players set @e[tag=boss22sub] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル

function namespace:main/boss/boss22sub/const
bossbar set minecraft:boss22sub players @a[tag=boss22subbattle]








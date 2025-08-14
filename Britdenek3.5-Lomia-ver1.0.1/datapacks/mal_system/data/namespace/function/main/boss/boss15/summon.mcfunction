execute as @e[type=slime,tag=boss15] at @s run data merge entity @s {Size:0}
kill @e[tag=boss15]
kill @e[tag=boss15_attack]


execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss15/boss15_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss15/boss15_eye1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss15/boss15_eye2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss15/boss15_eye3
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss15/boss15_eye4
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss15/boss15_eye5

execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss15/boss15_gate

execute positioned ~ ~20 ~ run function namespace:main/entity_model/boss/boss15/boss15_seye1
execute positioned ~ ~20 ~ run function namespace:main/entity_model/boss/boss15/boss15_seye2
execute positioned ~ ~20 ~ run function namespace:main/entity_model/boss/boss15/boss15_seye3
execute positioned ~ ~20 ~ run function namespace:main/entity_model/boss/boss15/boss15_seye4
execute positioned ~ ~20 ~ run function namespace:main/entity_model/boss/boss15/boss15_seye5

execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss15/boss15_arm1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss15/boss15_arm2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss15/boss15_arm3
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss15/boss15_arm4
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss15/boss15_arm5

execute as @e[tag=boss15] at @s run function namespace:main/system/cal/attribute/set_armor {"value":2147483647}
scoreboard players set @e[tag=boss15,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss15,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss15,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss15,tag=body] HP 250
execute as @a at @s run scoreboard players add @e[tag=boss15,tag=body] HP 70


#チーム
$scoreboard players set @e[tag=boss15] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss15
bossbar add boss15 {"translate":"system.boss.name.15","color":"blue"}
bossbar set minecraft:boss15 color blue
execute as @e[tag=boss15,tag=body] store result bossbar boss15 max run scoreboard players get @s HP
bossbar set minecraft:boss15 visible true
execute as @e[tag=boss15,tag=body] store result bossbar boss15 value run scoreboard players get @s HP

function namespace:main/boss/boss15/const
bossbar set minecraft:boss15 players @a[tag=boss15battle]








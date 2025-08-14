kill @e[tag=boss9]
kill @e[tag=boss9_attack]
kill @e[tag=boss9_attack3]


execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss9/boss9_armor
execute positioned ^ ^3 ^ run function namespace:main/entity_model/boss/boss9/boss9_body1
execute positioned ^ ^3 ^ run function namespace:main/entity_model/boss/boss9/boss9_head
execute positioned ^2 ^3 ^ run function namespace:main/entity_model/boss/boss9/boss9_right_arm
execute positioned ^-2 ^3 ^ run function namespace:main/entity_model/boss/boss9/boss9_left_arm
execute positioned ^ ^3 ^ run function namespace:main/entity_model/boss/boss9/boss9_wing
execute as @e[tag=boss9] at @s run function namespace:main/system/cal/attribute/set_armor {"value":2147483647}


scoreboard players set @e[tag=boss9,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss9,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss9,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss9,tag=body] HP 80
execute as @a at @s run scoreboard players add @e[tag=boss9,tag=body] HP 70


#チーム
$scoreboard players set @e[tag=boss9] player $(team)


#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss9
bossbar add boss9 {"translate":"system.boss.name.9","color":"blue"}
bossbar set minecraft:boss9 color blue
execute as @e[tag=boss9,tag=body] store result bossbar boss9 max run scoreboard players get @s HP
bossbar set minecraft:boss9 visible true
execute as @e[tag=boss9,tag=body] store result bossbar boss9 value run scoreboard players get @s HP

function namespace:main/boss/boss9/const
bossbar set minecraft:boss9 players @a[tag=boss9battle]








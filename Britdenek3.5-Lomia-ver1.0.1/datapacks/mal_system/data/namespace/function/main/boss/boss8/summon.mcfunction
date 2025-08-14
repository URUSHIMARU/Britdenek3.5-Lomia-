kill @e[tag=boss8_attack]
kill @e[tag=boss8]

execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss8/boss8_armor
execute positioned ~ ~3.2 ~ run function namespace:main/entity_model/boss/boss8/boss8_head
execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss8/boss8_body1
execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss8/boss8_body2
execute positioned ~-0.7 ~2.5 ~ run function namespace:main/entity_model/boss/boss8/boss8_right_arm
execute positioned ~0.7 ~2.5 ~ run function namespace:main/entity_model/boss/boss8/boss8_left_arm

effect give @e[tag=boss8] minecraft:water_breathing infinite 1 true



scoreboard players set @e[tag=boss8,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss8,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss8,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss8,tag=body] HP 200
execute as @a at @s run scoreboard players add @e[tag=boss8,tag=body] HP 60


#チーム
$scoreboard players set @e[tag=boss8] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss8
bossbar add boss8 {"translate":"system.boss.name.8","color":"white"}
bossbar set minecraft:boss8 color yellow
execute as @e[tag=boss8,tag=body] store result bossbar boss8 max run scoreboard players get @s HP
bossbar set minecraft:boss8 visible true
execute as @e[tag=boss8,tag=body] store result bossbar boss8 value run scoreboard players get @s HP

function namespace:main/boss/boss8/const
bossbar set minecraft:boss8 players @a[tag=boss8battle]








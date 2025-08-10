kill @e[tag=boss16]
kill @e[tag=boss16_attack]



execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss16/boss16_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss16/boss16_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss16/boss16_arm1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss16/boss16_arm2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss16/boss16_leg1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss16/boss16_leg2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss16/boss16_weapon




scoreboard players set @e[tag=boss16,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss16,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss16,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss16,tag=body] HP 250
execute as @a at @s run scoreboard players add @e[tag=boss16,tag=body] HP 80


#チーム
$scoreboard players set @e[tag=boss16] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss16
bossbar add boss16 {"translate":"system.boss.name.16","color":"white"}
bossbar set minecraft:boss16 color yellow
execute as @e[tag=boss16,tag=body] store result bossbar boss16 max run scoreboard players get @s HP
bossbar set minecraft:boss16 visible true
execute as @e[tag=boss16,tag=body] store result bossbar boss16 value run scoreboard players get @s HP

function namespace:main/boss/boss16/const
bossbar set minecraft:boss16 players @a[tag=boss16battle]








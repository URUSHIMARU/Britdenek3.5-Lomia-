kill @e[tag=boss27]
kill @e[tag=boss27_attack]




execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss27/boss27_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss27/boss27_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss27/boss27_arm1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss27/boss27_arm2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss27/boss27_leg1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss27/boss27_leg2



scoreboard players set @e[tag=boss27,limit=1,tag=body] bossmove 4
scoreboard players set @e[tag=boss27,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss27,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss27,tag=body] HP 350
execute as @a at @s run scoreboard players add @e[tag=boss27,tag=body] HP 100


#チーム
$scoreboard players set @e[tag=boss27] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss27
bossbar add boss27 {"translate":"system.boss.name.27","color":"white"}
bossbar set minecraft:boss27 color yellow
execute as @e[tag=boss27,tag=body] store result bossbar boss27 max run scoreboard players get @s HP
bossbar set minecraft:boss27 visible true
execute as @e[tag=boss27,tag=body] store result bossbar boss27 value run scoreboard players get @s HP

function namespace:main/boss/boss27/const
bossbar set minecraft:boss27 players @a[tag=boss27battle]








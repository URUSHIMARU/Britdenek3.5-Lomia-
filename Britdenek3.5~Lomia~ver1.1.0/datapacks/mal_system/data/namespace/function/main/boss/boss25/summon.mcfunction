kill @e[tag=boss25]
kill @e[tag=boss25_attack]




execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss25/boss25_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss25/boss25_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss25/boss25_arm1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss25/boss25_arm2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss25/boss25_leg1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss25/boss25_leg2



scoreboard players set @e[tag=boss25,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss25,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss25,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss25,tag=body] HP 120
execute as @a at @s run scoreboard players add @e[tag=boss25,tag=body] HP 30


#チーム
$scoreboard players set @e[tag=boss25] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss25
bossbar add boss25 {"translate":"system.boss.name.25","color":"white"}
bossbar set minecraft:boss25 color yellow
execute as @e[tag=boss25,tag=body] store result bossbar boss25 max run scoreboard players get @s HP
bossbar set minecraft:boss25 visible true
execute as @e[tag=boss25,tag=body] store result bossbar boss25 value run scoreboard players get @s HP

function namespace:main/boss/boss25/const
bossbar set minecraft:boss25 players @a[tag=boss25battle]








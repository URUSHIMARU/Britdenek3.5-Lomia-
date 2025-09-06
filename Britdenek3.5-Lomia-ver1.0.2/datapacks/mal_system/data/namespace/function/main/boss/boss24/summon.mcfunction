kill @e[tag=boss24]
kill @e[tag=boss24_attack]



execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss24/boss24_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss24/boss24_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss24/boss24_arm1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss24/boss24_arm2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss24/boss24_leg1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss24/boss24_leg2




scoreboard players set @e[tag=boss24,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss24,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss24,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss24,tag=body] HP 200
execute as @a at @s run scoreboard players add @e[tag=boss24,tag=body] HP 70


#チーム
$scoreboard players set @e[tag=boss24] player $(team)


#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss24
bossbar add boss24 {"translate":"system.boss.name.24","color":"white"}
bossbar set minecraft:boss24 color yellow
execute as @e[tag=boss24,tag=body] store result bossbar boss24 max run scoreboard players get @s HP
bossbar set minecraft:boss24 visible true
execute as @e[tag=boss24,tag=body] store result bossbar boss24 value run scoreboard players get @s HP

function namespace:main/boss/boss24/const
bossbar set minecraft:boss24 players @a[tag=boss24battle]








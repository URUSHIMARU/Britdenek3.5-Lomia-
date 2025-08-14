kill @e[tag=boss20]
kill @e[tag=boss20_attack]



execute positioned ~ ~-0.5 ~ run function namespace:main/entity_model/boss/boss20/boss20_armor
execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss20/boss20_shadow
execute positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss20/boss20_arm1
execute positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss20/boss20_arm2
execute positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss20/boss20_body1
execute positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss20/boss20_head
execute positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss20/boss20_wing1
execute positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss20/boss20_wing2



execute as @e[tag=boss20,tag=shadow] at @s store result score @s y run data get entity @s Pos[1]



scoreboard players set @e[tag=boss20,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss20,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss20,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss20,tag=body] HP 150
execute as @a at @s run scoreboard players add @e[tag=boss20,tag=body] HP 250


#チーム
$scoreboard players set @e[tag=boss20] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss20
bossbar add boss20 {"translate":"system.boss.name.20","color":"white"}
bossbar set minecraft:boss20 color yellow
execute as @e[tag=boss20,tag=body] store result bossbar boss20 max run scoreboard players get @s HP
bossbar set minecraft:boss20 visible true
execute as @e[tag=boss20,tag=body] store result bossbar boss20 value run scoreboard players get @s HP

function namespace:main/boss/boss20/const
bossbar set minecraft:boss20 players @a[tag=boss20battle]








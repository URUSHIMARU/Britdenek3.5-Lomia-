execute as @e[type=slime,tag=boss22] at @s run data merge entity @s {Size:0}
kill @e[tag=boss22]
kill @e[tag=boss22_attack]
kill @e[tag=boss22sub]
kill @e[tag=boss22sub_attack]


execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss22/boss22_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_body2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_body3

execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_arm11
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_arm12
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_arm21
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_arm22

execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_egg1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_egg2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_egg3

execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_sbody1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_sarm11
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_sarm12
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_sarm21
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss22/boss22_sarm22




scoreboard players set @e[tag=boss22,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss22,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss22,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss22,tag=body] HP 350
execute as @a at @s run scoreboard players add @e[tag=boss22,tag=body] HP 250


#チーム
$scoreboard players set @e[tag=boss22] player $(team)


#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss22
bossbar add boss22 {"translate":"system.boss.name.22","color":"red"}
bossbar set minecraft:boss22 color red
execute as @e[tag=boss22,tag=body] store result bossbar boss22 max run scoreboard players get @s HP
bossbar set minecraft:boss22 visible true
execute as @e[tag=boss22,tag=body] store result bossbar boss22 value run scoreboard players get @s HP

function namespace:main/boss/boss22/const
bossbar set minecraft:boss22 players @a[tag=boss22battle]








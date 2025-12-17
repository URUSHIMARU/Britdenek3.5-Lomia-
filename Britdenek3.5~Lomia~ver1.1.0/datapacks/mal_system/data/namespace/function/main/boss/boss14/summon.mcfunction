execute as @e[type=slime,tag=boss14] at @s run data merge entity @s {Size:0}
kill @e[tag=boss14]
kill @e[tag=boss14_attack]


execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss14/boss14_armor
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_head1
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_head2
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_body1
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_body2
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_body3
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_body4
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_tail1
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_tail2
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_tail3
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_tail4
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_tail5

execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_sbody2
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_sbody3
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_sbody4
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_shead2
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_stail2
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_stail3
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_stail4
execute positioned ~ ~-20 ~ run function namespace:main/entity_model/boss/boss14/boss14_stail5

scoreboard players set @e[tag=boss14,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss14,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss14,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss14,tag=body] HP 250
execute as @a at @s run scoreboard players add @e[tag=boss14,tag=body] HP 70


#チーム
$scoreboard players set @e[tag=boss14] player $(team)


#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss14
bossbar add boss14 {"translate":"system.boss.name.14","color":"white"}
bossbar set minecraft:boss14 color yellow
execute as @e[tag=boss14,tag=body] store result bossbar boss14 max run scoreboard players get @s HP
bossbar set minecraft:boss14 visible true
execute as @e[tag=boss14,tag=body] store result bossbar boss14 value run scoreboard players get @s HP

function namespace:main/boss/boss14/const
bossbar set minecraft:boss14 players @a[tag=boss14battle]








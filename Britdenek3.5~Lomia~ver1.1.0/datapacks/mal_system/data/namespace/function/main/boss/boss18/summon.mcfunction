execute as @e[type=slime,tag=boss18] at @s run data merge entity @s {Size:0}
kill @e[tag=boss18]
kill @e[tag=boss18_attack]

execute positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss18/boss18_armor
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_body1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_body2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_head1
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_head2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_head3
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_head4
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_arm11
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_arm12
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_arm21
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_arm22
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_leg11
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_leg12
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_leg21
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_leg22
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_tail


execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_sbody11
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_sbody2
execute positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss18/boss18_sbody12



scoreboard players set @e[tag=boss18,limit=1,tag=body] bossmove 2
scoreboard players set @e[tag=boss18,limit=1,tag=body] motion 0
scoreboard players set @e[tag=boss18,tag=body] motion2 0

#HP
scoreboard players set @e[tag=boss18,tag=body] HP 500
execute as @a at @s run scoreboard players add @e[tag=boss18,tag=body] HP 200


#チーム
$scoreboard players set @e[tag=boss18] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
bossbar remove minecraft:boss18
bossbar add boss18 {"translate":"system.boss.name.18","color":"white"}
bossbar set minecraft:boss18 color yellow
execute as @e[tag=boss18,tag=body] store result bossbar boss18 max run scoreboard players get @s HP
bossbar set minecraft:boss18 visible true
execute as @e[tag=boss18,tag=body] store result bossbar boss18 value run scoreboard players get @s HP

function namespace:main/boss/boss18/const
bossbar set minecraft:boss18 players @a[tag=boss18battle]








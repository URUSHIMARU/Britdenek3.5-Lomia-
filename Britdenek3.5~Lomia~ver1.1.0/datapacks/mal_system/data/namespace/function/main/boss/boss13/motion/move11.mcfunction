execute if entity @e[tag=boss13,tag=body] as @e[tag=boss13,tag=body1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1108
execute if entity @e[tag=boss13,tag=body] as @e[tag=boss13,tag=left_arm] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1111
execute if entity @e[tag=boss13,tag=body] as @e[tag=boss13,tag=right_arm] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1114
execute if entity @e[tag=boss13,tag=body] as @e[tag=boss13,tag=left_leg] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1109
execute if entity @e[tag=boss13,tag=body] as @e[tag=boss13,tag=right_leg] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1116


execute as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss13] ~ ~1.3 ~ ~ ~
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss13] ^3.5 ^-2.5 ^1 ~-30 ~60
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss13] ^-3.5 ^-2.5 ^1 ~30 ~60
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss13] ^ ^2.2 ^ ~ ~10
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss13] ^ ^1.5 ^ ~ ~








scoreboard players set @e[tag=body,tag=boss13] motion 0



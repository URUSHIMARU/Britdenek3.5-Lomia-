scoreboard players add @e[tag=boss13,tag=body,scores={motion=0..},limit=1] motion 1



execute if entity @e[tag=boss13,tag=body,scores={motion=1..69}] as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss13] ~ ~1.3 ~ ~ ~
execute if entity @e[tag=boss13,tag=body,scores={motion=1..69}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss13] ^0.5 ^-0.1 ^-0.2 
execute if entity @e[tag=boss13,tag=body,scores={motion=1..69}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss13] ^-0.5 ^-0.1 ^-0.2 
execute if entity @e[tag=boss13,tag=body,scores={motion=1..69}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss13] ^0.3 ^-1.4 ^-0.2 
execute if entity @e[tag=boss13,tag=body,scores={motion=1..69}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss13] ^-0.3 ^-1.4 ^-0.2 


execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13] at @s run data merge entity @s {Invulnerable:1b}

execute if entity @e[tag=boss13,tag=body,scores={motion=1..50}] as @e[tag=boss13,tag=body1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1107
execute if entity @e[tag=boss13,tag=body,scores={motion=1..50}] as @e[tag=boss13,tag=left_arm] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1110
execute if entity @e[tag=boss13,tag=body,scores={motion=1..50}] as @e[tag=boss13,tag=right_arm] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1113
execute if entity @e[tag=boss13,tag=body,scores={motion=1..50}] as @e[tag=boss13,tag=left_leg] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1112
execute if entity @e[tag=boss13,tag=body,scores={motion=1..50}] as @e[tag=boss13,tag=right_leg] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1115


execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss13] ~ ~1.3 ~ ~ ~
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss13] ^0.5 ^-0.1 ^-0.2 ~-30 ~60
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss13] ^-0.5 ^-0.1 ^-0.2 ~30 ~60
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss13] ^0.3 ^-1.4 ^-0.2 ~ ~
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss13] ^-0.3 ^-1.4 ^-0.2 ~ ~




execute if entity @e[tag=boss13,tag=body,scores={motion=22..30}] as @e[tag=body2,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss13,tag=body,scores={motion=22..30}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~7 ~-9
execute if entity @e[tag=boss13,tag=body,scores={motion=22..30}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~-7 ~-9
execute if entity @e[tag=boss13,tag=body,scores={motion=31}] as @e[tag=body,limit=1,tag=boss13] at @s run playsound minecraft:entity.zombie_villager.ambient master @a ~ ~ ~ 2 0.9


execute if entity @e[tag=boss13,tag=body,scores={motion=66}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~-110 ~
execute if entity @e[tag=boss13,tag=body,scores={motion=66}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~110 ~

execute if entity @e[tag=boss13,tag=body,scores={motion=30..66}] as @e[tag=boss13] at @s run particle minecraft:witch ~ ~1 ~ 2 2 2 1 3 force
execute if entity @e[tag=boss13,tag=body,scores={motion=30..66}] as @e[tag=boss13] at @s run particle minecraft:block{block_state:"minecraft:raw_gold_block"} ~ ~1 ~ 2 2 2 1 3 force

execute if entity @e[tag=boss13,tag=body,scores={motion=66}] as @e[tag=boss13] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.3 2
execute if entity @e[tag=boss13,tag=body,scores={motion=66..70}] as @e[tag=boss13] at @s run particle minecraft:flash ~ ~1 ~ 2 1 2 1 300 force
execute if entity @e[tag=boss13,tag=body,scores={motion=66..70}] as @e[tag=boss13] at @s run particle minecraft:explosion ~ ~1 ~ 2 1 2 1 20 force

execute if entity @e[tag=boss13,tag=body,scores={motion=70..}] as @e[tag=boss13,tag=body1] at @s run data merge entity @s {Invulnerable:0b}
execute if entity @e[tag=boss13,tag=body,scores={motion=70..}] as @e[tag=boss13,tag=left_leg] at @s run data merge entity @s {Invulnerable:0b}

execute if entity @e[tag=boss13,tag=body,scores={motion=70}] as @e[tag=boss13,tag=body1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1108
execute if entity @e[tag=boss13,tag=body,scores={motion=70}] as @e[tag=boss13,tag=left_arm] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1111
execute if entity @e[tag=boss13,tag=body,scores={motion=70}] as @e[tag=boss13,tag=right_arm] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1114
execute if entity @e[tag=boss13,tag=body,scores={motion=70}] as @e[tag=boss13,tag=left_leg] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1109
execute if entity @e[tag=boss13,tag=body,scores={motion=70}] as @e[tag=boss13,tag=right_leg] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1116


execute if entity @e[tag=boss13,tag=body,scores={motion=70}] as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss13] ~ ~1.3 ~ ~ ~
execute if entity @e[tag=boss13,tag=body,scores={motion=70}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss13] ^3.5 ^-2.5 ^1 ~-30 ~60
execute if entity @e[tag=boss13,tag=body,scores={motion=70}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss13] ^-3.5 ^-2.5 ^1 ~30 ~60
execute if entity @e[tag=boss13,tag=body,scores={motion=70}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss13] ^ ^2.2 ^ ~ ~10
execute if entity @e[tag=boss13,tag=body,scores={motion=70}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss13] ^ ^1.5 ^ ~ ~

execute if entity @e[tag=boss13,tag=body,scores={motion=70}] run tag @e[tag=boss13,tag=body] add boss13_another

execute if entity @e[tag=boss13,tag=body,scores={motion=22}] as @e[tag=head,limit=1,tag=boss13] at @s run playsound minecraft:entity.polar_bear.warning master @a ~ ~ ~ 2 0.8


execute as @e[tag=boss13,tag=body,scores={motion=85..},limit=1] at @s run function namespace:main/boss/boss13/motion/random2



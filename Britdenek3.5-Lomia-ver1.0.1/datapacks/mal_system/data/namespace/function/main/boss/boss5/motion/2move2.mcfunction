scoreboard players add @e[tag=boss5,tag=body,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss5,tag=body,scores={motion=1}] at @s run function namespace:main/boss/boss5/summon2
#最初のtick
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,limit=1,tag=body] at @s run teleport @s ~ ~5 ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,limit=1,tag=body] at @s run particle minecraft:flash ~ ~ ~ 2 2 2 1 10 force

execute if entity @e[tag=boss5,tag=body,scores={motion=1..2}] as @e[tag=boss5,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss5] @s 
execute if entity @e[tag=boss5,tag=body,scores={motion=1..2}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss5] ^ ^0.75 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..2}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^0.3 ^0.65 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..2}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-0.3 ^0.65 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..2}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^0.1 ^0.05 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..2}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^-0.1 ^0.05 ^ ~ ~
#無敵化
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5] run data merge entity @s {Invulnerable:1b}


#モーション
execute if entity @e[tag=boss5,tag=body,scores={motion=10}] as @e[tag=boss5,tag=right_arm1,limit=1] at @s run teleport @s ~ ~ ~ ~90 ~-90
execute if entity @e[tag=boss5,tag=body,scores={motion=10}] as @e[tag=boss5,tag=left_arm1,limit=1] at @s run teleport @s ~ ~ ~ ~-90 ~-90

execute if entity @e[tag=boss5,tag=body,scores={motion=10}] as @e[tag=boss5,tag=right_leg,limit=1] at @s run teleport @s ~ ~ ~ ~30 ~-20
execute if entity @e[tag=boss5,tag=body,scores={motion=10}] as @e[tag=boss5,tag=left_leg,limit=1] at @s run teleport @s ~ ~ ~ ~-30 ~-20

execute if entity @e[tag=boss5,tag=body,scores={motion=20}] as @e[tag=boss5,tag=body,limit=1] at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 2 1.1
execute if entity @e[tag=boss5,tag=body,scores={motion=20..40}] as @e[tag=boss5,tag=right_arm1,limit=1] at @s run particle minecraft:witch ^ ^1.3 ^1.3 0.1 0.1 0.1 1 5 force
execute if entity @e[tag=boss5,tag=body,scores={motion=20..40}] as @e[tag=boss5,tag=left_arm1,limit=1] at @s run particle minecraft:witch ^ ^1.3 ^1.3 0.1 0.1 0.1 1 5 force


execute if entity @e[tag=boss5,tag=body,scores={motion=41..47}] as @e[tag=boss5,tag=right_arm1,limit=1] at @s run teleport @s ^ ^ ^ ~90 ~15
execute if entity @e[tag=boss5,tag=body,scores={motion=41..47}] as @e[tag=boss5,tag=left_arm1,limit=1] at @s run teleport @s ^ ^ ^ ~-90 ~15

execute if entity @e[tag=boss5,tag=body,scores={motion=48}] as @e[tag=boss5,limit=1,tag=body] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss5,tag=body,scores={motion=48}] as @e[tag=boss5,limit=1,tag=left_arm1] at @s run particle minecraft:explosion_emitter ^ ^1.3 ^1.3 0.5 0.5 0.5 1 2 force
execute if entity @e[tag=boss5,tag=body,scores={motion=48}] as @e[tag=boss5,limit=1,tag=left_arm1] at @s run particle minecraft:explosion_emitter ^ ^1.3 ^1.3 0.5 0.5 0.5 1 2 force
execute if entity @e[tag=boss5,tag=body,scores={motion=50}] as @e[tag=boss5,limit=1,tag=left_arm1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats[] set value 1049
execute if entity @e[tag=boss5,tag=body,scores={motion=50}] as @e[tag=boss5,limit=1,tag=right_arm1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats[] set value 1053


execute if entity @e[tag=boss5,tag=body,scores={motion=75}] as @e[tag=boss5,limit=1,tag=body] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss5,tag=body,scores={motion=75}] as @e[tag=boss5,limit=1,tag=left_leg] at @s run particle minecraft:explosion_emitter ^ ^-1.3 ^ 0.5 0.5 0.5 1 2 force
execute if entity @e[tag=boss5,tag=body,scores={motion=75}] as @e[tag=boss5,limit=1,tag=left_leg] at @s run particle minecraft:explosion_emitter ^ ^-1.3 ^ 0.5 0.5 0.5 1 2 force
execute if entity @e[tag=boss5,tag=body,scores={motion=76}] as @e[tag=boss5,limit=1,tag=left_leg] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats[] set value 1051
execute if entity @e[tag=boss5,tag=body,scores={motion=76}] as @e[tag=boss5,limit=1,tag=right_leg] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats[] set value 1051

execute if entity @e[tag=boss5,tag=body,scores={motion=95}] as @e[tag=boss5,limit=1,tag=body] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss5,tag=body,scores={motion=95}] as @e[tag=boss5,limit=1,tag=head] at @s run particle minecraft:explosion_emitter ^ ^1 ^ 0.5 0.5 0.5 1 2 force
execute if entity @e[tag=boss5,tag=body,scores={motion=96}] as @e[tag=boss5,limit=1,tag=head] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats[] set value 1047

execute if entity @e[tag=boss5,tag=body,scores={motion=115}] as @e[tag=boss5,limit=1,tag=body] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss5,tag=body,scores={motion=115}] as @e[tag=boss5,limit=1,tag=body] at @s run particle minecraft:witch ~ ~ ~ 3 3 3 1 300 force
execute if entity @e[tag=boss5,tag=body,scores={motion=115}] as @e[tag=boss5,limit=1,tag=body] at @s run particle minecraft:explosion_emitter ~ ~ ~ 3 3 3 1 30 force
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,limit=1,tag=head2] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats[] set value 1048
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,limit=1,tag=body1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats[] set value 1046
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,limit=1,tag=tail1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats[] set value 1055
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,limit=1,tag=tail2] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats[] set value 1056
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,limit=1,tag=neck] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats[] set value 1052
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,limit=1,tag=right_arm2] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats[] set value 1054
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,limit=1,tag=left_arm2] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats[] set value 1050



execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss5] ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=neck,limit=1,tag=boss5] ^ ^0.25 ^2.3 ~ ~45
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,tag=neck] at @s run teleport @e[tag=head,limit=1,tag=boss5] ^ ^0.1 ^1.7 ~ ~15
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,tag=head] at @s run teleport @e[tag=head2,limit=1,tag=boss5] ^ ^-0.25 ^0.9 ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^1.1 ^0.7 ^2.2 ~-90 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,tag=left_arm1] at @s run teleport @e[tag=left_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-1.1 ^0.7 ^2.2 ~90 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,tag=right_arm1] at @s run teleport @e[tag=right_arm2,limit=1,tag=boss5] ^ ^ ^1.7 ~ ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^1 ^0.4 ^ ~-20 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^-1 ^0.4 ^ ~20 ~10
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=tail1,limit=1,tag=boss5] ^ ^ ^-1.1 ~-180 ~70
execute if entity @e[tag=boss5,tag=body,scores={motion=116}] as @e[tag=boss5,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss5] ^ ^ ^2.0 ~ ~30

execute if entity @e[tag=boss5,tag=body,scores={motion=130..140}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=neck,limit=1,tag=boss5] ^ ^0.25 ^2.3 ~ ~2
execute if entity @e[tag=boss5,tag=body,scores={motion=130..140}] as @e[tag=boss5,tag=neck] at @s run teleport @e[tag=head,limit=1,tag=boss5] ^ ^0.1 ^1.7 ~ ~15
execute if entity @e[tag=boss5,tag=body,scores={motion=130..140}] as @e[tag=boss5,tag=head] at @s run teleport @e[tag=head2,limit=1,tag=boss5] ^ ^-0.25 ^0.9 ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=141}] as @e[tag=boss5,tag=neck] at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss5,tag=body,scores={motion=141..145}] as @e[tag=boss5,tag=head] at @s run teleport @e[tag=head2,limit=1,tag=boss5] ^ ^-0.25 ^0.9 ~ ~20
execute if entity @e[tag=boss5,tag=body,scores={motion=166..170}] as @e[tag=boss5,tag=head] at @s run teleport @e[tag=head2,limit=1,tag=boss5] ^ ^-0.25 ^0.9 ~ ~-20


execute if entity @e[tag=boss5,tag=body,scores={motion=172..182}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=neck,limit=1,tag=boss5] ^ ^0.25 ^2.3 ~ ~40
execute if entity @e[tag=boss5,tag=body,scores={motion=172..182}] as @e[tag=boss5,tag=neck] at @s run teleport @e[tag=head,limit=1,tag=boss5] ^ ^0.1 ^1.7 ~ ~25
execute if entity @e[tag=boss5,tag=body,scores={motion=172..182}] as @e[tag=boss5,tag=head] at @s run teleport @e[tag=head2,limit=1,tag=boss5] ^ ^-0.25 ^0.9 ~ ~


execute if entity @e[tag=boss5,tag=body,scores={motion=183..}] as @e[tag=boss5] run data merge entity @s {Invulnerable:0b}
execute if entity @e[tag=boss5,tag=body,scores={motion=183..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] bossmove 11
execute if entity @e[tag=boss5,tag=body,scores={motion=183..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] motion2 1




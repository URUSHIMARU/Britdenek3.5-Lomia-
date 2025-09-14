#位置情報保存
scoreboard players add @e[tag=boss5,tag=body,scores={motion=0..},limit=1] motion 1
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss5] @s 
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss5] ^ ^0.75 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^0.3 ^0.65 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-0.3 ^0.65 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^0.1 ^0.05 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^-0.1 ^0.05 ^ ~ ~






#モーション
execute if entity @e[tag=boss5,tag=body,scores={motion=10}] as @e[tag=boss5,tag=right_arm1,limit=1] at @s run teleport @s ~ ~ ~ ~90 ~-90
execute if entity @e[tag=boss5,tag=body,scores={motion=10}] as @e[tag=boss5,tag=left_arm1,limit=1] at @s run teleport @s ~ ~ ~ ~-90 ~-90

execute if entity @e[tag=boss5,tag=body,scores={motion=10}] as @e[tag=boss5,tag=right_leg,limit=1] at @s run teleport @s ~ ~ ~ ~30 ~-20
execute if entity @e[tag=boss5,tag=body,scores={motion=10}] as @e[tag=boss5,tag=left_leg,limit=1] at @s run teleport @s ~ ~ ~ ~-30 ~-20

execute if entity @e[tag=boss5,tag=body,scores={motion=20}] as @e[tag=boss5,tag=body,limit=1] at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss5,tag=body,scores={motion=20..40}] as @e[tag=boss5,tag=right_arm1,limit=1] at @s run particle minecraft:soul_fire_flame ^ ^1.3 ^1.3 0.1 0.1 0.1 0.4 10 force
execute if entity @e[tag=boss5,tag=body,scores={motion=20..40}] as @e[tag=boss5,tag=left_arm1,limit=1] at @s run particle minecraft:soul_fire_flame ^ ^1.3 ^1.3 0.1 0.1 0.1 0.4 10 force


execute if entity @e[tag=boss5,tag=body,scores={motion=41..47}] as @e[tag=boss5,tag=right_arm1,limit=1] at @s run teleport @s ^ ^ ^ ~90 ~15
execute if entity @e[tag=boss5,tag=body,scores={motion=41..47}] as @e[tag=boss5,tag=left_arm1,limit=1] at @s run teleport @s ^ ^ ^ ~-90 ~15

execute if entity @e[tag=boss5,tag=body,scores={motion=30}] as @e[tag=body,tag=boss5] at @s run scoreboard players set @e[tag=boss5_bat,type=bat,distance=..50,limit=2,sort=random] bossskill2 1



#execute if entity @e[tag=boss5,tag=body,scores={motion=100..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] motion 0
execute if entity @e[tag=boss5,tag=body,scores={motion=100..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] bossmove 1




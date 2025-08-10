

scoreboard players add @e[tag=boss25,tag=body,scores={motion2=0..},limit=1] motion2 1

execute as @e[tag=boss25,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss25] ~ ~0 ~ 
execute as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss25] ^-0.35 ^-0.05 ^-0.03
execute as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss25] ^0.35 ^-0.05 ^-0.03
execute as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss25] ^0.11 ^-0.8 ^ 
execute as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss25] ^-0.11 ^-0.8 ^ 


execute if entity @e[tag=boss25,tag=body,scores={motion2=1..2}] as @e[tag=boss25,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss25] ~ ~0 ~ ~ ~
execute if entity @e[tag=boss25,tag=body,scores={motion2=1..2}] as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss25] ^-0.35 ^-0.05 ^-0.03 ~ ~90
execute if entity @e[tag=boss25,tag=body,scores={motion2=1..2}] as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss25] ^0.35 ^-0.05 ^-0.03 ~ ~90
execute if entity @e[tag=boss25,tag=body,scores={motion2=1..2}] as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss25] ^0.11 ^-0.8 ^ ~ ~
execute if entity @e[tag=boss25,tag=body,scores={motion2=1..2}] as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss25] ^-0.11 ^-0.8 ^ ~ ~





#モーション
execute if entity @e[tag=boss25,tag=body,scores={motion2=1}] as @e[tag=body,tag=boss25] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=boss25battle,tag=!bullet]
execute if entity @e[tag=boss25,tag=body,scores={motion2=1}] as @e[tag=body,tag=boss25] at @s run teleport @s ~ ~ ~ ~ 0


#歩行のためのやつ
tag @e[tag=boss25,tag=stop] remove stop
execute as @e[tag=boss25,tag=body] at @s unless block ^ ^0.1 ^1 #namespace:airs_for_mob run tag @e[tag=boss25,tag=body,limit=1] add stop
execute as @e[tag=body,tag=boss25,limit=1,tag=!stop] at @s run teleport @s ^ ^ ^0.2
execute as @e[tag=body,tag=boss25,limit=1,tag=stop] at @s run function namespace:main/boss/boss25/motion/random2

#プレイヤー発見
execute as @e[tag=boss25] at @s positioned ^ ^-1 ^2 if entity @e[distance=..3,tag=boss25battle] run function namespace:main/boss/boss25/motion/random1

execute if entity @e[tag=boss25,tag=body,scores={motion2=2..4}] as @e[tag=arm1,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss25,tag=body,scores={motion2=2..4}] as @e[tag=arm2,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss25,tag=body,scores={motion2=2..4}] as @e[tag=leg2,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss25,tag=body,scores={motion2=2..4}] as @e[tag=leg1,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~8

execute if entity @e[tag=boss25,tag=body,scores={motion2=5..12}] as @e[tag=arm1,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss25,tag=body,scores={motion2=5..12}] as @e[tag=arm2,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss25,tag=body,scores={motion2=5..12}] as @e[tag=leg2,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss25,tag=body,scores={motion2=5..12}] as @e[tag=leg1,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~-8

execute if entity @e[tag=boss25,tag=body,scores={motion2=13..15}] as @e[tag=arm1,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss25,tag=body,scores={motion2=13..15}] as @e[tag=arm2,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss25,tag=body,scores={motion2=13..15}] as @e[tag=leg2,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss25,tag=body,scores={motion2=13..15}] as @e[tag=leg1,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~8

execute if entity @e[tag=boss25,tag=body,scores={motion2=1}] as @e[tag=leg2,limit=1,tag=boss25] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 0.6 1
execute if entity @e[tag=boss25,tag=body,scores={motion2=8}] as @e[tag=leg1,limit=1,tag=boss25] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 0.6 1


execute if entity @e[tag=boss25,tag=body,scores={motion2=15..},limit=1] run scoreboard players set @e[tag=boss25,tag=body] motion2 0





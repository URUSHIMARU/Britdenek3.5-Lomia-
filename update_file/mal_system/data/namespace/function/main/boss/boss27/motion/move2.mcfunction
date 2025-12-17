scoreboard players add @e[tag=boss27,tag=body,scores={motion=..29},limit=1] motion 1
scoreboard players add @e[tag=boss27,tag=body,scores={motion=60..},limit=1] motion 1
scoreboard players add @e[tag=boss27,tag=body,scores={motion=30..},limit=1] motion2 1


execute if entity @e[tag=boss27,tag=body,scores={motion=30..}] as @e[tag=boss27,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss27] ~ ~-0.5 ~ 
execute if entity @e[tag=boss27,tag=body,scores={motion=30..}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss27] ^-0.7 ^0.8 ^0.2
execute if entity @e[tag=boss27,tag=body,scores={motion=30..}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss27] ^0.7 ^0.8 ^0.2
execute if entity @e[tag=boss27,tag=body,scores={motion=30..}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss27] ^0.5 ^-0.7 ^-0.1
execute if entity @e[tag=boss27,tag=body,scores={motion=30..}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss27] ^-0.5 ^-0.7 ^-0.1


execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss27battle,limit=1,sort=nearest]
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss27] ~ ~-0.5 ~ ~ ~10
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss27] ^-0.7 ^0.8 ^0.2 ~10 ~-20
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss27] ^0.7 ^0.8 ^0.2 ~-10 ~-20
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss27] ^0.5 ^-0.7 ^-0.1 ~-10 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss27] ^-0.5 ^-0.7 ^-0.1 ~10 ~


execute if entity @e[tag=boss27,tag=body,scores={motion=3..10}] as @e[tag=boss27,tag=body1] at @s run teleport @s ~ ~-0.03 ~ ~ ~1
execute if entity @e[tag=boss27,tag=body,scores={motion=3..10}] as @e[tag=boss27,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=3..10}] as @e[tag=boss27,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=3..10}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~-0.03 ~ ~-1.5 ~-1
execute if entity @e[tag=boss27,tag=body,scores={motion=3..10}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~-0.03 ~ ~1.5 ~-1

execute as @e[tag=boss27,tag=body,scores={motion=20..21},limit=1] at @s run particle minecraft:flame ^0.21 ^2.5 ^1.1 0.03 0.03 0.03 0.1 5 force
execute as @e[tag=boss27,tag=body,scores={motion=20..21},limit=1] at @s run particle minecraft:flame ^-0.21 ^2.5 ^1.1 0.03 0.03 0.03 0.1 5 force


execute if entity @e[tag=boss27,tag=body,scores={motion2=1..3}] as @e[tag=boss27,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion2=1..3}] as @e[tag=boss27,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-12
execute if entity @e[tag=boss27,tag=body,scores={motion2=1..3}] as @e[tag=boss27,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~12
execute if entity @e[tag=boss27,tag=body,scores={motion2=1..3}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-9
execute if entity @e[tag=boss27,tag=body,scores={motion2=1..3}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~9


execute if entity @e[tag=boss27,tag=body,scores={motion2=4..9}] as @e[tag=boss27,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion2=4..9}] as @e[tag=boss27,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~12
execute if entity @e[tag=boss27,tag=body,scores={motion2=4..9}] as @e[tag=boss27,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-12
execute if entity @e[tag=boss27,tag=body,scores={motion2=4..9}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~9
execute if entity @e[tag=boss27,tag=body,scores={motion2=4..9}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-9

execute if entity @e[tag=boss27,tag=body,scores={motion2=10..12}] as @e[tag=boss27,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion2=10..12}] as @e[tag=boss27,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-12
execute if entity @e[tag=boss27,tag=body,scores={motion2=10..12}] as @e[tag=boss27,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~12
execute if entity @e[tag=boss27,tag=body,scores={motion2=10..12}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-9
execute if entity @e[tag=boss27,tag=body,scores={motion2=10..12}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~9

execute as @e[tag=boss27,tag=body,scores={motion=30..49},limit=1] at @s run particle minecraft:sweep_attack ~ ~2 ~ 0.6 0.6 0.6 0.2 4 force

#突撃処理
execute as @e[tag=boss27,tag=body,scores={motion=30..49},limit=1] at @s positioned ~ ~0.5 ~ unless block ^ ^ ^1 #namespace:airs_for_mob run scoreboard players set @s motion 60
execute as @e[tag=boss27,tag=body,scores={motion=30..49},limit=1] at @s positioned ~ ~0.5 ~ if entity @e[tag=boss27battle,distance=..4] run scoreboard players set @s motion 60
execute as @e[tag=boss27,tag=body,scores={motion=30..49},limit=1] at @s run teleport @s ^ ^ ^0.7 ~ ~

scoreboard players set @e[tag=boss27,tag=body,scores={motion2=12..,motion=30..49},limit=1] motion2 0

#難易度ノーマル以下
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss27,tag=body,scores={motion=60}] as @e[tag=boss27,tag=body] at @s positioned ^ ^ ^ run scoreboard players set @e[tag=boss27battle,distance=..4] commandDamage 14
execute as @e[tag=boss27,tag=body,scores={motion=60},limit=1] at @s run particle minecraft:explosion ~ ~2 ~ 2 2 2 1 20 force
execute as @e[tag=boss27,tag=body,scores={motion=60},limit=1] at @s run particle minecraft:flame ~ ~2 ~ 0.1 0.1 0.1 0.5 40 force
execute as @e[tag=boss27,tag=body,scores={motion=60},limit=1] at @s run particle minecraft:lava ~ ~2 ~ 2 2 2 1 10 force
execute as @e[tag=boss27,tag=body,scores={motion=60},limit=1] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0


#難易度ハード以上
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=60}] as @e[tag=boss27,tag=body] at @s positioned ^ ^ ^ run scoreboard players set @e[tag=boss27battle,distance=..4] commandDamage 1016


execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=60}] as @e[tag=boss27,tag=body] at @s positioned ^ ^ ^ run scoreboard players set @e[tag=boss27battle,distance=..4] commandDamage 1016
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=63}] as @e[tag=boss27,tag=body] at @s positioned ^ ^ ^4 run scoreboard players set @e[tag=boss27battle,distance=..7] commandDamage 1016
execute as @e[tag=boss27,tag=body,scores={motion=63},limit=1] at @s positioned ^ ^ ^4 run particle minecraft:explosion ~ ~2 ~ 3 1 3 1 20 force
execute as @e[tag=boss27,tag=body,scores={motion=63},limit=1] at @s positioned ^ ^ ^4 run particle minecraft:flame ~ ~2 ~ 2 0.1 2 0.5 40 force
execute as @e[tag=boss27,tag=body,scores={motion=63},limit=1] at @s positioned ^ ^ ^4 run particle minecraft:lava ~ ~2 ~ 3 1 3 1 10 force
execute as @e[tag=boss27,tag=body,scores={motion=63},limit=1] at @s positioned ^ ^ ^4 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=63}] as @e[tag=boss27,tag=body] at @s positioned ^ ^ ^4 run scoreboard players set @e[tag=boss27battle,distance=..10] commandDamage 1016
execute as @e[tag=boss27,tag=body,scores={motion=66},limit=1] at @s positioned ^ ^ ^8 run particle minecraft:explosion ~ ~2 ~ 5 1 5 1 80 force
execute as @e[tag=boss27,tag=body,scores={motion=66},limit=1] at @s positioned ^ ^ ^8 run particle minecraft:flame ~ ~2 ~ 5 1 5 0.5 40 force
execute as @e[tag=boss27,tag=body,scores={motion=66},limit=1] at @s positioned ^ ^ ^8 run particle minecraft:lava ~ ~2 ~ 5 1 5 1 10 force
execute as @e[tag=boss27,tag=body,scores={motion=66},limit=1] at @s positioned ^ ^ ^8 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0


execute as @e[tag=boss27,tag=body,scores={motion=80..},limit=1] at @s run function namespace:main/boss/boss27/motion/random1


execute if entity @e[tag=boss27,tag=body,scores={motion=80..},limit=1] run scoreboard players set @e[tag=boss27,tag=body] motion 0

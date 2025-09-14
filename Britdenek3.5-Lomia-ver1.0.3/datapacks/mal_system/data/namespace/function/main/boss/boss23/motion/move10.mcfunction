scoreboard players add @e[tag=boss23,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss23,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss23] ~ ~ ~ 
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss23] ^0.6 ^-0.3 ^-0.2
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss23] ^-0.6 ^-0.3 ^-0.2
execute as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss23] ^ ^-1.2 ^-1.8



execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss23battle,limit=1,sort=nearest,tag=!bullet]
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss23] ~ ~ ~ ~ ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss23] ^0.6 ^-0.3 ^-0.2 ~-30 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss23] ^-0.6 ^-0.3 ^-0.2 ~30 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=1..2}] as @e[tag=boss23,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss23] ^ ^-1.2 ^-1.8 ~180 ~




execute if entity @e[tag=boss23,tag=body,scores={motion=22..25}] as @e[tag=arm1,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~10 ~-20
execute if entity @e[tag=boss23,tag=body,scores={motion=22..25}] as @e[tag=arm2,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~ ~






execute if entity @e[tag=boss23,tag=body,scores={motion=50..53}] as @e[tag=arm1,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~-10 ~
execute if entity @e[tag=boss23,tag=body,scores={motion=50..53}] as @e[tag=arm2,limit=1,tag=boss23] at @s run teleport @s ~ ~ ~ ~10 ~


execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s run particle minecraft:cloud ^ ^1 ^2 0.5 0.5 0.5 0.1 10 force
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s run playsound minecraft:item.crossbow.shoot master @a ^ ^ ^3 1.4
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s run summon arrow ^ ^2 ^1.2 {pickup:0b,Motion:[0d,0.2d,0d],life:2400,Color:1999,CustomPotionEffects:[{id:"minecraft:poison",Amplifier:2b,Duration:60}],Tags:["boss23arrow6","boss23arrow_first","boss23_attack","immortal"],damage:5}
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s run summon arrow ^ ^2 ^1.2 {pickup:0b,Motion:[0d,0.2d,0d],life:2400,Color:1999,CustomPotionEffects:[{id:"minecraft:poison",Amplifier:2b,Duration:60}],Tags:["boss23arrow6","boss23arrow_first","boss23_attack","immortal"],damage:5}
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s run summon arrow ^ ^2 ^1.2 {pickup:0b,Motion:[0d,0.2d,0d],life:2400,Color:1999,CustomPotionEffects:[{id:"minecraft:poison",Amplifier:2b,Duration:60}],Tags:["boss23arrow6","boss23arrow_first","boss23_attack","immortal"],damage:5}
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s run summon arrow ^ ^2 ^1.2 {pickup:0b,Motion:[0d,0.2d,0d],life:2400,Color:1999,CustomPotionEffects:[{id:"minecraft:poison",Amplifier:2b,Duration:60}],Tags:["boss23arrow6","boss23arrow_first","boss23_attack","immortal"],damage:5}
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s run summon arrow ^ ^2 ^1.2 {pickup:0b,Motion:[0d,0.2d,0d],life:2400,Color:1999,CustomPotionEffects:[{id:"minecraft:poison",Amplifier:2b,Duration:60}],Tags:["boss23arrow6","boss23arrow_first","boss23_attack","immortal"],damage:5}
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s run summon arrow ^ ^2 ^1.2 {pickup:0b,Motion:[0d,0.2d,0d],life:2400,Color:1999,CustomPotionEffects:[{id:"minecraft:poison",Amplifier:2b,Duration:60}],Tags:["boss23arrow6","boss23arrow_first","boss23_attack","immortal"],damage:5}
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s run summon arrow ^ ^2 ^1.2 {pickup:0b,Motion:[0d,0.2d,0d],life:2400,Color:1999,CustomPotionEffects:[{id:"minecraft:poison",Amplifier:2b,Duration:60}],Tags:["boss23arrow6","boss23arrow_first","boss23_attack","immortal"],damage:5}
execute if entity @e[tag=boss23,tag=body,scores={motion=35..50}] as @e[tag=body,limit=1,tag=boss23] at @s run summon arrow ^ ^2 ^1.2 {pickup:0b,Motion:[0d,0.2d,0d],life:2400,Color:1999,CustomPotionEffects:[{id:"minecraft:poison",Amplifier:2b,Duration:60}],Tags:["boss23arrow6","boss23arrow_first","boss23_attack","immortal"],damage:5}


execute if entity @e[tag=boss23,tag=body,scores={motion=100}] as @e[tag=body,limit=1,tag=boss23] at @s run particle minecraft:squid_ink ~ ~1 ~ 2 2 2 1 1000 force
execute if entity @e[tag=boss23,tag=body,scores={motion=100}] as @e[tag=body,limit=1,tag=boss23] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
execute if entity @e[tag=boss23,tag=body,scores={motion=100}] as @e[tag=boss23arrow6] at @s if block ~ ~ ~ #namespace:airs_for_mob run kill @s
execute if entity @e[tag=boss23,tag=body,scores={motion=100}] as @e[tag=body,limit=1,tag=boss23] at @s run execute as @e[tag=boss23arrow6,sort=furthest,limit=1] at @s run teleport @e[tag=boss23,tag=body] ~ ~10 ~


execute if entity @e[tag=boss23,tag=body,scores={motion=65}] as @e[tag=boss23arrow6] at @s run data merge entity @s {NoGravity:1b,Motion:[0d,0d,0d]}
execute if entity @e[tag=boss23,tag=body,scores={motion=100}] as @e[tag=boss23arrow6] at @s run data merge entity @s {Motion:[0d,-1d,0d]}



execute as @e[tag=boss23,tag=body] at @s store result score @s x run data get entity @s Pos[0] 100
execute as @e[tag=boss23,tag=body] at @s store result score @s y run data get entity @s Pos[1] 100
execute as @e[tag=boss23,tag=body] at @s store result score @s z run data get entity @s Pos[2] 100


execute as @e[tag=boss23arrow_first] at @s store result score @s x run data get entity @s Pos[0] 100
execute as @e[tag=boss23arrow_first] at @s store result score @s y run data get entity @s Pos[1] 100
execute as @e[tag=boss23arrow_first] at @s store result score @s z run data get entity @s Pos[2] 100

execute as @e[tag=boss23arrow_first] at @s run scoreboard players operation @s x -= @e[tag=boss23,tag=body,limit=1] x
execute as @e[tag=boss23arrow_first] at @s run scoreboard players operation @s y -= @e[tag=boss23,tag=body,limit=1] y
execute as @e[tag=boss23arrow_first] at @s run scoreboard players operation @s z -= @e[tag=boss23,tag=body,limit=1] z

scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] x 30 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] x 40 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] x 50 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] x 60 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] x 30 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] x 40 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] x 50 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] x 60 

scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] y 30 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] y 40 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] y 50 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] y 60 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] y 30 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] y 40 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] y 50 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] y 60 

scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] z 30 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] z 40 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] z 50 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] z 60 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] z 30 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] z 40 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] z 50 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] z 60 

scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] x 30 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] x 40 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] x 50 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] x 60 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] x 30 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] x 40 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] x 50 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] x 60 

scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] y 30 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] y 40 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] y 50 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] y 60 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] y 30 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] y 40 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] y 50 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] y 60 

scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] z 30 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] z 40 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] z 50 
scoreboard players add @e[tag=boss23arrow_first,sort=random,limit=2] z 60 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] z 30 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] z 40 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] z 50 
scoreboard players remove @e[tag=boss23arrow_first,sort=random,limit=2] z 60 

execute as @e[tag=boss23arrow_first] at @s store result entity @s Motion[0] double 0.004 run scoreboard players get @s x 
execute as @e[tag=boss23arrow_first] at @s store result entity @s Motion[1] double 0.005 run scoreboard players get @s y 
execute as @e[tag=boss23arrow_first] at @s store result entity @s Motion[2] double 0.004 run scoreboard players get @s z 

tag @e[tag=boss23arrow_first] remove boss23arrow_first



execute as @e[tag=boss23,tag=body,scores={motion=120..},limit=1] at @s run function namespace:main/boss/boss23/motion/random1
execute if entity @e[tag=boss23,tag=body,scores={motion=120..},limit=1] run scoreboard players set @e[tag=boss23,tag=body] motion 0




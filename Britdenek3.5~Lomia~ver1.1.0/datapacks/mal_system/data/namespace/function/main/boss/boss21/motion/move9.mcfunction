scoreboard players add @e[tag=boss21,tag=body,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^

execute if entity @e[tag=boss21,tag=body,scores={motion=1}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=!bullet,tag=boss21battle,limit=1,sort=nearest]
execute if entity @e[tag=boss21,tag=body,scores={motion=1}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~ ~ ~
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^ ~ ~90
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^ ~ ~90

execute as @e[tag=boss21,tag=body] at @s run teleport @e[tag=boss21_attack2] ~ ~-0.6 ~ 

execute if entity @e[tag=boss21,tag=body,scores={motion=3..10}] as @e[tag=body,limit=1,tag=boss21] at @s run teleport @s ~ ~-0.17 ~ ~ ~
execute if entity @e[tag=boss21,tag=body,scores={motion=3..10}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss21,tag=body,scores={motion=3..10}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss21,tag=body,scores={motion=3..10}] as @e[tag=arm2,limit=1,tag=boss21] at @s run playsound minecraft:entity.allay.item_given master @a ~ ~ ~ 2 0.6

execute if entity @e[tag=boss21,tag=body,scores={motion=30..34}] as @e[tag=body,limit=1,tag=boss21] at @s run playsound minecraft:block.chain.place master @a ~ ~ ~ 2 0.5
execute if entity @e[tag=boss21,tag=body,scores={motion=50..51}] as @e[tag=body,limit=1,tag=boss21] at @s run teleport @s ~ ~0.68 ~ ~ ~
execute if entity @e[tag=boss21,tag=body,scores={motion=50}] as @e[tag=body,limit=1,tag=boss21] at @s run playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 2 0.8
execute if entity @e[tag=boss21,tag=body,scores={motion=40}] as @e[tag=body,limit=1,tag=boss21] at @s positioned ~ ~-0.6 ~ run function namespace:main/entity_model/boss/boss21/boss21_bullet2


execute if entity @e[tag=boss21,tag=body,scores={motion=50..51}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~45
execute if entity @e[tag=boss21,tag=body,scores={motion=50..51}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~45

execute if entity @e[tag=boss21,tag=body,scores={motion=60..61}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~-20 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=60..61}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~20 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=boss21] at @s run teleport @s ~ ~ ~ ~25 ~

execute if entity @e[tag=boss21,tag=body,scores={motion=70}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 3 0.8
execute if entity @e[tag=boss21,tag=body,scores={motion=80}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 3 0.8
execute if entity @e[tag=boss21,tag=body,scores={motion=90}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 3 0.8
execute if entity @e[tag=boss21,tag=body,scores={motion=100}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 3 0.8
execute if entity @e[tag=boss21,tag=body,scores={motion=110}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 3 0.8
execute if entity @e[tag=boss21,tag=body,scores={motion=120}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 3 0.8
execute if entity @e[tag=boss21,tag=body,scores={motion=130}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 3 0.8
execute if entity @e[tag=boss21,tag=body,scores={motion=140}] as @e[tag=boss21] at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 3 0.8

execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^1 run particle minecraft:sweep_attack ~ ~1 ~ 0.4 0.4 0.4 1 2 force
execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^3 run particle minecraft:sweep_attack ~ ~1 ~ 0.4 0.4 0.4 1 2 force
execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^5 run particle minecraft:sweep_attack ~ ~1 ~ 0.4 0.4 0.4 1 2 force
execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^7 run particle minecraft:sweep_attack ~ ~1 ~ 0.4 0.4 0.4 1 2 force


execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^1 as @e[tag=boss21battle,distance=..3] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^1 as @e[tag=boss21battle,distance=..3] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run effect give @s minecraft:wither 5 1 false

execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^3 as @e[tag=boss21battle,distance=..3] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^3 as @e[tag=boss21battle,distance=..3] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run effect give @s minecraft:wither 5 1 false

execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^5 as @e[tag=boss21battle,distance=..3] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^5 as @e[tag=boss21battle,distance=..3] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run effect give @s minecraft:wither 5 1 false

execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^7 as @e[tag=boss21battle,distance=..3] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^7 as @e[tag=boss21battle,distance=..3] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run effect give @s minecraft:wither 5 1 false


execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=boss21,tag=body] at @s run teleport @e[tag=boss21_attack2] ~ ~-0.5 ~ ~ ~

execute if entity @e[tag=boss21,tag=body,scores={motion=70..140}] as @e[tag=body,limit=1,tag=boss21] at @s if block ^ ^0.1 ^0.8 #namespace:airs_for_mob run teleport @s ^ ^ ^0.4 ~12 ~

execute if entity @e[tag=boss21,tag=body,scores={motion=150..151}] run kill @e[tag=boss21_attack2]
execute if entity @e[tag=boss21,tag=body,scores={motion=150}] as @e[tag=body,limit=1,tag=boss21] at @s run playsound minecraft:block.chain.place master @a ~ ~ ~ 2 0.5

execute if entity @e[tag=boss21,tag=body,scores={motion=150..151}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~-20 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=150..151}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~20 ~


execute as @e[tag=boss21,tag=body,scores={motion=160..},limit=1] at @s run function namespace:main/boss/boss21/motion/random1
execute if entity @e[tag=boss21,tag=body,scores={motion=160..},limit=1] run scoreboard players set @e[tag=boss21,tag=body] motion 0


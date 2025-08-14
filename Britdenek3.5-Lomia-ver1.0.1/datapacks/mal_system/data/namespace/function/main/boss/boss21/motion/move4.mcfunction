scoreboard players add @e[tag=boss21,tag=body,scores={motion=0..},limit=1] motion 1

#èdóÕ
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~

execute as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^

execute if entity @e[tag=boss21,tag=body,scores={motion=1}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=!bullet,tag=boss21battle,limit=1,sort=nearest]
execute if entity @e[tag=boss21,tag=body,scores={motion=1}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~ ~ ~
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^ ~ ~90
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^ ~ ~90


execute if entity @e[tag=boss21,tag=body,scores={motion=3..10}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~2 ~-21
execute if entity @e[tag=boss21,tag=body,scores={motion=3..10}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~-2 ~-21

execute if entity @e[tag=boss21,tag=body,scores={motion=4}] as @e[tag=boss21,tag=arm2] at @s run playsound minecraft:block.chain.place master @a ~ ~ ~ 2 0.8
execute if entity @e[tag=boss21,tag=body,scores={motion=4}] as @e[tag=boss21,tag=arm1] at @s run playsound minecraft:block.chain.place master @a ~ ~ ~ 2 0.8

execute if entity @e[tag=boss21,tag=body,scores={motion=4}] as @e[tag=boss21,tag=arm1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1181
execute if entity @e[tag=boss21,tag=body,scores={motion=4}] as @e[tag=boss21,tag=arm2] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1183


execute if entity @e[tag=boss21,tag=body,scores={motion=42..46}] as @e[tag=boss21,tag=body] at @s if block ^ ^ ^0.9 #namespace:airs_for_mob run teleport @s ^ ^ ^0.9
execute if entity @e[tag=boss21,tag=body,scores={motion=42..46}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~1 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=40}] as @e[tag=arm1,limit=1,tag=boss21] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss21,tag=body,scores={motion=40..42}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~40
execute if entity @e[tag=boss21,tag=body,scores={motion=40..42}] as @e[tag=arm1,limit=1,tag=boss21] at @s run particle minecraft:sweep_attack ^ ^ ^2 1 1 1 1 20 force
execute if entity @e[tag=boss21,tag=body,scores={motion=40}] as @e[tag=arm2,limit=1,tag=boss21] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss21,tag=body,scores={motion=40..42}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~40
execute if entity @e[tag=boss21,tag=body,scores={motion=40..42}] as @e[tag=arm2,limit=1,tag=boss21] at @s run particle minecraft:sweep_attack ^ ^ ^2 1 1 1 1 20 force
execute if entity @e[tag=boss21,tag=body,scores={motion=40..42}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^2 as @e[tag=boss21battle,distance=..4] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run scoreboard players set @s commandDamage 13
execute if entity @e[tag=boss21,tag=body,scores={motion=40..42}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^2 as @e[tag=boss21battle,distance=..4] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run effect give @s minecraft:wither 5 1 false




execute if entity @e[tag=boss21,tag=body,scores={motion=62..66}] as @e[tag=boss21,tag=body] at @s if block ^ ^ ^0.9 #namespace:airs_for_mob run teleport @s ^ ^ ^0.9
execute if entity @e[tag=boss21,tag=body,scores={motion=62..66}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~1 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=45..48}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss21,tag=body,scores={motion=60}] as @e[tag=arm1,limit=1,tag=boss21] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss21,tag=body,scores={motion=60..62}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~40
execute if entity @e[tag=boss21,tag=body,scores={motion=60..62}] as @e[tag=arm1,limit=1,tag=boss21] at @s run particle minecraft:sweep_attack ^ ^ ^2 1 1 1 1 20 force
execute if entity @e[tag=boss21,tag=body,scores={motion=45..48}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss21,tag=body,scores={motion=60}] as @e[tag=arm2,limit=1,tag=boss21] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss21,tag=body,scores={motion=60..62}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~40
execute if entity @e[tag=boss21,tag=body,scores={motion=60..62}] as @e[tag=arm2,limit=1,tag=boss21] at @s run particle minecraft:sweep_attack ^ ^ ^2 1 1 1 1 20 force
execute if entity @e[tag=boss21,tag=body,scores={motion=60..62}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^2 as @e[tag=boss21battle,distance=..4] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run scoreboard players set @s commandDamage 13
execute if entity @e[tag=boss21,tag=body,scores={motion=60..62}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^2 as @e[tag=boss21battle,distance=..4] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run effect give @s minecraft:wither 5 1 false


execute if entity @e[tag=boss21,tag=body,scores={motion=82..86}] as @e[tag=boss21,tag=body] at @s if block ^ ^ ^0.9 #namespace:airs_for_mob run teleport @s ^ ^ ^0.9
execute if entity @e[tag=boss21,tag=body,scores={motion=82..86}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~1 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=65..68}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss21,tag=body,scores={motion=80}] as @e[tag=arm1,limit=1,tag=boss21] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss21,tag=body,scores={motion=80..82}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~40
execute if entity @e[tag=boss21,tag=body,scores={motion=80..82}] as @e[tag=arm1,limit=1,tag=boss21] at @s run particle minecraft:sweep_attack ^ ^ ^2 1 1 1 1 20 force
execute if entity @e[tag=boss21,tag=body,scores={motion=65..68}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss21,tag=body,scores={motion=80}] as @e[tag=arm2,limit=1,tag=boss21] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss21,tag=body,scores={motion=80..82}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~40
execute if entity @e[tag=boss21,tag=body,scores={motion=80..82}] as @e[tag=arm2,limit=1,tag=boss21] at @s run particle minecraft:sweep_attack ^ ^ ^2 1 1 1 1 20 force
execute if entity @e[tag=boss21,tag=body,scores={motion=80..82}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^2 as @e[tag=boss21battle,distance=..4] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run scoreboard players set @s commandDamage 13
execute if entity @e[tag=boss21,tag=body,scores={motion=80..82}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^2 as @e[tag=boss21battle,distance=..4] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run effect give @s minecraft:wither 5 1 false


execute if entity @e[tag=boss21,tag=body,scores={motion=82}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=!bullet,tag=boss21battle,limit=1,sort=nearest]
execute if entity @e[tag=boss21,tag=body,scores={motion=82}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss21,tag=body,scores={motion=82..83}] as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~ ~ ~
execute if entity @e[tag=boss21,tag=body,scores={motion=82..83}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^ ~ ~90
execute if entity @e[tag=boss21,tag=body,scores={motion=82..83}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^ ~ ~90


execute if entity @e[tag=boss21,tag=body,scores={motion=95..98}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~-40
execute if entity @e[tag=boss21,tag=body,scores={motion=110}] as @e[tag=arm1,limit=1,tag=boss21] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss21,tag=body,scores={motion=110..112}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~40
execute if entity @e[tag=boss21,tag=body,scores={motion=110..112}] as @e[tag=arm1,limit=1,tag=boss21] at @s run particle minecraft:sweep_attack ^ ^ ^2 1 1 1 1 20 force
execute if entity @e[tag=boss21,tag=body,scores={motion=95..98}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~-40
execute if entity @e[tag=boss21,tag=body,scores={motion=110}] as @e[tag=arm2,limit=1,tag=boss21] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss21,tag=body,scores={motion=110..112}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~ ~40
execute if entity @e[tag=boss21,tag=body,scores={motion=110..112}] as @e[tag=arm2,limit=1,tag=boss21] at @s run particle minecraft:sweep_attack ^ ^ ^2 1 1 1 1 20 force
execute if entity @e[tag=boss21,tag=body,scores={motion=112..116}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~1 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=112..116}] as @e[tag=boss21,tag=body] at @s if block ^ ^ ^1.5 #namespace:airs_for_mob run teleport @s ^ ^ ^1.5
execute if entity @e[tag=boss21,tag=body,scores={motion=110..112}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^2 as @e[tag=boss21battle,distance=..4] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run scoreboard players set @s commandDamage 13
execute if entity @e[tag=boss21,tag=body,scores={motion=110..112}] as @e[tag=boss21,tag=body] at @s positioned ^ ^ ^2 as @e[tag=boss21battle,distance=..4] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run effect give @s minecraft:wither 5 1 false


execute if entity @e[tag=boss21,tag=body,scores={motion=120}] as @e[tag=boss21,tag=arm2] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1179
execute if entity @e[tag=boss21,tag=body,scores={motion=120}] as @e[tag=boss21,tag=arm1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1178

execute if entity @e[tag=boss21,tag=body,scores={motion=118..121}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~2 ~9
execute if entity @e[tag=boss21,tag=body,scores={motion=118..121}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~2 ~9


execute as @e[tag=boss21,tag=body,scores={motion=130..},limit=1] at @s run function namespace:main/boss/boss21/motion/random1
execute if entity @e[tag=boss21,tag=body,scores={motion=130..},limit=1] run scoreboard players set @e[tag=boss21,tag=body] motion 0


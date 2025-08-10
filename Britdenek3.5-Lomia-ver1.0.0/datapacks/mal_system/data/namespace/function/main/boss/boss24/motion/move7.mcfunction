scoreboard players add @e[tag=boss24,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=boss24,tag=body,scores={motion2=0..},limit=1] motion2 1




execute as @e[tag=boss24,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss24] ~ ~0 ~ 
execute as @e[tag=boss24,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss24] ^-0.35 ^-0.05 ^-0.03
execute as @e[tag=boss24,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss24] ^0.35 ^-0.05 ^-0.03
execute as @e[tag=boss24,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss24] ^0.11 ^-0.8 ^ 
execute as @e[tag=boss24,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss24] ^-0.11 ^-0.8 ^ 



execute if entity @e[tag=boss24,tag=body,scores={motion=1..2}] as @e[tag=boss24,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss24] ~ ~0 ~ facing entity @e[tag=!bullet,tag=boss24battle,limit=1]
execute if entity @e[tag=boss24,tag=body,scores={motion=1..2}] as @e[tag=boss24,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss24] ~ ~0 ~ ~ 0
execute if entity @e[tag=boss24,tag=body,scores={motion=1..2}] as @e[tag=boss24,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss24] ~ ~0 ~ ~ ~
execute if entity @e[tag=boss24,tag=body,scores={motion=1..2}] as @e[tag=boss24,tag=body] at @s run teleport @e[tag=arm1,limit=1,tag=boss24] ^-0.35 ^-0.05 ^-0.03 ~ ~-80
execute if entity @e[tag=boss24,tag=body,scores={motion=1..2}] as @e[tag=boss24,tag=body] at @s run teleport @e[tag=arm2,limit=1,tag=boss24] ^0.35 ^-0.05 ^-0.03 ~ ~20
execute if entity @e[tag=boss24,tag=body,scores={motion=1..2}] as @e[tag=boss24,tag=body] at @s run teleport @e[tag=leg1,limit=1,tag=boss24] ^0.11 ^-0.8 ^ ~ ~40
execute if entity @e[tag=boss24,tag=body,scores={motion=1..2}] as @e[tag=boss24,tag=body] at @s run teleport @e[tag=leg2,limit=1,tag=boss24] ^-0.11 ^-0.8 ^ ~ ~-20



execute as @e[tag=boss24,tag=body,limit=1,scores={motion=10..16}] at @s if block ^ ^0.5 ^2 #namespace:airs_for_mob run teleport @s ^ ^ ^0.3

execute if entity @e[tag=boss24,tag=body,scores={motion=13..14}] as @e[tag=arm1,limit=1,tag=boss24] at @s run teleport @s ~ ~-0.1 ~ 
execute if entity @e[tag=boss24,tag=body,scores={motion=15..16}] as @e[tag=arm1,limit=1,tag=boss24] at @s run teleport @s ~ ~0.1 ~ 

execute if entity @e[tag=boss24,tag=body,scores={motion=13..17}] as @e[tag=arm1,limit=1,tag=boss24] at @s run teleport @s ~ ~ ~ ~ ~30
execute if entity @e[tag=boss24,tag=body,scores={motion=13..16}] as @e[tag=leg1,limit=1,tag=boss24] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss24,tag=body,scores={motion=13..16}] as @e[tag=leg2,limit=1,tag=boss24] at @s run teleport @s ~ ~ ~ ~ ~20


execute if entity @e[tag=boss24,tag=body,scores={motion=17}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^2 as @e[tag=boss24battle,distance=..4] unless score @s player = @e[tag=boss24,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss24,tag=body,scores={motion=17}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^2 run particle minecraft:explosion ~ ~0.2 ~ 2 0 2 1 10 force
execute if entity @e[tag=boss24,tag=body,scores={motion=17}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^2 run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~0.2 ~ 2 0 2 1 100 force
execute if entity @e[tag=boss24,tag=body,scores={motion=17}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^2 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0



execute if entity @e[tag=boss24,tag=body,scores={motion=20}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^5 as @e[tag=boss24battle,distance=..4] unless score @s player = @e[tag=boss24,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss24,tag=body,scores={motion=20}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^5 run particle minecraft:explosion ~ ~0.2 ~ 2 0 2 1 10 force
execute if entity @e[tag=boss24,tag=body,scores={motion=20}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^5 run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~0.2 ~ 2 0 2 1 100 force
execute if entity @e[tag=boss24,tag=body,scores={motion=20}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^5 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0

execute if entity @e[tag=boss24,tag=body,scores={motion=23}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^8 as @e[tag=boss24battle,distance=..4] unless score @s player = @e[tag=boss24,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss24,tag=body,scores={motion=23}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^8 run particle minecraft:explosion ~ ~0.2 ~ 2 0 2 1 10 force
execute if entity @e[tag=boss24,tag=body,scores={motion=23}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^8 run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~0.2 ~ 2 0 2 1 100 force
execute if entity @e[tag=boss24,tag=body,scores={motion=23}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^8 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0


execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss24,tag=body,scores={motion=26}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^13 as @e[tag=boss24battle,distance=..4] unless score @s player = @e[tag=boss24,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss24,tag=body,scores={motion=26}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^13 run particle minecraft:explosion ~ ~0.2 ~ 2 0 2 1 10 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss24,tag=body,scores={motion=26}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^13 run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~0.2 ~ 2 0 2 1 100 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss24,tag=body,scores={motion=26}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^13 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0


execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss24,tag=body,scores={motion=29}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^16 as @e[tag=boss24battle,distance=..4] unless score @s player = @e[tag=boss24,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss24,tag=body,scores={motion=29}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^16 run particle minecraft:explosion ~ ~0.2 ~ 2 0 2 1 10 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss24,tag=body,scores={motion=29}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^16 run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~0.2 ~ 2 0 2 1 100 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss24,tag=body,scores={motion=29}] as @e[tag=boss24,tag=body] at @s positioned ^ ^ ^16 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0




execute as @e[tag=boss24,tag=body,scores={motion=40..},limit=1] at @s run function namespace:main/boss/boss24/motion/random2

execute if entity @e[tag=boss24,tag=body,scores={motion=40..},limit=1] run scoreboard players set @e[tag=boss24,tag=body] motion 0

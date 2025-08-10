scoreboard players add @e[tag=boss25,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=boss25,tag=body,scores={motion2=0..},limit=1] motion2 1




execute as @e[tag=boss25,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss25] ~ ~0 ~ 
execute as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss25] ^-0.35 ^-0.05 ^-0.03
execute as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss25] ^0.35 ^-0.05 ^-0.03
execute as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss25] ^0.11 ^-0.8 ^ 
execute as @e[tag=boss25,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss25] ^-0.11 ^-0.8 ^ 



execute if entity @e[tag=boss25,tag=body,scores={motion=1..2}] as @e[tag=boss25,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss25] ~ ~0 ~ facing entity @e[tag=!bullet,tag=boss25battle,limit=1]
execute if entity @e[tag=boss25,tag=body,scores={motion=1..2}] as @e[tag=boss25,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss25] ~ ~0 ~ ~ 0
execute if entity @e[tag=boss25,tag=body,scores={motion=1..2}] as @e[tag=boss25,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss25] ~ ~0 ~ ~ ~
execute if entity @e[tag=boss25,tag=body,scores={motion=1..2}] as @e[tag=boss25,tag=body] at @s run teleport @e[tag=arm1,limit=1,tag=boss25] ^-0.35 ^-0.05 ^-0.03 ~ ~-80
execute if entity @e[tag=boss25,tag=body,scores={motion=1..2}] as @e[tag=boss25,tag=body] at @s run teleport @e[tag=arm2,limit=1,tag=boss25] ^0.35 ^-0.05 ^-0.03 ~ ~20
execute if entity @e[tag=boss25,tag=body,scores={motion=1..2}] as @e[tag=boss25,tag=body] at @s run teleport @e[tag=leg1,limit=1,tag=boss25] ^0.11 ^-0.8 ^ ~ ~40
execute if entity @e[tag=boss25,tag=body,scores={motion=1..2}] as @e[tag=boss25,tag=body] at @s run teleport @e[tag=leg2,limit=1,tag=boss25] ^-0.11 ^-0.8 ^ ~ ~-20




execute as @e[tag=boss25,tag=body,limit=1,scores={motion=10}] at @s run playsound minecraft:entity.horse.jump master @a ~ ~ ~ 2 1.1
execute as @e[tag=boss25,tag=body,limit=1,scores={motion=10}] at @s run particle minecraft:sweep_attack ~ ~0.5 ~ 1 1 1 1 40 force
execute as @e[tag=boss25,tag=body,limit=1,scores={motion=10..16}] at @s if block ^ ^0.5 ^2 #namespace:airs_for_mob run teleport @s ^ ^ ^0.8
execute as @e[tag=boss25,tag=body,limit=1,scores={motion=10..13}] at @s run teleport @s ^ ^0.8 ^
execute as @e[tag=boss25,tag=body,limit=1,scores={motion=13..16}] at @s run teleport @s ^ ^-0.8 ^


execute if entity @e[tag=boss25,tag=body,scores={motion=13..14}] as @e[tag=arm1,limit=1,tag=boss25] at @s run teleport @s ~ ~-0.1 ~ 
execute if entity @e[tag=boss25,tag=body,scores={motion=15..16}] as @e[tag=arm1,limit=1,tag=boss25] at @s run teleport @s ~ ~0.1 ~ 

execute if entity @e[tag=boss25,tag=body,scores={motion=13..17}] as @e[tag=arm1,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~30
execute if entity @e[tag=boss25,tag=body,scores={motion=13..16}] as @e[tag=leg1,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss25,tag=body,scores={motion=13..16}] as @e[tag=leg2,limit=1,tag=boss25] at @s run teleport @s ~ ~ ~ ~ ~20


execute if entity @e[tag=boss25,tag=body,scores={motion=17}] as @e[tag=boss25,tag=body] at @s positioned ^ ^ ^2 as @e[tag=boss25battle,distance=..4] unless score @s player = @e[tag=boss25,tag=body,limit=1] player run scoreboard players set @s commandDamage 15
execute if entity @e[tag=boss25,tag=body,scores={motion=17}] as @e[tag=boss25,tag=body] at @s positioned ^ ^ ^2 run particle minecraft:explosion ~ ~0.2 ~ 2 0 2 1 10 force
execute if entity @e[tag=boss25,tag=body,scores={motion=17}] as @e[tag=boss25,tag=body] at @s positioned ^ ^ ^2 run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~0.2 ~ 2 0 2 1 100 force
execute if entity @e[tag=boss25,tag=body,scores={motion=17}] as @e[tag=boss25,tag=body] at @s positioned ^ ^ ^2 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0



execute as @e[tag=boss25,tag=body,scores={motion=40..},limit=1] at @s run function namespace:main/boss/boss25/motion/random1

execute if entity @e[tag=boss25,tag=body,scores={motion=40..},limit=1] run scoreboard players set @e[tag=boss25,tag=body] motion 0

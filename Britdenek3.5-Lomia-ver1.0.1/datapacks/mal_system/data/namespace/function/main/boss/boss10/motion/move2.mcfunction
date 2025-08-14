
scoreboard players add @e[tag=boss10,tag=body,scores={motion=0..},limit=1] motion 1

execute as @e[tag=boss10,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss10] ~ ~ ~ 
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss10] ~ ~1.1 ~ 
execute as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss10] ^-1 ^1.6 ^
execute as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss10] ^1 ^1.6 ^ 
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss10] ^-1 ^-1.3 ^0.8
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss10] ^1 ^-1.3 ^0.8 
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss10] ^-1 ^-1.3 ^-0.8
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss10] ^1 ^-1.3 ^-0.8 

execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss10] ~ ~ ~ ~ ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss10] ~ ~1.1 ~ ~ ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss10] ^-1 ^1.6 ^ ~10 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss10] ^1 ^1.6 ^ ~-10 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss10] ^-1 ^-1.3 ^0.8 ~45 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss10] ^1 ^-1.3 ^0.8 ~-45 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss10] ^-1 ^-1.3 ^-0.8 ~135 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss10] ^1 ^-1.3 ^-0.8 ~-135 ~





execute if entity @e[tag=boss10,tag=body,scores={motion=2..10}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss10,tag=body,scores={motion=2..10}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~-5 ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=2..10}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~5 ~-8


execute if entity @e[tag=boss10,tag=body,scores={motion=7..8}] as @e[tag=leg1,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss10,tag=body,scores={motion=10..11}] as @e[tag=leg2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss10,tag=body,scores={motion=13..14}] as @e[tag=leg3,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss10,tag=body,scores={motion=16..17}] as @e[tag=leg4,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-20


execute if entity @e[tag=boss10,tag=body,scores={motion=35}] as @e[tag=leg1,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~40
execute if entity @e[tag=boss10,tag=body,scores={motion=35}] as @e[tag=leg2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~40
execute if entity @e[tag=boss10,tag=body,scores={motion=35}] as @e[tag=leg3,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~40
execute if entity @e[tag=boss10,tag=body,scores={motion=35}] as @e[tag=leg4,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~40
execute if entity @e[tag=boss10,tag=body,scores={motion=36}] as @e[tag=body,limit=1,tag=boss10] at @s run particle block{block_state:"minecraft:dirt"} ~ ~ ~ 2 0.1 2 1 1000 force
execute if entity @e[tag=boss10,tag=body,scores={motion=36}] as @e[tag=body,limit=1,tag=boss10] at @s run particle explosion ~ ~ ~ 2 0.1 2 1 20 force
execute if entity @e[tag=boss10,tag=body,scores={motion=36}] as @e[tag=body,limit=1,tag=boss10] at @s run playsound minecraft:block.wood.break master @a ~ ~ ~ 2 0

execute if entity @e[tag=boss10,tag=body,scores={motion=35}] as @e[tag=body1,limit=1,tag=boss10] at @s run playsound minecraft:entity.enderman.death master @a ~ ~ ~ 2 0.8
execute if entity @e[tag=boss10,tag=body,scores={motion=32..35}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss10,tag=body,scores={motion=32..35}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~15
execute if entity @e[tag=boss10,tag=body,scores={motion=32..35}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~15




#execute if entity @e[tag=boss10,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss10,tag=body] motion2 0
execute as @e[tag=boss10,tag=body,scores={motion=85..,HP=351..},limit=1] run function namespace:main/boss/boss10/motion/random1
execute as @e[tag=boss10,tag=body,scores={motion=85..,HP=..350},limit=1] run function namespace:main/boss/boss10/motion/random2

#execute if entity @e[tag=boss10,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss10,tag=body] motion 0

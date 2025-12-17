scoreboard players add @e[tag=boss20,tag=body,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss20,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss20] ~ ~0 ~
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss20] ^ ^ ^4
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^0.1 ^0.5 ^2.5
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-0.1 ^0.5 ^2.5



execute if entity @e[tag=boss20,tag=body,scores={motion=1}] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~-5.4 ~ ~ ~



execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss20] ^ ^ ^ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss20] ^ ^ ^4 ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^0.1 ^0.5 ^2.5 ~-90 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-0.1 ^0.5 ^2.5 ~90 ~


execute if entity @e[tag=boss20,tag=body,scores={motion=3}] as @e[tag=boss20,tag=body1] at @s run playsound minecraft:entity.warden.dig master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss20,tag=body,scores={motion=10..50}] as @e[tag=boss20,tag=body1] at @s run teleport @s ^ ^ ^ ~ ~-1.4

execute if entity @e[tag=boss20,tag=body,scores={motion=10..50}] as @e[tag=boss20,tag=body1] at @s run particle minecraft:block{block_state:"minecraft:black_concrete"} ~ ~0.2 ~ 1 1 1 1 100 force

execute if entity @e[tag=boss20,tag=body,scores={motion=20..46}] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~0.2 ~ ~ ~


execute if entity @e[tag=boss20,tag=body,scores={motion=30..34}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion=30..34}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion=35..44}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion=35..44}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-5

execute if entity @e[tag=boss20,tag=body,scores={motion=45..54}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion=45..54}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion=55..59}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion=55..59}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-5

execute if entity @e[tag=boss20,tag=body,scores={motion=51..65}] as @e[tag=boss20,tag=body1] at @s run teleport @s ^ ^ ^ ~ ~3


execute as @e[tag=boss20,tag=body,scores={motion=85..},limit=1] at @s run function namespace:main/boss/boss20/motion/random1
execute if entity @e[tag=boss20,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss20,tag=body] motion 0


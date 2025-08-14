scoreboard players add @e[tag=boss13,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss13] ~ ~1.3 ~ 
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] run execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss13] ^3.5 ^-2.5 ^1 
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] run execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss13] ^-3.5 ^-2.5 ^1 
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss13] ^ ^2.2 ^
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss13] ^ ^1.5 ^




execute if entity @e[tag=boss13,tag=body,scores={motion=1}] as @e[tag=body,limit=1,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss13battle,limit=1]
execute if entity @e[tag=boss13,tag=body,scores={motion=1}] as @e[tag=body,limit=1,tag=body] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss13] ~ ~1.3 ~ ~ ~
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss13] ^3.5 ^-2.5 ^1 ~-30 ~60
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss13] ^-3.5 ^-2.5 ^1 ~30 ~60
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss13] ^ ^2.2 ^ ~ ~10
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss13] ^ ^1.5 ^ ~ ~



execute if entity @e[tag=boss13,tag=body,scores={motion=22..30}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run teleport @s ^-0.6 ^0.7 ^ ~10 ~-10
execute if entity @e[tag=boss13,tag=body,scores={motion=22..30}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run teleport @s ^0.6 ^0.7 ^ ~-10 ~-10

execute if entity @e[tag=boss13,tag=body,scores={motion=60..61}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run teleport @s ^3 ^-2.6 ^-2 ~-50 ~40
execute if entity @e[tag=boss13,tag=body,scores={motion=60..61}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run teleport @s ^-3 ^-2.6 ^-2 ~50 ~40

execute if entity @e[tag=boss13,tag=body,scores={motion=61..70}] as @e[tag=left_leg,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~6 ~
execute if entity @e[tag=boss13,tag=body,scores={motion=71..90}] as @e[tag=left_leg,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~-6 ~
execute if entity @e[tag=boss13,tag=body,scores={motion=91..100}] as @e[tag=left_leg,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~6 ~
execute if entity @e[tag=boss13,tag=body,scores={motion=61..100}] as @e[tag=left_leg,limit=1,tag=boss13] at @s run playsound minecraft:entity.ravager.stunned master @a ~ ~ ~ 2 1

execute if entity @e[tag=boss13,tag=body,scores={motion=61..100}] as @e[tag=left_leg,limit=1,tag=boss13] at @s run particle minecraft:dust{color:[1.0,1.0,0.0],scale:3} ^ ^ ^3 1 1 1 1 5 force
execute if entity @e[tag=boss13,tag=body,scores={motion=61..100}] as @e[tag=left_leg,limit=1,tag=boss13] at @s run particle minecraft:dust{color:[1.0,1.0,0.0],scale:3} ^ ^ ^6 1 1 1 1 5 force
execute if entity @e[tag=boss13,tag=body,scores={motion=61..100}] as @e[tag=left_leg,limit=1,tag=boss13] at @s run particle minecraft:dust{color:[1.0,1.0,0.0],scale:3} ^ ^ ^9 1 1 1 1 5 force
execute if entity @e[tag=boss13,tag=body,scores={motion=61..100}] as @e[tag=left_leg,limit=1,tag=boss13] at @s run particle minecraft:dust{color:[1.0,1.0,0.0],scale:3} ^ ^ ^12 1 1 1 1 5 force
execute if entity @e[tag=boss13,tag=body,scores={motion=61..100}] as @e[tag=left_leg,limit=1,tag=boss13] at @s run particle minecraft:dust{color:[1.0,1.0,0.0],scale:3} ^ ^ ^15 1 1 1 1 5 force
execute if entity @e[tag=boss13,tag=body,scores={motion=61..100}] as @e[tag=left_leg,limit=1,tag=boss13] at @s positioned ^ ^ ^3 as @e[tag=boss13battle,distance=..4] unless score @s player = @e[tag=boss13,tag=body,limit=1] player run effect give @s minecraft:slowness 5 5
execute if entity @e[tag=boss13,tag=body,scores={motion=61..100}] as @e[tag=left_leg,limit=1,tag=boss13] at @s positioned ^ ^ ^6 as @e[tag=boss13battle,distance=..4] unless score @s player = @e[tag=boss13,tag=body,limit=1] player run effect give @s minecraft:slowness 5 5
execute if entity @e[tag=boss13,tag=body,scores={motion=61..100}] as @e[tag=left_leg,limit=1,tag=boss13] at @s positioned ^ ^ ^9 as @e[tag=boss13battle,distance=..4] unless score @s player = @e[tag=boss13,tag=body,limit=1] player run effect give @s minecraft:slowness 5 5
execute if entity @e[tag=boss13,tag=body,scores={motion=61..100}] as @e[tag=left_leg,limit=1,tag=boss13] at @s positioned ^ ^ ^12 as @e[tag=boss13battle,distance=..4] unless score @s player = @e[tag=boss13,tag=body,limit=1] player run effect give @s minecraft:slowness 5 5
execute if entity @e[tag=boss13,tag=body,scores={motion=61..100}] as @e[tag=left_leg,limit=1,tag=boss13] at @s positioned ^ ^ ^15 as @e[tag=boss13battle,distance=..4] unless score @s player = @e[tag=boss13,tag=body,limit=1] player run effect give @s minecraft:slowness 5 5

execute as @e[tag=boss13,tag=body,scores={motion=120..},limit=1] at @s run function namespace:main/boss/boss13/motion/random2

#scoreboard players set @e[tag=body,tag=boss13,scores={motion=120..}] motion 0



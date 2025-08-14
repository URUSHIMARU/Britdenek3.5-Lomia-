
scoreboard players add @e[tag=boss7,tag=body,scores={motion2=0..},limit=1] motion 1

execute as @e[tag=boss7,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss7] ~ ~ ~ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss7] ^-1.3 ^0.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss7] ^1.3 ^0.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss7] ^-0.5 ^-1.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss7] ^0.5 ^-1.5 ^ 
execute as @e[tag=boss7,tag=right_arm] at @s run teleport @e[tag=sword,limit=1,tag=boss7] ^ ^-2.5 ^1.5 
execute as @e[tag=boss7,tag=left_arm] at @s run teleport @e[tag=shield,limit=1,tag=boss7] ^ ^-1.5 ^0.5 

#モーション
execute if entity @e[tag=boss7,tag=body,scores={motion=1}] as @e[tag=body,tag=boss7] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=boss7battle]
execute if entity @e[tag=boss7,tag=body,scores={motion=1}] as @e[tag=body,tag=boss7] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss7] ~ ~ ~ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss7] ^-1.3 ^0.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss7] ^1.3 ^0.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss7] ^-0.5 ^-1.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss7] ^0.5 ^-1.5 ^ ~ ~


execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=right_arm] at @s run teleport @e[tag=sword,limit=1,tag=boss7] ^ ^-1.5 ^1.5 ~ ~90
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=left_arm] at @s run teleport @e[tag=shield,limit=1,tag=boss7] ^ ^-1.5 ^0.5 ~-90 ~-10





execute if entity @e[tag=boss7,tag=body,scores={motion=2..10}] as @e[tag=body1,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss7,tag=body,scores={motion=2..10}] as @e[tag=left_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~-1 ~-2
execute if entity @e[tag=boss7,tag=body,scores={motion=2..10}] as @e[tag=right_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~10 ~-6
execute if entity @e[tag=boss7,tag=body,scores={motion=2..10}] as @e[tag=sword,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~7 ~-3
execute if entity @e[tag=boss7,tag=body,scores={motion=2..10}] as @e[tag=left_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~-2 ~
execute if entity @e[tag=boss7,tag=body,scores={motion=2..10}] as @e[tag=right_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~2 ~


execute if entity @e[tag=boss7,tag=body,scores={motion=40..45}] as @e[tag=right_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~-22 ~
execute if entity @e[tag=boss7,tag=body,scores={motion=40..45}] as @e[tag=sword,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~-15 ~10

execute if entity @e[tag=boss7,tag=body,scores={motion=40}] as @e[tag=sword,limit=1,tag=boss7] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 2 1.1
execute if entity @e[tag=boss7,tag=body,scores={motion=40}] as @e[tag=sword,limit=1,tag=boss7] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 2 0.4
execute if entity @e[tag=boss7,tag=body,scores={motion=15..45}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^2 ^ 0.3 0.3 0.3 1 5 force
execute if entity @e[tag=boss7,tag=body,scores={motion=15..45}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^3 ^ 0.3 0.3 0.3 1 5 force
execute if entity @e[tag=boss7,tag=body,scores={motion=15..45}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^4 ^ 0.3 0.3 0.3 1 5 force
execute if entity @e[tag=boss7,tag=body,scores={motion=15..45}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^5 ^ 0.3 0.3 0.3 1 5 force
execute if entity @e[tag=boss7,tag=body,scores={motion=15..45}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^6 ^ 0.3 0.3 0.3 1 5 force

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=40..45}] as @e[tag=sword,limit=1,tag=boss7] at @s run summon minecraft:armor_stand ^ ^ ^1.5 {Tags:["boss7attack1"],Marker:1b,Invisible:1b}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=40..45}] as @e[tag=sword,limit=1,tag=boss7] at @s run summon minecraft:armor_stand ^ ^2 ^1.5 {Tags:["boss7attack1"],Marker:1b,Invisible:1b}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=40..45}] as @e[tag=sword,limit=1,tag=boss7] at @s run summon minecraft:armor_stand ^ ^4 ^1.5 {Tags:["boss7attack1"],Marker:1b,Invisible:1b}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=40..45}] as @e[tag=sword,limit=1,tag=boss7] at @s run summon minecraft:armor_stand ^ ^6 ^1.5 {Tags:["boss7attack1"],Marker:1b,Invisible:1b}
execute if entity @e[tag=boss7,tag=body,scores={motion=40..45}] as @e[tag=sword,limit=1,tag=boss7] at @s run summon minecraft:armor_stand ^ ^10 ^1.5 {Tags:["boss7attack1"],Marker:1b,Invisible:1b}
execute if entity @e[tag=boss7,tag=body,scores={motion=40..45}] as @e[tag=sword,limit=1,tag=boss7] at @s run summon minecraft:armor_stand ^ ^8 ^1.5 {Tags:["boss7attack1"],Marker:1b,Invisible:1b}

execute as @e[tag=boss7,tag=body,scores={motion=65..},limit=1] run function namespace:main/boss/boss7/motion/random3

#execute if entity @e[tag=boss7,tag=body,scores={motion=65..},limit=1] run scoreboard players set @e[tag=boss7,tag=body] motion 0

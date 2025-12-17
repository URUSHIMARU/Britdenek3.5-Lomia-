scoreboard players add @e[tag=boss11,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss11,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss11] ~ ~0.4 ~
execute as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss11] ^ ^1.7 ^0.5
execute as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss11] ^ ^1.7 ^0.4
execute as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss11] ^1.7 ^1.2 ^0.5 
execute as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss11] ^-1.7 ^1.2 ^0.5 
execute as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss11] ^1.5 ^ ^0.5
execute as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss11] ^-1.5 ^ ^0.5




execute if entity @e[tag=boss11,tag=body,scores={motion=1}] as @e[tag=boss11,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss11battle,limit=1,sort=nearest,distance=..20]
execute if entity @e[tag=boss11,tag=body,scores={motion=1}] as @e[tag=boss11,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss11,tag=body,scores={motion=1..2}] as @e[tag=boss11,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss11] ~ ~0.4 ~ ~ ~
execute if entity @e[tag=boss11,tag=body,scores={motion=1..2}] as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss11] ^ ^1.7 ^0.4 ~ ~
execute if entity @e[tag=boss11,tag=body,scores={motion=1..2}] as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss11] ^ ^1.7 ^0.5 ~ ~20
execute if entity @e[tag=boss11,tag=body,scores={motion=1..2}] as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss11] ^1.7 ^1.2 ^0.5 ~ ~-20
execute if entity @e[tag=boss11,tag=body,scores={motion=1..2}] as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss11] ^-1.7 ^1.2 ^0.5 ~ ~-20
execute if entity @e[tag=boss11,tag=body,scores={motion=1..2}] as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss11] ^1.5 ^ ^0.5 ~ ~
execute if entity @e[tag=boss11,tag=body,scores={motion=1..2}] as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss11] ^-1.5 ^ ^0.5 ~ ~





execute if entity @e[tag=boss11,tag=body,scores={motion=12..20}] as @e[tag=body2,limit=1,tag=boss11] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss11,tag=body,scores={motion=12..20}] as @e[tag=left_arm,limit=1,tag=boss11] at @s run teleport @s ~ ~ ~ ~-5 ~-14
execute if entity @e[tag=boss11,tag=body,scores={motion=12..20}] as @e[tag=right_arm,limit=1,tag=boss11] at @s run teleport @s ~ ~ ~ ~5 ~-14


execute if entity @e[tag=boss11,tag=body,scores={motion=34..35}] as @e[tag=left_arm,limit=1,tag=boss11] at @s run teleport @s ~ ~ ~ ~10 ~50
execute if entity @e[tag=boss11,tag=body,scores={motion=34..35}] as @e[tag=right_arm,limit=1,tag=boss11] at @s run teleport @s ~ ~ ~ ~-10 ~50
execute if entity @e[tag=boss11,tag=body,scores={motion=34..35}] as @e[tag=left_arm,limit=1,tag=boss11] at @s run particle minecraft:sweep_attack ^ ^ ^3 1.5 1.5 1.5 1 100 force
execute if entity @e[tag=boss11,tag=body,scores={motion=34..35}] as @e[tag=right_arm,limit=1,tag=boss11] at @s run particle minecraft:sweep_attack ^ ^ ^3 1.5 1.5 1.5 1 100 force
execute if entity @e[tag=boss11,tag=body,scores={motion=34}] as @e[tag=left_arm,limit=1,tag=boss11] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0.6
execute if entity @e[tag=boss11,tag=body,scores={motion=34}] as @e[tag=right_arm,limit=1,tag=boss11] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0.6
execute if entity @e[tag=boss11,tag=body,scores={motion=34..35}] as @e[tag=left_arm,tag=boss11,limit=1] at @s positioned ^ ^ ^3 as @e[tag=boss11battle,distance=..6] unless score @s player = @e[tag=boss11,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute if entity @e[tag=boss11,tag=body,scores={motion=34..35}] as @e[tag=right_arm,tag=boss11,limit=1] at @s positioned ^ ^ ^3 as @e[tag=boss11battle,distance=..6] unless score @s player = @e[tag=boss11,tag=body,limit=1] player run scoreboard players set @s commandDamage 9

execute if entity @e[tag=boss11,tag=body,scores={motion=12}] as @e[tag=head,limit=1,tag=boss11] at @s run playsound minecraft:entity.polar_bear.warning master @a ~ ~ ~ 2 0.8


execute if entity @e[tag=boss11,tag=body,scores={motion=55..},limit=1] run scoreboard players set @e[tag=boss11,tag=body] motion2 0
execute as @e[tag=boss11,tag=body,scores={motion=55..,HP=150..},limit=1] at @s if entity @e[tag=boss11battle,distance=..7] run function namespace:main/boss/boss11/motion/random11
execute as @e[tag=boss11,tag=body,scores={motion=55..,HP=150..},limit=1] at @s unless entity @e[tag=boss11battle,distance=..7] run function namespace:main/boss/boss11/motion/random12
execute as @e[tag=boss11,tag=body,scores={motion=55..,HP=..149},limit=1] at @s if entity @e[tag=boss11battle,distance=..7] run function namespace:main/boss/boss11/motion/random21
execute as @e[tag=boss11,tag=body,scores={motion=55..,HP=..149},limit=1] at @s unless entity @e[tag=boss11battle,distance=..7] run function namespace:main/boss/boss11/motion/random22

execute if entity @e[tag=boss11,tag=body,scores={motion=55..},limit=1] run scoreboard players set @e[tag=boss11,tag=body] motion 0

scoreboard players add @e[tag=boss12,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=boss12,tag=body,scores={motion2=0..},limit=1] motion2 1



execute as @e[tag=boss12,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss12] ~ ~0.4 ~
execute as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss12] ^ ^1.7 ^0.5
execute as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss12] ^ ^1.7 ^0.4
execute as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss12] ^1.7 ^1.2 ^0.5 
execute as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss12] ^-1.7 ^1.2 ^0.5 
execute as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss12] ^1.5 ^ ^0.5
execute as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss12] ^-1.5 ^ ^0.5




execute if entity @e[tag=boss12,tag=body,scores={motion2=1}] as @e[tag=boss12,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss12] ~ ~ ~ facing entity @e[tag=boss12battle,sort=nearest,limit=1,distance=5..]
execute if entity @e[tag=boss12,tag=body,scores={motion2=1}] as @e[tag=boss12,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss12] ~ ~ ~ ~ 0

execute if entity @e[tag=boss12,tag=body,scores={motion2=1}] as @e[tag=boss12,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss12] ~ ~0.4 ~ ~ ~
execute if entity @e[tag=boss12,tag=body,scores={motion2=1}] as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss12] ^ ^1.7 ^0.5 ~ ~20
execute if entity @e[tag=boss12,tag=body,scores={motion2=1}] as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss12] ^1.5 ^ ^0.5 ~ ~
execute if entity @e[tag=boss12,tag=body,scores={motion2=1}] as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss12] ^-1.5 ^ ^0.5 ~ ~
execute if entity @e[tag=boss12,tag=body,scores={motion2=1}] as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss12] ^1.7 ^1.2 ^0.5 ~-10 ~-10
execute if entity @e[tag=boss12,tag=body,scores={motion2=1}] as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss12] ^-1.7 ^1.2 ^0.5 ~10 ~-90
execute if entity @e[tag=boss12,tag=body,scores={motion2=1}] as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss12] ^ ^1.7 ^0.4 ~ ~



execute if entity @e[tag=boss12,tag=body,scores={motion2=4}] as @e[tag=body2,limit=1,tag=boss12] at @s run playsound minecraft:entity.polar_bear.step master @a ~ ~ ~ 2 0.9
execute if entity @e[tag=boss12,tag=body,scores={motion2=4}] as @e[tag=body2,limit=1,tag=boss12] at @s run playsound minecraft:entity.polar_bear.step master @a ~ ~ ~ 2 0.9


execute if entity @e[tag=boss12,tag=body,scores={motion2=1..4}] as @e[tag=body2,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss12,tag=body,scores={motion2=1..4}] as @e[tag=left_leg,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~7
execute if entity @e[tag=boss12,tag=body,scores={motion2=1..4}] as @e[tag=right_leg,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~-7

execute if entity @e[tag=boss12,tag=body,scores={motion2=5..12}] as @e[tag=body2,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss12,tag=body,scores={motion2=5..12}] as @e[tag=left_leg,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~-7
execute if entity @e[tag=boss12,tag=body,scores={motion2=5..12}] as @e[tag=right_leg,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~7

execute if entity @e[tag=boss12,tag=body,scores={motion2=13..16}] as @e[tag=body2,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss12,tag=body,scores={motion2=13..16}] as @e[tag=left_leg,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~7
execute if entity @e[tag=boss12,tag=body,scores={motion2=13..16}] as @e[tag=right_leg,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~-7

execute if entity @e[tag=boss12,tag=body,scores={motion2=13..14}] as @e[tag=right_arm,tag=boss12,limit=1] at @s run teleport @s ~ ~ ~ ~10 ~40
execute if entity @e[tag=boss12,tag=body,scores={motion2=13..14}] as @e[tag=right_arm,tag=boss12,limit=1] at @s run particle minecraft:sweep_attack ^ ^ ^3 1.6 1.6 1.6 1 30 force
execute if entity @e[tag=boss12,tag=body,scores={motion2=13}] as @e[tag=right_arm,tag=boss12,limit=1] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0.7
execute if entity @e[tag=boss12,tag=body,scores={motion2=13..14}] as @e[tag=right_arm,tag=boss12,limit=1] at @s positioned ^ ^ ^3 as @e[tag=boss12battle,distance=..5] unless score @s player = @e[tag=boss12,tag=body,limit=1] player run scoreboard players set @s commandDamage 17


execute if entity @e[tag=boss12,tag=body,scores={motion2=21}] as @e[tag=boss12,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss12] ~ ~0.4 ~ ~ ~
execute if entity @e[tag=boss12,tag=body,scores={motion2=21}] as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss12] ^ ^1.7 ^0.5 ~ ~20
execute if entity @e[tag=boss12,tag=body,scores={motion2=21}] as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss12] ^1.5 ^ ^0.5 ~ ~
execute if entity @e[tag=boss12,tag=body,scores={motion2=21}] as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss12] ^-1.5 ^ ^0.5 ~ ~
execute if entity @e[tag=boss12,tag=body,scores={motion2=21}] as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss12] ^1.7 ^1.2 ^0.5 ~-10 ~-90
execute if entity @e[tag=boss12,tag=body,scores={motion2=21}] as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss12] ^-1.7 ^1.2 ^0.5 ~10 ~-10
execute if entity @e[tag=boss12,tag=body,scores={motion2=21}] as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss12] ^ ^1.7 ^0.4 ~ ~

execute if entity @e[tag=boss12,tag=body,scores={motion2=21..24}] as @e[tag=body2,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss12,tag=body,scores={motion2=21..24}] as @e[tag=left_leg,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~7
execute if entity @e[tag=boss12,tag=body,scores={motion2=21..24}] as @e[tag=right_leg,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~-7

execute if entity @e[tag=boss12,tag=body,scores={motion2=25..32}] as @e[tag=body2,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss12,tag=body,scores={motion2=25..32}] as @e[tag=left_leg,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~-7
execute if entity @e[tag=boss12,tag=body,scores={motion2=25..32}] as @e[tag=right_leg,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~7

execute if entity @e[tag=boss12,tag=body,scores={motion2=33..36}] as @e[tag=body2,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss12,tag=body,scores={motion2=33..36}] as @e[tag=left_leg,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~7
execute if entity @e[tag=boss12,tag=body,scores={motion2=33..36}] as @e[tag=right_leg,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~-7


execute if entity @e[tag=boss12,tag=body,scores={motion2=33..34}] as @e[tag=left_arm,tag=boss12,limit=1] at @s run teleport @s ~ ~ ~ ~-10 ~40
execute if entity @e[tag=boss12,tag=body,scores={motion2=33..34}] as @e[tag=left_arm,tag=boss12,limit=1] at @s run particle minecraft:sweep_attack ^ ^ ^3 1.6 1.6 1.6 1 30 force
execute if entity @e[tag=boss12,tag=body,scores={motion2=33}] as @e[tag=left_arm,tag=boss12,limit=1] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0.7

execute if entity @e[tag=boss12,tag=body,scores={motion2=33..34}] as @e[tag=left_arm,tag=boss12,limit=1] at @s positioned ^ ^ ^3 as @e[tag=boss12battle,distance=..5] unless score @s player = @e[tag=boss12,tag=body,limit=1] player run scoreboard players set @s commandDamage 17


tag @e[tag=bossStop,tag=boss12,tag=body] remove bossStop
execute as @e[tag=boss12] at @s unless block ^ ^ ^2 #namespace:airs_for_mob unless block ^ ^ ^3 #namespace:airs_for_mob run tag @e[tag=boss12,tag=body] add bossStop
execute if entity @e[tag=boss12,tag=body] as @e[tag=boss12,tag=body] at @s if block ^ ^-0.5 ^ #namespace:airs_for_mob run teleport @s ~ ~-0.5 ~

execute if entity @e[tag=boss12,tag=body] as @e[tag=boss12,tag=body,tag=!bossStop,scores={motion2=1..16}] at @s run teleport @s ^ ^ ^0.4
execute if entity @e[tag=boss12,tag=body] as @e[tag=boss12,tag=body,tag=!bossStop,scores={motion2=21..36}] at @s run teleport @s ^ ^ ^0.4



execute if entity @e[tag=boss12,tag=body,scores={motion2=40..},limit=1] run scoreboard players set @e[tag=boss12,tag=body] motion2 0


execute if entity @e[tag=boss12,tag=body,scores={motion=120..},limit=1] run scoreboard players set @e[tag=boss12,tag=body] motion2 0
execute as @e[tag=boss12,tag=body,scores={motion=120..,HP=200..},limit=1] at @s if entity @e[tag=boss12battle,distance=..7] run function namespace:main/boss/boss12/motion/random11
execute as @e[tag=boss12,tag=body,scores={motion=120..,HP=200..},limit=1] at @s unless entity @e[tag=boss12battle,distance=..7] run function namespace:main/boss/boss12/motion/random12
execute as @e[tag=boss12,tag=body,scores={motion=120..,HP=..199},limit=1] at @s if entity @e[tag=boss12battle,distance=..7] run function namespace:main/boss/boss12/motion/random21
execute as @e[tag=boss12,tag=body,scores={motion=120..,HP=..199},limit=1] at @s unless entity @e[tag=boss12battle,distance=..7] run function namespace:main/boss/boss12/motion/random22


execute if entity @e[tag=boss12,tag=body,scores={motion=120..},limit=1] run scoreboard players set @e[tag=boss12,tag=body] motion 0

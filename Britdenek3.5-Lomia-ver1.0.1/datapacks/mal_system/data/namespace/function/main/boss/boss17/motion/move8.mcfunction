scoreboard players add @e[tag=boss17,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss17] ~ ~0.7 ~ 
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss17] ^ ^0.1 ^2.3
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss17] ^-0.7 ^-0.2 ^2.2
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss17] ^0.7 ^-0.2 ^2.2
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss17] ^-0.8 ^-0.35 ^-0.6
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss17] ^0 ^-0.35 ^-0.6



execute if entity @e[tag=boss17,tag=body,scores={motion=1}] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss17] ~ ~0 ~ facing entity @e[tag=!bullet,tag=boss17battle,limit=1]
execute if entity @e[tag=boss17,tag=body,scores={motion=1}] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss17] ~ ~0 ~ ~ 0

execute if entity @e[tag=boss17,tag=body,scores={motion=1}] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=boss17,tag=!body] @s
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss17] ~ ~0.7 ~ ~ 0
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss17] ^ ^0.1 ^2.3 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss17] ^-0.7 ^-0.2 ^2.2 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss17] ^0.7 ^-0.2 ^2.2 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss17] ^-0.8 ^-0.35 ^-0.6 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss17] ^0 ^-0.35 ^-0.6 ~ ~






execute if entity @e[tag=boss17,tag=body,scores={motion=21..23}] as @e[tag=boss17,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss17,tag=body,scores={motion=21..23}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss17,tag=body,scores={motion=21..23}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss17,tag=body,scores={motion=21..23}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=21..23}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~



execute if entity @e[tag=boss17,tag=body,scores={motion=21..47}] as @e[tag=boss17,tag=leg3] at @s run teleport @s ~ ~0.3 ~ ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=21..47}] as @e[tag=boss17,tag=leg4] at @s run teleport @s ~ ~0.3 ~ ~ ~


execute if entity @e[tag=boss17,tag=body,scores={motion=23}] as @e[tag=boss17,tag=body1] at @s run playsound minecraft:entity.skeleton_horse.death master @a ~ ~ ~ 2 1.3


execute if entity @e[tag=boss17,tag=body,scores={motion=24..25}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss17,tag=body,scores={motion=24..25}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=26..27}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=26..27}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss17,tag=body,scores={motion=28..29}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss17,tag=body,scores={motion=28..29}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=30..31}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=30..31}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss17,tag=body,scores={motion=32..33}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss17,tag=body,scores={motion=32..33}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=34..35}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=34..35}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss17,tag=body,scores={motion=36..37}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss17,tag=body,scores={motion=36..37}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=38..39}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=38..39}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~2


execute if entity @e[tag=boss17,tag=body,scores={motion=40..41}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss17,tag=body,scores={motion=40..41}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=42..43}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=42..43}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss17,tag=body,scores={motion=44..45}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss17,tag=body,scores={motion=44..45}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=46..47}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=46..47}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss17,tag=body,scores={motion=48..49}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss17,tag=body,scores={motion=48..49}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=50..51}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=50..51}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss17,tag=body,scores={motion=52..53}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss17,tag=body,scores={motion=52..53}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=53..55}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=53..55}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~2


execute if entity @e[tag=boss17,tag=body,scores={motion=57..60}] as @e[tag=boss17,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss17,tag=body,scores={motion=57..60}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss17,tag=body,scores={motion=57..60}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~20

execute if entity @e[tag=boss17,tag=body,scores={motion=61}] as @e[tag=boss17,tag=body] at @s positioned ^ ^0.5 ^2 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss17,tag=body,scores={motion=61}] as @e[tag=boss17,tag=body] at @s positioned ^ ^0.5 ^2 run particle minecraft:explosion ~ ~ ~ 1 1 1 1 4 force
execute if entity @e[tag=boss17,tag=body,scores={motion=61}] as @e[tag=boss17,tag=body] at @s positioned ^ ^ ^2 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 9

execute if entity @e[tag=boss17,tag=body,scores={motion=64}] as @e[tag=boss17,tag=body] at @s positioned ^ ^0.5 ^6 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss17,tag=body,scores={motion=64}] as @e[tag=boss17,tag=body] at @s positioned ^-2 ^0.5 ^6 run particle minecraft:explosion ~ ~ ~ 1 1 1 1 4 force
execute if entity @e[tag=boss17,tag=body,scores={motion=64}] as @e[tag=boss17,tag=body] at @s positioned ^2 ^0.5 ^6 run particle minecraft:explosion ~ ~ ~ 1 1 1 1 4 force
execute if entity @e[tag=boss17,tag=body,scores={motion=64}] as @e[tag=boss17,tag=body] at @s positioned ^-2 ^ ^6 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute if entity @e[tag=boss17,tag=body,scores={motion=64}] as @e[tag=boss17,tag=body] at @s positioned ^2 ^ ^6 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 9

execute if entity @e[tag=boss17,tag=body,scores={motion=67}] as @e[tag=boss17,tag=body] at @s positioned ^ ^0.5 ^10 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss17,tag=body,scores={motion=67}] as @e[tag=boss17,tag=body] at @s positioned ^-4 ^0.5 ^10 run particle minecraft:explosion ~ ~ ~ 1 1 1 1 4 force
execute if entity @e[tag=boss17,tag=body,scores={motion=67}] as @e[tag=boss17,tag=body] at @s positioned ^4 ^0.5 ^10 run particle minecraft:explosion ~ ~ ~ 1 1 1 1 4 force
execute if entity @e[tag=boss17,tag=body,scores={motion=67}] as @e[tag=boss17,tag=body] at @s positioned ^ ^0.5 ^10 run particle minecraft:explosion ~ ~ ~ 1 1 1 1 4 force
execute if entity @e[tag=boss17,tag=body,scores={motion=67}] as @e[tag=boss17,tag=body] at @s positioned ^-4 ^ ^10 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute if entity @e[tag=boss17,tag=body,scores={motion=67}] as @e[tag=boss17,tag=body] at @s positioned ^4 ^ ^10 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute if entity @e[tag=boss17,tag=body,scores={motion=67}] as @e[tag=boss17,tag=body] at @s positioned ^ ^ ^10 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 9

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=70}] as @e[tag=boss17,tag=body] at @s positioned ^ ^0.5 ^14 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=70}] as @e[tag=boss17,tag=body] at @s positioned ^-4 ^0.5 ^14 run particle minecraft:explosion ~ ~ ~ 1 1 1 1 4 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=70}] as @e[tag=boss17,tag=body] at @s positioned ^4 ^0.5 ^14 run particle minecraft:explosion ~ ~ ~ 1 1 1 1 4 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=70}] as @e[tag=boss17,tag=body] at @s positioned ^ ^0.5 ^14 run particle minecraft:explosion ~ ~ ~ 1 1 1 1 4 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=70}] as @e[tag=boss17,tag=body] at @s positioned ^-4 ^ ^14 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=70}] as @e[tag=boss17,tag=body] at @s positioned ^4 ^ ^14 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=70}] as @e[tag=boss17,tag=body] at @s positioned ^ ^ ^14 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 9


#execute if entity @e[tag=boss17,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss17,tag=body] bossmove 3
execute as @e[tag=boss17,tag=body,scores={motion=85..},limit=1] at @s run function namespace:main/boss/boss17/motion/random3

execute if entity @e[tag=boss17,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss17,tag=body] motion 0





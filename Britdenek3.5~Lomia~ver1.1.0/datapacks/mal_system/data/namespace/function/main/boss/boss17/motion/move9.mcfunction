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






execute if entity @e[tag=boss17,tag=body,scores={motion=21..23}] as @e[tag=boss17,tag=head] at @s run teleport @s ~ ~ ~ ~ ~30
execute if entity @e[tag=boss17,tag=body,scores={motion=21..23}] as @e[tag=boss17,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss17,tag=body,scores={motion=21..23}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-11
execute if entity @e[tag=boss17,tag=body,scores={motion=21..23}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-11
execute if entity @e[tag=boss17,tag=body,scores={motion=23}] as @e[tag=boss17,tag=body1] at @s run playsound minecraft:entity.skeleton_horse.ambient master @a ~ ~ ~ 2 1.1


execute if entity @e[tag=boss17,tag=body,scores={motion=60..62}] as @e[tag=boss17,tag=head] at @s run teleport @s ~ ~ ~ ~ ~-25

execute if entity @e[tag=boss17,tag=body,scores={motion=63..72}] as @e[tag=boss17,tag=head] at @s run teleport @s ~ ~ ~ ~5 ~
execute if entity @e[tag=boss17,tag=body,scores={motion=73..92}] as @e[tag=boss17,tag=head] at @s run teleport @s ~ ~ ~ ~-5 ~
execute if entity @e[tag=boss17,tag=body,scores={motion=93..102}] as @e[tag=boss17,tag=head] at @s run teleport @s ~ ~ ~ ~5 ~

execute if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1 ^2 run particle minecraft:dust{color:[255,25,255],scale:1} ~ ~ ~ 1 1 1 1 20 force
execute if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1 ^2 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 8
execute if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1 ^2 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run effect give @s minecraft:wither 5 1
execute if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1 ^4 run particle minecraft:dust{color:[255,25,255],scale:1} ~ ~ ~ 1 1 1 1 20 force
execute if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1 ^4 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 8
execute if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1 ^4 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run effect give @s minecraft:wither 5 1
execute if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1 ^6 run particle minecraft:dust{color:[255,25,255],scale:1} ~ ~ ~ 1 1 1 1 20 force
execute if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1 ^6 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 8
execute if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1 ^6 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run effect give @s minecraft:wither 5 1
execute if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1 ^8 run particle minecraft:dust{color:[255,25,255],scale:1} ~ ~ ~ 1 1 1 1 20 force
execute if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1 ^8 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 8
execute if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1 ^8 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run effect give @s minecraft:wither 5 1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1.5 ^10 run particle minecraft:dust{color:[255,25,255],scale:1} ~ ~ ~ 1 1 1 1 20 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1.5 ^10 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 8
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^1.5 ^10 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run effect give @s minecraft:wither 5 1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^2 ^12 run particle minecraft:dust{color:[255,25,255],scale:1} ~ ~ ~ 1 1 1 1 20 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^2 ^12 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 8
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^2 ^12 as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run effect give @s minecraft:wither 5 1

execute if entity @e[tag=boss17,tag=body,scores={motion=62..102}] as @e[tag=boss17,tag=head] at @s positioned ^ ^ ^1 run playsound minecraft:entity.polar_bear.warning master @a ~ ~ ~ 2 0.8

#execute if entity @e[tag=boss17,tag=body,scores={motion=120..},limit=1] run scoreboard players set @e[tag=boss17,tag=body] bossmove 3
execute as @e[tag=boss17,tag=body,scores={motion=120..},limit=1] at @s run function namespace:main/boss/boss17/motion/random3

execute if entity @e[tag=boss17,tag=body,scores={motion=120..},limit=1] run scoreboard players set @e[tag=boss17,tag=body] motion 0





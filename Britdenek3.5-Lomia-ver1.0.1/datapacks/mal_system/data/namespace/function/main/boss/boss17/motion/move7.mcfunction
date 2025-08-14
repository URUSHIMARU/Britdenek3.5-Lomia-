scoreboard players add @e[tag=boss17,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=boss17,tag=body,scores={motion2=0..},limit=1] motion2 1

execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss17] ~ ~0 ~ facing entity @e[tag=!bullet,tag=boss17battle,limit=1]
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss17] ~ ~0 ~ ~ 0

execute if entity @e[tag=boss17,tag=body,scores={motion=1}] run tag @e[tag=boss17,tag=body,limit=1] remove stop
execute as @e[tag=boss17,tag=body,limit=1,scores={motion=1..15,motion2=2..13}] at @s if block ^ ^0.5 ^-3 #namespace:airs_for_mob run teleport @s ^ ^ ^-0.6

execute as @e[tag=boss17,tag=body,limit=1,scores={motion=1..15,motion2=2..13}] at @s if block ^ ^0.5 ^-3 #namespace:airs_for_mob run teleport @s ^ ^ ^-0.6


execute as @e[tag=boss17,tag=body,limit=1,scores={motion=16..90}] at @s unless block ^ ^0.7 ^4 #namespace:airs_for_mob run tag @s add stop
execute as @e[tag=boss17,tag=body,limit=1,scores={motion=16..90,motion2=2..13}] at @s if block ^ ^0.5 ^4 #namespace:airs_for_mob run teleport @s ^ ^ ^0.6
execute as @e[tag=boss17,tag=body,limit=1,scores={motion=16..90}] at @s unless block ^ ^0.7 ^3 #namespace:airs_for_mob run tag @s add stop
execute as @e[tag=boss17,tag=body,limit=1,scores={motion=16..90,motion2=2..13}] at @s if block ^ ^0.5 ^4 #namespace:airs_for_mob run teleport @s ^ ^ ^0.6

execute as @e[tag=boss17,tag=body,limit=1,scores={motion2=2..4,motion=..90}] at @s run teleport @s ^ ^1.6 ^

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=45}] as @e[tag=boss17,tag=body,limit=1] at @s run loot spawn ~ ~400 ~ loot namespace:random/random3
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=45}] as @e[tag=boss17,tag=body,limit=1] at @s positioned ~ ~400 ~ if entity @e[nbt={Item:{id:"minecraft:stone",Count:2b}},type=item,distance=..3] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss17] ~ ~0 ~ ~30 0
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=45}] as @e[tag=boss17,tag=body,limit=1] at @s positioned ~ ~400 ~ if entity @e[nbt={Item:{id:"minecraft:stone",Count:3b}},type=item,distance=..3] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss17] ~ ~0 ~ ~-30 0

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss17,tag=body,scores={motion=45}] as @e[tag=boss17,tag=body,limit=1] at @s positioned ~ ~400 ~ run kill @e[type=item,distance=..3]



execute as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss17] ~ ~0.7 ~ 
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss17] ^ ^0.1 ^2.3
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss17] ^-0.7 ^-0.2 ^2.2
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss17] ^0.7 ^-0.2 ^2.2
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss17] ^-0.8 ^-0.35 ^-0.6
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss17] ^0 ^-0.35 ^-0.6


execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss17] ~ ~0.7 ~ ~ 0
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss17] ^ ^0.1 ^2.3 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss17] ^-0.7 ^-0.2 ^2.2 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss17] ^0.7 ^-0.2 ^2.2 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss17] ^-0.8 ^-0.35 ^-0.6 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss17] ^0 ^-0.35 ^-0.6 ~ ~



#歩行
execute if entity @e[tag=boss17,tag=body,scores={motion2=2,motion=..90}] as @e[tag=boss17,tag=body] at @s run playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 2 1.1
execute if entity @e[tag=boss17,tag=body,scores={motion2=2,motion=..90}] as @e[tag=boss17,tag=body] at @s run particle minecraft:sweep_attack ~ ~-0.8 ~ 1 0.1 1 1 20 force
execute if entity @e[tag=boss17,tag=body,scores={motion2=2,motion=..90}] as @e[tag=boss17,tag=body] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~-0.8 ~ 2 0 2 1 100 force
execute if entity @e[tag=boss17,tag=body,scores={motion2=1..2}] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss17] ~ ~0.7 ~ ~ 0
execute if entity @e[tag=boss17,tag=body,scores={motion2=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss17] ^ ^0.1 ^2.3 
execute if entity @e[tag=boss17,tag=body,scores={motion2=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss17] ^-0.7 ^-0.2 ^2.2 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion2=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss17] ^0.7 ^-0.2 ^2.2 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion2=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss17] ^-0.8 ^-0.35 ^-0.6 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion2=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss17] ^0 ^-0.35 ^-0.6 ~ ~

execute if entity @e[tag=boss17,tag=body,scores={motion2=2..4,motion=..90}] as @e[tag=leg1,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~15
execute if entity @e[tag=boss17,tag=body,scores={motion2=2..4,motion=..90}] as @e[tag=leg2,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~15
execute if entity @e[tag=boss17,tag=body,scores={motion2=2..4,motion=..90}] as @e[tag=leg4,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~-15
execute if entity @e[tag=boss17,tag=body,scores={motion2=2..4,motion=..90}] as @e[tag=leg3,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~-15

execute if entity @e[tag=boss17,tag=body,scores={motion2=5..10,motion=..90}] as @e[tag=leg1,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~-15
execute if entity @e[tag=boss17,tag=body,scores={motion2=5..10,motion=..90}] as @e[tag=leg2,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~-15
execute if entity @e[tag=boss17,tag=body,scores={motion2=5..10,motion=..90}] as @e[tag=leg4,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~15
execute if entity @e[tag=boss17,tag=body,scores={motion2=5..10,motion=..90}] as @e[tag=leg3,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~15

execute if entity @e[tag=boss17,tag=body,scores={motion2=11..13,motion=..90}] as @e[tag=leg1,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~15
execute if entity @e[tag=boss17,tag=body,scores={motion2=11..13,motion=..90}] as @e[tag=leg2,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~15
execute if entity @e[tag=boss17,tag=body,scores={motion2=11..13,motion=..90}] as @e[tag=leg4,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~-15
execute if entity @e[tag=boss17,tag=body,scores={motion2=11..13,motion=..90}] as @e[tag=leg3,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~-15
scoreboard players set @e[tag=boss17,tag=body,scores={motion2=15..},limit=1] motion2 0


#頭角度
execute if entity @e[tag=boss17,tag=body,scores={motion=15..16}] as @e[tag=head,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~50
execute if entity @e[tag=boss17,tag=body,scores={motion=85..86}] as @e[tag=head,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~-50
execute if entity @e[tag=boss17,tag=body,scores={motion=89..90}] as @e[tag=head,limit=1,tag=boss17] at @s run teleport @s ~ ~ ~ ~ ~-10

#ダメージ判定
execute as @e[tag=boss17,tag=body,limit=1,scores={motion=16..90}] at @s as @e[tag=boss17,tag=head] at @s positioned ^ ^ ^0.5 positioned ~ ~1 ~ run particle minecraft:sonic_boom ~ ~ ~ 1 1 1 1 1 force
execute as @e[tag=boss17,tag=body,limit=1,scores={motion=16..90}] at @s as @e[tag=boss17,tag=head] at @s positioned ^ ^ ^0.5 positioned ~ ~1 ~ as @e[tag=boss17battle,distance=..3] unless score @s player = @e[tag=boss17,tag=body,limit=1] player run scoreboard players set @s commandDamage 8

execute as @e[tag=boss17,tag=body,limit=1,tag=stop] at @s run function namespace:main/boss/boss17/motion/random1
execute if entity @e[tag=boss17,tag=body,scores={motion=110..},limit=1] as @e[tag=boss17,tag=body] at @s run function namespace:main/boss/boss17/motion/random3
execute if entity @e[tag=boss17,tag=body,scores={motion=110..},limit=1] run scoreboard players set @e[tag=boss17,tag=body] motion 0



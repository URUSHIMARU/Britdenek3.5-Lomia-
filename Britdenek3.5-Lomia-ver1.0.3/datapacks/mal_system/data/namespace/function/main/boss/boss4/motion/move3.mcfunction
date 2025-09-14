#à íuèÓïÒï€ë∂
scoreboard players add @e[tag=boss4,tag=body,scores={motion=0..},limit=1] motion 1
tag @e[tag=boss4,tag=body,tag=stop1,limit=1] remove stop1
tag @e[tag=boss4,tag=body,tag=stop2,limit=1] remove stop2
execute as @e[tag=boss4,tag=head] at @s positioned ^ ^ ^2 if entity @e[tag=boss4battle,distance=..2.5] run tag @e[tag=boss4,tag=body,limit=1] add stop1
scoreboard players add @e[tag=boss4,tag=body,limit=1] bossskill2 1
tag @e[tag=boss4,tag=body,scores={bossskill2=160..}] add stop2
execute as @e[tag=boss4walk] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run tag @e[tag=boss4,tag=body,limit=1] add stop2
execute as @e[tag=boss4,tag=body,tag=!stop1] at @s run teleport @s ^ ^ ^0.2

execute if entity @e[tag=boss4,tag=body,scores={HP=..140}] as @e[tag=boss4,tag=head] at @s positioned ^ ^ ^2 if entity @e[tag=boss4battle,distance=..4] run tag @e[tag=boss4,tag=body,limit=1] add stop1
execute if entity @e[tag=boss4,tag=body,scores={HP=..140}] as @e[tag=boss4walk] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run tag @e[tag=boss4,tag=body,limit=1] add stop2
execute if entity @e[tag=boss4,tag=body,scores={HP=..140}] as @e[tag=boss4,tag=body,tag=!stop1] at @s run teleport @s ^ ^ ^0.2


execute as @e[tag=boss4,tag=body,tag=stop1,limit=1] at @s run function namespace:main/boss/boss4/motion/random1
execute as @e[tag=boss4,tag=body,tag=stop2,limit=1] at @s run function namespace:main/boss/boss4/motion/random2

#èâä˙
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss4battle,limit=1,sort=nearest]
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body] at @s run teleport @e[tag=boss4,limit=1,tag=body1] ^ ^0 ^ ~ ~-30
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=body2] ^ ^-0.1 ^-1 ~ ~30
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=head] ^ ^-0.3 ^3 ~ ~30
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg1] ^2 ^ ^0.3 ~-50 ~40
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg2] ^2 ^ ^-0.3 ~-120 ~40
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg3] ^-2 ^ ^0.3 ~50 ~40
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg4] ^-2 ^ ^-0.3 ~120 ~40
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm1] ^-1.6 ^ ^2.3 ~40 ~40
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm2] ^1.6 ^ ^2.3 ~-40 ~40


#èÌéû

execute as @e[tag=boss4,tag=body] at @s run teleport @e[tag=boss4,limit=1,tag=body1] ^ ^0 ^
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=body2] ^ ^-0.1 ^-1
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=head] ^ ^-0.3 ^3
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg1] ^2 ^ ^0.3
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg2] ^2 ^ ^-0.3
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg3] ^-2 ^ ^0.3
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg4] ^-2 ^ ^-0.3
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm1] ^-1.6 ^ ^2.3
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm2] ^1.6 ^ ^2.3


#à–ädÉÇÅ[ÉVÉáÉì
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body] at @s run playsound minecraft:entity.spider.step master @a ~ ~ ~ 0.6 0.8

execute if entity @e[tag=boss4,tag=body,scores={motion=1..3}] as @e[tag=boss4,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss4,tag=body,scores={motion=1..3}] as @e[tag=boss4,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss4,tag=body,scores={motion=1..3}] as @e[tag=boss4,tag=leg3] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss4,tag=body,scores={motion=1..3}] as @e[tag=boss4,tag=leg4] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss4,tag=body,scores={motion=1..3}] as @e[tag=boss4,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss4,tag=body,scores={motion=1..3}] as @e[tag=boss4,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss4,tag=body,scores={motion=4..8}] as @e[tag=boss4,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss4,tag=body,scores={motion=4..8}] as @e[tag=boss4,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss4,tag=body,scores={motion=4..8}] as @e[tag=boss4,tag=leg3] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss4,tag=body,scores={motion=4..8}] as @e[tag=boss4,tag=leg4] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss4,tag=body,scores={motion=4..8}] as @e[tag=boss4,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss4,tag=body,scores={motion=4..8}] as @e[tag=boss4,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-2


execute if entity @e[tag=boss4,tag=body,scores={motion=9..11}] as @e[tag=boss4,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss4,tag=body,scores={motion=9..11}] as @e[tag=boss4,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss4,tag=body,scores={motion=9..11}] as @e[tag=boss4,tag=leg3] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss4,tag=body,scores={motion=9..11}] as @e[tag=boss4,tag=leg4] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss4,tag=body,scores={motion=9..11}] as @e[tag=boss4,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss4,tag=body,scores={motion=9..11}] as @e[tag=boss4,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-2



execute if entity @e[tag=boss4,tag=body,scores={motion=11..},limit=1] run scoreboard players set @e[tag=boss4,tag=body] motion 0




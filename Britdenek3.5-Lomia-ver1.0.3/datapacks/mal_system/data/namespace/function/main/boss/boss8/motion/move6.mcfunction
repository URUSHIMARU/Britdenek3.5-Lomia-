
scoreboard players add @e[tag=boss8,tag=body,scores={motion2=0..},limit=1] motion 1


execute as @e[tag=boss8,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss8] ~ ~-0.5 ~ ~ ~
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss8] ^ ^3.2 ^ 
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss8] ^-0.7 ^2.5 ^
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss8] ^0.7 ^2.5 ^
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss8] ^ ^ ^ 

execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss8battle,limit=1,sort=nearest]
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss8] ~ ~ ~ ~ ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss8] ^ ^3.2 ^ ~ ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss8] ^-0.7 ^2.5 ^ ~90 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss8] ^0.7 ^2.5 ^ ~-90 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss8] ^ ^ ^ ~ ~




execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~0.2
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=body1,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~14 ~-6
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-14 ~-6
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=body2,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-1


execute if entity @e[tag=boss8,tag=body,scores={motion=40..40}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-12
execute if entity @e[tag=boss8,tag=body,scores={motion=40..40}] as @e[tag=body1,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss8,tag=body,scores={motion=40..40}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-120 ~45
execute if entity @e[tag=boss8,tag=body,scores={motion=40..40}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~120 ~45

execute if entity @e[tag=boss8,tag=body,scores={motion=41..100}] as @e[tag=head,limit=1,tag=boss8] at @s run particle minecraft:explosion ~ ~ ~ 4 3 4 1 1 force
execute if entity @e[tag=boss8,tag=body,scores={motion=41..100}] as @e[tag=head,limit=1,tag=boss8] at @s run particle minecraft:note ~ ~ ~ 4 3 4 1 30 force
execute if entity @e[tag=boss8,tag=body,scores={motion=41}] as @e[tag=head,limit=1,tag=boss8] at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss8,tag=body,scores={motion=46}] as @e[tag=head,limit=1,tag=boss8] at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss8,tag=body,scores={motion=51}] as @e[tag=head,limit=1,tag=boss8] at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss8,tag=body,scores={motion=56}] as @e[tag=head,limit=1,tag=boss8] at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss8,tag=body,scores={motion=61}] as @e[tag=head,limit=1,tag=boss8] at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss8,tag=body,scores={motion=66}] as @e[tag=head,limit=1,tag=boss8] at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss8,tag=body,scores={motion=71}] as @e[tag=head,limit=1,tag=boss8] at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss8,tag=body,scores={motion=76}] as @e[tag=head,limit=1,tag=boss8] at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss8,tag=body,scores={motion=81}] as @e[tag=head,limit=1,tag=boss8] at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss8,tag=body,scores={motion=86}] as @e[tag=head,limit=1,tag=boss8] at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss8,tag=body,scores={motion=91}] as @e[tag=head,limit=1,tag=boss8] at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss8,tag=body,scores={motion=96}] as @e[tag=head,limit=1,tag=boss8] at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss8,tag=body,scores={motion=41..100}] as @e[tag=head,limit=1,tag=boss8] at @s run kill @e[tag=player,tag=bullet,distance=..8]
execute if entity @e[tag=boss8,tag=body,scores={motion=41..100}] as @e[tag=head,limit=1,tag=boss8] at @s run kill @e[type=arrow,distance=..8]
execute if entity @e[tag=boss8,tag=body,scores={motion=41..100}] as @e[tag=head,limit=1,tag=boss8] at @s as @e[tag=boss8battle,distance=..8] unless score @s player = @e[tag=boss8,tag=body,limit=1] player run effect give @s minecraft:wither 2 3 true


execute if entity @e[tag=boss8,tag=body,scores={motion=41..50}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~2 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=51..70}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-2 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=71..90}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~2 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=91..100}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-2 ~

execute if entity @e[tag=boss8,tag=body,scores={motion=41..50}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~2 ~1
execute if entity @e[tag=boss8,tag=body,scores={motion=51..70}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-2 ~-1
execute if entity @e[tag=boss8,tag=body,scores={motion=71..90}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~2 ~1
execute if entity @e[tag=boss8,tag=body,scores={motion=91..100}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-2 ~-1

execute if entity @e[tag=boss8,tag=body,scores={motion=41..50}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~2 ~1
execute if entity @e[tag=boss8,tag=body,scores={motion=51..70}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-2 ~-1
execute if entity @e[tag=boss8,tag=body,scores={motion=71..90}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~2 ~1
execute if entity @e[tag=boss8,tag=body,scores={motion=91..100}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-2 ~-1

execute if entity @e[tag=boss8,tag=body,scores={motion=10}] as @e[tag=body2,limit=1,tag=boss8] at @s run playsound minecraft:entity.puffer_fish.death master @a ~ ~ ~ 2 1.2


execute if entity @e[tag=boss8,tag=body,scores={motion=120..},limit=1] run scoreboard players set @e[tag=boss8,tag=body] motion2 0
execute as @e[tag=boss8,tag=body,scores={motion=120..},limit=1] run function namespace:main/boss/boss8/motion/random1
#execute if entity @e[tag=boss8,tag=body,scores={motion=120..},limit=1] run scoreboard players set @e[tag=boss8,tag=body] motion 0

scoreboard players add @e[tag=boss18,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=boss18,tag=body,scores={motion2=0..},limit=1] motion2 1


execute if entity @e[tag=boss18,tag=body,scores={motion=1}] run tag @e[tag=boss18,tag=body,limit=1] remove stop
execute as @e[tag=boss18,tag=body,limit=1] at @s unless block ^ ^0.7 ^6 #namespace:airs_for_mob run tag @s add stop
execute as @e[tag=boss18,tag=body,limit=1] at @s unless block ^ ^0.7 ^7 #namespace:airs_for_mob run tag @s add stop
execute as @e[tag=boss18,tag=body,limit=1] at @s unless block ^ ^0.7 ^8 #namespace:airs_for_mob run tag @s add stop
execute as @e[tag=boss18,tag=body,limit=1] at @s unless block ^ ^0.7 ^9 #namespace:airs_for_mob run tag @s add stop

execute as @e[tag=boss18,tag=body,limit=1] at @s positioned ^ ^ ^6 if entity @e[tag=boss18battle,distance=..7] run tag @s add stop


execute as @e[tag=boss18,tag=body,limit=1] at @s if block ^ ^0.5 ^2 #namespace:airs_for_mob run teleport @s ^ ^ ^0.1



execute as @e[tag=boss18,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss18] ~ ~0 ~
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss18] ^ ^0.7 ^1.0
execute as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=head1,limit=1,tag=boss18] ^ ^4.5 ^1.4
execute as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head2,limit=1,tag=boss18] ^ ^-0.4 ^1.2
execute as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head3,limit=1,tag=boss18] ^0.5 ^-0.4 ^1.2
execute as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head4,limit=1,tag=boss18] ^-0.5 ^-0.4 ^1.2
execute as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=arm11,limit=1,tag=boss18] ^2 ^3.5 ^1.4 
execute as @e[tag=boss18,tag=arm11] at @s run teleport @e[tag=arm12,limit=1,tag=boss18] ^0.2 ^-2.5 ^-0.4 
execute as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=arm21,limit=1,tag=boss18] ^-2 ^3.5 ^1.4
execute as @e[tag=boss18,tag=arm21] at @s run teleport @e[tag=arm22,limit=1,tag=boss18] ^-0.2 ^-2.5 ^-0.4
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg11,limit=1,tag=boss18] ^-2 ^0.6 ^1.4
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg21,limit=1,tag=boss18] ^2 ^0.6 ^1.4 
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg12,limit=1,tag=boss18] ^-2 ^0.6 ^-1.8
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg22,limit=1,tag=boss18] ^2 ^0.6 ^-1.8
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss18] ^ ^-0.5 ^-2.7


execute as @e[tag=boss18,tag=body,limit=1] at @s positioned ^ ^ ^15 unless entity @e[tag=boss18battle,distance=..10] run execute as @e[tag=boss18] at @s run teleport @s ~ ~ ~ ~0.8 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss18] ~ ~0 ~ ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss18] ^ ^0.7 ^1.0 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=head1,limit=1,tag=boss18] ^ ^4.5 ^1.4 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head2,limit=1,tag=boss18] ^ ^-0.4 ^1.2 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head3,limit=1,tag=boss18] ^0.5 ^-0.4 ^1.2 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head4,limit=1,tag=boss18] ^-0.5 ^-0.4 ^1.2 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=arm11,limit=1,tag=boss18] ^2 ^3.5 ^1.4 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=arm11] at @s run teleport @e[tag=arm12,limit=1,tag=boss18] ^0.2 ^-2.5 ^-0.4 ~-20 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=arm21,limit=1,tag=boss18] ^-2 ^3.5 ^1.4 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=arm21] at @s run teleport @e[tag=arm22,limit=1,tag=boss18] ^-0.2 ^-2.5 ^-0.4 ~20 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg11,limit=1,tag=boss18] ^-2 ^0.6 ^1.4 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg21,limit=1,tag=boss18] ^2 ^0.6 ^1.4 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg12,limit=1,tag=boss18] ^-2 ^0.6 ^-1.8 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg22,limit=1,tag=boss18] ^2 ^0.6 ^-1.8 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss18] ^ ^-0.5 ^-2.7 ~180 ~




#ï‡çs
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=body] at @s run playsound minecraft:entity.horse.step master @a ~ ~ ~ 1 0
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg11,limit=1,tag=boss18] ^-2 ^0.6 ^1.4 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg21,limit=1,tag=boss18] ^2 ^0.6 ^1.4 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg12,limit=1,tag=boss18] ^-2 ^0.6 ^-1.8 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg22,limit=1,tag=boss18] ^2 ^0.6 ^-1.8 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss18] ^ ^-0.5 ^-2.7 ~180 ~
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=arm11,limit=1,tag=boss18] ^2 ^3.5 ^1.4 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=arm11] at @s run teleport @e[tag=arm12,limit=1,tag=boss18] ^0.2 ^-2.5 ^-0.4 ~-20 ~
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=arm21,limit=1,tag=boss18] ^-2 ^3.5 ^1.4 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=arm21] at @s run teleport @e[tag=arm22,limit=1,tag=boss18] ^-0.2 ^-2.5 ^-0.4 ~20 ~

execute if entity @e[tag=boss18,tag=body,scores={motion2=1..9}] as @e[tag=leg11,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=1..9}] as @e[tag=leg12,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=1..9}] as @e[tag=leg21,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=1..9}] as @e[tag=leg22,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=1..9}] as @e[tag=tail,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~5 ~
execute if entity @e[tag=boss18,tag=body,scores={motion2=1..9}] as @e[tag=arm11,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=1..9}] as @e[tag=arm12,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=1..9}] as @e[tag=arm21,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=1..9}] as @e[tag=arm22,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2

execute if entity @e[tag=boss18,tag=body,scores={motion2=10..25}] as @e[tag=leg11,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..25}] as @e[tag=leg12,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..25}] as @e[tag=leg21,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..25}] as @e[tag=leg22,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..25}] as @e[tag=tail,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~-5 ~
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..25}] as @e[tag=arm11,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..25}] as @e[tag=arm12,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..25}] as @e[tag=arm21,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..25}] as @e[tag=arm22,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss18,tag=body,scores={motion2=26..34}] as @e[tag=leg11,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=26..34}] as @e[tag=leg12,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=26..34}] as @e[tag=leg21,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=26..34}] as @e[tag=leg22,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=26..34}] as @e[tag=tail,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~5 ~
execute if entity @e[tag=boss18,tag=body,scores={motion2=26..34}] as @e[tag=arm11,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=26..34}] as @e[tag=arm12,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=26..34}] as @e[tag=arm21,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=26..34}] as @e[tag=arm22,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2


scoreboard players set @e[tag=boss18,tag=body,scores={motion2=34..},limit=1] motion2 0


#execute as @e[tag=boss18,tag=body,limit=1,tag=stop] at @s unless block ^ ^0.7 ^2 #namespace:airs_for_mob run function namespace:main/boss/boss18/motion/random1
#execute as @e[tag=boss18,tag=body,limit=1,tag=stop] at @s if block ^ ^0.7 ^2 #namespace:airs_for_mob run function namespace:main/boss/boss18/motion/random2

execute as @e[tag=boss18,tag=body,scores={motion=110..,HP=250..},limit=1] at @s run function namespace:main/boss/boss18/motion/random1
execute as @e[tag=boss18,tag=body,scores={motion=110..,HP=..249},limit=1] at @s run function namespace:main/boss/boss18/motion/random2

#execute if entity @e[tag=boss18,tag=body,scores={motion=170..},limit=1] run scoreboard players set @e[tag=boss18,tag=body] motion 0




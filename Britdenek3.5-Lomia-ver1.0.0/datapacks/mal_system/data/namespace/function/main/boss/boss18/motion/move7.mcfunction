scoreboard players add @e[tag=boss18,tag=body,scores={motion=0..},limit=1] motion 1



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



execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss18] ~ ~0 ~ facing entity @e[tag=boss18battle,sort=nearest,limit=1]
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss18] ~ ~0 ~ ~ 0

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






execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=body2] at @s run teleport @s ~ ~ ~ ~ ~1.5
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=head1] at @s run teleport @s ~ ~ ~ ~ ~1.5
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=head2] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=head3] at @s run teleport @s ~ ~ ~ ~-3 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=head4] at @s run teleport @s ~ ~ ~ ~3 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=arm11] at @s run teleport @s ~ ~ ~ ~-2 ~2
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=arm21] at @s run teleport @s ~ ~ ~ ~2 ~2
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=arm12] at @s run teleport @s ~ ~ ~ ~-2 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=arm22] at @s run teleport @s ~ ~ ~ ~2 ~



execute if entity @e[tag=boss18,tag=body,scores={motion=30..70}] as @e[tag=boss18,tag=body] at @s run particle minecraft:soul ^ ^2 ^9 2 2 2 0.1 10 force
execute if entity @e[tag=boss18,tag=body,scores={motion=30..70}] as @e[tag=boss18,tag=body] at @s run particle minecraft:soul ^ ^2 ^9 0.5 0.5 0.5 0 200 force
execute if entity @e[tag=boss18,tag=body,scores={motion=1}] run tag @e[tag=boss18,tag=body,limit=1] remove stop
execute as @e[tag=boss18,tag=body,limit=1] at @s unless block ^ ^0.7 ^-6 #namespace:airs_for_mob run tag @s add stop

execute if entity @e[tag=boss18,tag=body,scores={motion=75..79}] as @e[tag=boss18,tag=body,tag=!stop] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss18,tag=body,scores={motion=75..79}] as @e[tag=boss18,tag=body2] at @s run teleport @s ~ ~ ~ ~ ~-4




execute if entity @e[tag=boss18,tag=body,scores={motion=80}] as @e[tag=boss18,tag=body] at @s positioned ^ ^2 ^13 run function namespace:main/entity_model/bomb_template {power:5}
execute if entity @e[tag=boss18,tag=body,scores={motion=80}] as @e[tag=boss18,tag=body] at @s run particle minecraft:soul ^ ^2 ^13 0.5 0.5 0.5 0.7 200 force
execute if entity @e[tag=boss18,tag=body,scores={motion=80}] as @e[tag=boss18,tag=body] at @s run particle minecraft:flash ^ ^2 ^13 2 2 2 0.7 50 force

execute if entity @e[tag=boss18,tag=body,scores={motion=21}] as @e[tag=boss18,tag=head1] at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 3 0.8

execute if entity @e[tag=boss18,tag=body,scores={motion=81..90}] as @e[tag=boss18,tag=body2] at @s run teleport @s ~ ~ ~ ~ ~-1.5
execute if entity @e[tag=boss18,tag=body,scores={motion=81..90}] as @e[tag=boss18,tag=head1] at @s run teleport @s ~ ~ ~ ~ ~-1.5
execute if entity @e[tag=boss18,tag=body,scores={motion=81..90}] as @e[tag=boss18,tag=head2] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss18,tag=body,scores={motion=81..90}] as @e[tag=boss18,tag=head3] at @s run teleport @s ~ ~ ~ ~3 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=81..90}] as @e[tag=boss18,tag=head4] at @s run teleport @s ~ ~ ~ ~-3 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=81..90}] as @e[tag=boss18,tag=arm11] at @s run teleport @s ~ ~ ~ ~2 ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion=81..90}] as @e[tag=boss18,tag=arm21] at @s run teleport @s ~ ~ ~ ~-2 ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion=81..90}] as @e[tag=boss18,tag=arm12] at @s run teleport @s ~ ~ ~ ~2 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=81..90}] as @e[tag=boss18,tag=arm22] at @s run teleport @s ~ ~ ~ ~-2 ~





execute as @e[tag=boss18,tag=body,scores={motion=110..,HP=250..},limit=1] at @s run function namespace:main/boss/boss18/motion/random1
execute as @e[tag=boss18,tag=body,scores={motion=110..,HP=..249},limit=1] at @s run function namespace:main/boss/boss18/motion/random2

execute if entity @e[tag=boss18,tag=body,scores={motion=110..},limit=1] run scoreboard players set @e[tag=boss18,tag=body] motion 0

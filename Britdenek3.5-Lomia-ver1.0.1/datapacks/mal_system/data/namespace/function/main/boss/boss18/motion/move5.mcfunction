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




execute if entity @e[tag=boss18,tag=body,scores={motion=20..24}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~2 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=25..34}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~-2 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=34..39}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~2 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=40..44}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~1 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=45..54}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~-1 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=54..59}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~1 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=60..64}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~3 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=65..74}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~-3 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=74..79}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~3 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=80..84}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~1 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=85..94}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~-1 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=94..99}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~1 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=100..104}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~2 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=105..114}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~-2 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=114..119}] as @e[tag=boss18,tag=body1] at @s run teleport @s ~ ~ ~ ~2 ~


execute if entity @e[tag=boss18,tag=body,scores={motion=20..119}] as @e[tag=boss18,tag=body] at @s run particle block{block_state:"minecraft:nether_wart"} ^ ^2 ^-1 1 1 1 1 30 force
execute if entity @e[tag=boss18,tag=body,scores={motion=20..119}] as @e[tag=boss18,tag=body] at @s run particle block{block_state:"minecraft:crimson_nylium"} ^ ^2 ^-1 1 1 1 1 30 force
execute if entity @e[tag=boss18,tag=body,scores={motion=20..119}] as @e[tag=boss18,tag=body] at @s run particle dust{color:[1,0.0,0.0],scale:3} ^ ^2 ^-1 1 1 1 1 1 force

execute if entity @e[tag=boss18,tag=body,scores={motion=20}] as @e[tag=boss18,tag=body] at @s positioned ^1 ^2 ^-1 run function namespace:main/entity_model/boss/boss18/boss18_mob
execute if entity @e[tag=boss18,tag=body,scores={motion=50}] as @e[tag=boss18,tag=body] at @s positioned ^ ^2 ^-1 run function namespace:main/entity_model/boss/boss18/boss18_mob
execute if entity @e[tag=boss18,tag=body,scores={motion=80}] as @e[tag=boss18,tag=body] at @s positioned ^ ^2 ^0 run function namespace:main/entity_model/boss/boss18/boss18_mob
execute if entity @e[tag=boss18,tag=body,scores={motion=110}] as @e[tag=boss18,tag=body] at @s positioned ^-0.5 ^1 ^-1 run function namespace:main/entity_model/boss/boss18/boss18_mob


execute if entity @e[tag=boss18,tag=body,scores={motion=20..24}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~2 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=25..34}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~-2 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=34..39}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~2 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=40..44}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~1 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=45..54}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~-1 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=54..59}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~1 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=60..64}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~3 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=65..74}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~-3 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=74..79}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~3 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=80..84}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~1 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=85..94}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~-1 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=94..99}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~1 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=100..104}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~2 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=105..114}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~-2 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=114..119}] as @e[tag=boss18,tag=tail] at @s run teleport @s ~ ~ ~ ~2 ~



execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=body2] at @s run teleport @s ~ ~ ~ ~ ~1.5
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=head1] at @s run teleport @s ~ ~ ~ ~ ~1.5
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=head2] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=head3] at @s run teleport @s ~ ~ ~ ~-3 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=head4] at @s run teleport @s ~ ~ ~ ~3 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=arm11] at @s run teleport @s ~ ~ ~ ~-2 ~2
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=arm21] at @s run teleport @s ~ ~ ~ ~2 ~2
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=arm12] at @s run teleport @s ~ ~ ~ ~-2 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=arm22] at @s run teleport @s ~ ~ ~ ~2 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=21}] as @e[tag=boss18,tag=head1] at @s run playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 3 1

execute if entity @e[tag=boss18,tag=body,scores={motion=111..120}] as @e[tag=boss18,tag=body2] at @s run teleport @s ~ ~ ~ ~ ~-1.5
execute if entity @e[tag=boss18,tag=body,scores={motion=111..120}] as @e[tag=boss18,tag=head1] at @s run teleport @s ~ ~ ~ ~ ~-1.5
execute if entity @e[tag=boss18,tag=body,scores={motion=111..120}] as @e[tag=boss18,tag=head2] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss18,tag=body,scores={motion=111..120}] as @e[tag=boss18,tag=head3] at @s run teleport @s ~ ~ ~ ~3 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=111..120}] as @e[tag=boss18,tag=head4] at @s run teleport @s ~ ~ ~ ~-3 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=111..120}] as @e[tag=boss18,tag=arm11] at @s run teleport @s ~ ~ ~ ~2 ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion=111..120}] as @e[tag=boss18,tag=arm21] at @s run teleport @s ~ ~ ~ ~-2 ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion=111..120}] as @e[tag=boss18,tag=arm12] at @s run teleport @s ~ ~ ~ ~2 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=111..120}] as @e[tag=boss18,tag=arm22] at @s run teleport @s ~ ~ ~ ~-2 ~





execute as @e[tag=boss18,tag=body,scores={motion=120..,HP=250..},limit=1] at @s run function namespace:main/boss/boss18/motion/random1
execute as @e[tag=boss18,tag=body,scores={motion=120..,HP=..249},limit=1] at @s run function namespace:main/boss/boss18/motion/random2

execute if entity @e[tag=boss18,tag=body,scores={motion=120..},limit=1] run scoreboard players set @e[tag=boss18,tag=body] motion 0

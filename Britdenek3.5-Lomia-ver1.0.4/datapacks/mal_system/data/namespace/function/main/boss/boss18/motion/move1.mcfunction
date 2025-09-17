execute as @e[tag=boss18,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss18] ~ ~0 ~ ~ ~
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss18] ^ ^0.7 ^1.0 ~ ~
execute as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=head1,limit=1,tag=boss18] ^ ^4.5 ^1.4 ~ ~
execute as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head2,limit=1,tag=boss18] ^ ^-0.4 ^1.2 ~ ~
execute as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head3,limit=1,tag=boss18] ^0.5 ^-0.4 ^1.2 ~ ~
execute as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head4,limit=1,tag=boss18] ^-0.5 ^-0.4 ^1.2 ~ ~

execute as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=arm11,limit=1,tag=boss18] ^2 ^3.5 ^1.4 ~ ~0
execute as @e[tag=boss18,tag=arm11] at @s run teleport @e[tag=arm12,limit=1,tag=boss18] ^0.2 ^-2.5 ^-0.4 ~-20 ~

execute as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=arm21,limit=1,tag=boss18] ^-2 ^3.5 ^1.4 ~ ~0
execute as @e[tag=boss18,tag=arm21] at @s run teleport @e[tag=arm22,limit=1,tag=boss18] ^-0.2 ^-2.5 ^-0.4 ~20 ~


execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg11,limit=1,tag=boss18] ^-2 ^0.6 ^1.4 ~ ~0
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg21,limit=1,tag=boss18] ^2 ^0.6 ^1.4 ~ ~

execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg12,limit=1,tag=boss18] ^-2 ^0.6 ^-1.8 ~ ~0
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg22,limit=1,tag=boss18] ^2 ^0.6 ^-1.8 ~ ~

execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss18] ^ ^-0.5 ^-2.7 ~180 ~


scoreboard players set @e[tag=body,tag=boss18] motion 0



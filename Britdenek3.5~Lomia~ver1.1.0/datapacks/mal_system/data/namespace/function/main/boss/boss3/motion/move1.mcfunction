



execute as @e[tag=boss3,tag=body] at @s run teleport @e[tag=boss3,limit=1,tag=body2] ^ ^0.8 ^ ~ ~
execute as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg1] ^-1 ^ ^0.3 ~ ~
execute as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg2] ^1 ^ ^0.3 ~ ~

execute as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=body1] ^ ^ ^1.5 ~ 0

execute as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg3] ^-1.4 ^ ^1.3 ~5 ~
execute as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg4] ^1.4 ^ ^1.3 ~-5 ~
execute as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=head1] ^ ^ ^3 ~ ~

execute as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~-10 ~-70
execute as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~10 ~-70

execute as @e[tag=boss3,tag=head1] at @s run teleport @e[tag=boss3,limit=1,tag=head2] ^ ^-0.2 ^0.7 ~ ~-10

scoreboard players set @e[tag=body,tag=boss3] motion 0


execute as @e[tag=boss3,tag=body] at @s run function namespace:main/boss/boss3/motion/random

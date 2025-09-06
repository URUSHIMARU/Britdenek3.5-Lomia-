
execute as @e[tag=boss6,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss6] @s
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=head2,limit=1,tag=boss6] ^ ^-1 ^4 ~ ~
execute as @e[tag=boss6,tag=head2] at @s run teleport @e[tag=head1,limit=1,tag=boss6] ^ ^ ^ ~ ~0

execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss6] ^2.5 ^4 ^ ~-15 ~-30
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss6] ^-2.5 ^4 ^ ~15 ~-30

execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg1,limit=1,tag=boss6] ^2.7 ^0.5 ^-1 ~ ~
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg1,limit=1,tag=boss6] ^-2.7 ^0.5 ^-1 ~ ~
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg2,limit=1,tag=boss6] ^2 ^0.5 ^3 ~ ~
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg2,limit=1,tag=boss6] ^-2 ^0.5 ^3 ~ ~
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss6] ^ ^4.5 ^ ~180 ~90



scoreboard players set @e[tag=body,tag=boss6] motion 0



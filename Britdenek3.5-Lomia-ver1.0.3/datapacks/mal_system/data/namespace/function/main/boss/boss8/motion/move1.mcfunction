execute as @e[tag=boss8,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss8] ~ ~-0.5 ~ ~ ~

execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss8] ^ ^3.2 ^ ~ ~
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss8] ^-0.7 ^2.5 ^ ~90 ~
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss8] ^0.7 ^2.5 ^ ~-90 ~

execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss8] ^ ^ ^ ~ ~


scoreboard players set @e[tag=body,tag=boss8] motion 0



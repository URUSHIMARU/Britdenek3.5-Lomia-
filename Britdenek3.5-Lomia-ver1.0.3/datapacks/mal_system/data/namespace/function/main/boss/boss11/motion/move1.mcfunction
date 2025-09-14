execute as @e[tag=boss11,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss11] ~ ~0.4 ~ ~ ~

execute as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss11] ^ ^1.7 ^0.5 ~ ~20

execute as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss11] ^1.5 ^ ^0.5 ~ ~
execute as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss11] ^-1.5 ^ ^0.5 ~ ~

execute as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss11] ^ ^1.7 ^0.4 ~ ~

execute as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss11] ^1.7 ^1.2 ^0.5 ~ ~-20
execute as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss11] ^-1.7 ^1.2 ^0.5 ~ ~-20






scoreboard players set @e[tag=body,tag=boss10] motion 0



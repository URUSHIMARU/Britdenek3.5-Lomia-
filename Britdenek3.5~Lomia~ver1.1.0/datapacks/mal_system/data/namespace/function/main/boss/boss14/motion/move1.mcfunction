execute as @e[tag=boss14,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss14] ~ ~1.1 ~ ~ ~


execute as @e[tag=boss14,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss14] ~ ~ ~ ~ ~
execute as @e[tag=boss14,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss14] ^ ^ ^3.4 ~ ~
execute as @e[tag=boss14,tag=body2] at @s run teleport @e[tag=body3,limit=1,tag=boss14] ^ ^ ^3.4 ~ ~
execute as @e[tag=boss14,tag=body3] at @s run teleport @e[tag=body4,limit=1,tag=boss14] ^ ^ ^3.4 ~ ~
execute as @e[tag=boss14,tag=body4] at @s run teleport @e[tag=head1,limit=1,tag=boss14] ^ ^0.25 ^4 ~ ~
execute as @e[tag=boss14,tag=body4] at @s run teleport @e[tag=head2,limit=1,tag=boss14] ^ ^ ^4 ~ ~30


execute as @e[tag=boss14,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss14] ^ ^ ^3.4 ~ ~
execute as @e[tag=boss14,tag=tail2] at @s run teleport @e[tag=tail3,limit=1,tag=boss14] ^ ^ ^3.4 ~ ~
execute as @e[tag=boss14,tag=tail3] at @s run teleport @e[tag=tail4,limit=1,tag=boss14] ^ ^ ^3.4 ~ ~
execute as @e[tag=boss14,tag=tail4] at @s run teleport @e[tag=tail5,limit=1,tag=boss14] ^ ^ ^2.8 ~ ~





scoreboard players set @e[tag=body,tag=boss14] motion 0



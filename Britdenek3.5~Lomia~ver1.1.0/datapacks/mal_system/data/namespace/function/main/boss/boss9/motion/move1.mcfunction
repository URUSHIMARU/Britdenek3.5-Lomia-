execute as @e[tag=boss9,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss9] ~ ~3 ~ ~ ~

execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss9] ^ ^0.7 ^ ~ ~
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss9] ^-2 ^ ^ ~10 ~
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss9] ^2 ^ ^ ~-10 ~
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss9] ^ ^-0.5 ^-1.4 ~ ~



scoreboard players set @e[tag=body,tag=boss9] motion 0



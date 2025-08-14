execute as @e[tag=boss10,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss10] ~ ~ ~ ~ ~

execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss10] ~ ~1.1 ~ ~ ~


execute as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss10] ^-1 ^1.6 ^ ~10 ~
execute as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss10] ^1 ^1.6 ^ ~-10 ~


execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss10] ^-1 ^-1.3 ^0.8 ~45 ~
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss10] ^1 ^-1.3 ^0.8 ~-45 ~
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss10] ^-1 ^-1.3 ^-0.8 ~135 ~
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss10] ^1 ^-1.3 ^-0.8 ~-135 ~



scoreboard players set @e[tag=body,tag=boss10] motion 0



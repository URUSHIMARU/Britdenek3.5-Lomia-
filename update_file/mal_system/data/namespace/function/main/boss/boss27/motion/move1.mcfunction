execute as @e[tag=boss27,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss27] ~ ~-0.5 ~ ~ ~10
execute as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss27] ^-0.7 ^0.8 ^0.2 ~10 ~-20
execute as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss27] ^0.7 ^0.8 ^0.2 ~-10 ~-20

execute as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss27] ^0.5 ^-0.7 ^-0.1 ~-10 ~
execute as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss27] ^-0.5 ^-0.7 ^-0.1 ~10 ~







scoreboard players set @e[tag=body,tag=boss27] motion 0



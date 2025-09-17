execute as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~ ~ ~
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.26 ^-0.05 ^ ~ ~90
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.26 ^-0.05 ^ ~ ~90





scoreboard players set @e[tag=body,tag=boss21] motion 0



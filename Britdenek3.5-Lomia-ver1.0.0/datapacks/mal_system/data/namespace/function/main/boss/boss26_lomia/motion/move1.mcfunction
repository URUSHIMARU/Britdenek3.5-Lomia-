execute as @e[tag=boss26_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss26_lomia] ~ ~-0.9 ~ ~ ~
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss26_lomia] ^-0.25 ^0.6 ^0.05 ~-25 ~20
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss26_lomia] ^0.25 ^0.6 ^-0.03 ~0 ~-20

execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss26_lomia] ^0.11 ^-0.05 ^0.1 ~ ~
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss26_lomia] ^-0.11 ^0.05 ^-0.1 ~ ~








scoreboard players set @e[tag=body,tag=boss26_lomia] motion 0



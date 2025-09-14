execute as @e[tag=boss24_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss24_lomia] ~ ~0 ~ ~ ~
execute as @e[tag=boss24_lomia,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss24_lomia] ^-0.35 ^-0.05 ^-0.03 ~ ~90
execute as @e[tag=boss24_lomia,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss24_lomia] ^0.35 ^-0.05 ^-0.03 ~ ~90

execute as @e[tag=boss24_lomia,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss24_lomia] ^0.11 ^-0.8 ^ ~ ~
execute as @e[tag=boss24_lomia,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss24_lomia] ^-0.11 ^-0.8 ^ ~ ~








scoreboard players set @e[tag=body,tag=boss24_lomia] motion 0



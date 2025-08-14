execute as @e[tag=boss16_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss16_lomia] ~ ~0 ~ ~ ~
execute as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss16_lomia] ^-0.35 ^-0.05 ^ ~ ~
execute as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss16_lomia] ^0.35 ^-0.05 ^ ~ ~

execute as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss16_lomia] ^0.11 ^-0.8 ^ ~ ~
execute as @e[tag=boss16_lomia,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss16_lomia] ^-0.11 ^-0.8 ^ ~ ~

execute as @e[tag=boss16_lomia,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss16_lomia] ^0.1 ^-0.65 ^ ~ ~







scoreboard players set @e[tag=body,tag=boss16_lomia] motion 0


